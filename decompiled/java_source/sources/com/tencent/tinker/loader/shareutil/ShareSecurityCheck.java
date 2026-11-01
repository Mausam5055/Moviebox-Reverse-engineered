package com.tencent.tinker.loader.shareutil;

import android.annotation.SuppressLint;
import android.content.Context;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.transsion.gslb.Utils;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes5.dex */
public class ShareSecurityCheck {
    private static String mPublicKeyMd5;
    private final Context mContext;
    private final HashMap<String, String> metaContentMap = new HashMap<>();
    private final HashMap<String, String> packageProperties = new HashMap<>();

    public ShareSecurityCheck(Context context) {
        this.mContext = context;
        if (mPublicKeyMd5 == null) {
            init(context);
        }
    }

    private boolean check(File file, Certificate[] certificateArr) {
        if (certificateArr.length > 0) {
            for (int length = certificateArr.length - 1; length >= 0; length--) {
                try {
                    if (mPublicKeyMd5.equals(SharePatchFileUtil.getMD5(certificateArr[length].getEncoded()))) {
                        return true;
                    }
                } catch (Exception e11) {
                    ShareTinkerLog.e("Tinker.SecurityCheck", file.getAbsolutePath(), e11);
                }
            }
        }
        return false;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private void init(Context context) {
        try {
            try {
                String md5 = SharePatchFileUtil.getMD5(context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray());
                mPublicKeyMd5 = md5;
                if (md5 == null) {
                    throw new TinkerRuntimeException("get public key md5 is null");
                }
                SharePatchFileUtil.closeQuietly(null);
                return;
            } catch (Exception e11) {
                throw new TinkerRuntimeException("ShareSecurityCheck init public key fail", e11);
            }
        } catch (Throwable th2) {
            SharePatchFileUtil.closeQuietly(null);
            throw th2;
        }
        SharePatchFileUtil.closeQuietly(null);
        throw th2;
    }

    public HashMap<String, String> getMetaContentMap() {
        return this.metaContentMap;
    }

    public HashMap<String, String> getPackagePropertiesIfPresent() {
        String[] strArrSplit;
        if (!this.packageProperties.isEmpty()) {
            return this.packageProperties;
        }
        String str = this.metaContentMap.get("assets/package_meta.txt");
        if (str == null) {
            return null;
        }
        for (String str2 : str.split("\n")) {
            if (str2 != null && str2.length() > 0 && !str2.startsWith(Utils.SEPARATOR) && (strArrSplit = str2.split(UrlUtils.EQUAL_MARK, 2)) != null && strArrSplit.length >= 2) {
                this.packageProperties.put(strArrSplit[0].trim(), strArrSplit[1].trim());
            }
        }
        return this.packageProperties;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public boolean verifyPatchMetaSignature(File file) throws Throwable {
        Throwable th2;
        Exception e11;
        if (!SharePatchFileUtil.isLegalFile(file)) {
            return false;
        }
        ZipFile zipFile = null;
        try {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    Enumeration<JarEntry> enumerationEntries = jarFile.entries();
                    while (enumerationEntries.hasMoreElements()) {
                        JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                        if (jarEntryNextElement != null) {
                            String name = jarEntryNextElement.getName();
                            if (!name.startsWith("META-INF/") && name.endsWith("meta.txt")) {
                                this.metaContentMap.put(name, SharePatchFileUtil.loadDigestes(jarFile, jarEntryNextElement));
                                Certificate[] certificates = jarEntryNextElement.getCertificates();
                                if (certificates == null || !check(file, certificates)) {
                                    try {
                                        jarFile.close();
                                    } catch (IOException e12) {
                                        ShareTinkerLog.e("Tinker.SecurityCheck", file.getAbsolutePath(), e12);
                                    }
                                    return false;
                                }
                            }
                        }
                    }
                    try {
                        jarFile.close();
                    } catch (IOException e13) {
                        ShareTinkerLog.e("Tinker.SecurityCheck", file.getAbsolutePath(), e13);
                    }
                    return true;
                } catch (Exception e14) {
                    e11 = e14;
                    throw new TinkerRuntimeException(String.format("ShareSecurityCheck file %s, size %d verifyPatchMetaSignature fail", file.getAbsolutePath(), Long.valueOf(file.length())), e11);
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (0 != 0) {
                    try {
                        zipFile.close();
                    } catch (IOException e15) {
                        ShareTinkerLog.e("Tinker.SecurityCheck", file.getAbsolutePath(), e15);
                    }
                }
                throw th2;
            }
        } catch (Exception e16) {
            e11 = e16;
        } catch (Throwable th4) {
            th2 = th4;
            if (0 != 0) {
                zipFile.close();
            }
            throw th2;
        }
    }
}
