package com.tencent.tinker.loader.shareutil;

import android.os.Build;
import android.util.Log;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.tencent.tinker.loader.TinkerRuntimeException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

/* JADX INFO: loaded from: classes5.dex */
public class SharePatchInfo {
    public String fingerPrint;
    public boolean isProtectedApp;
    public boolean isRemoveInterpretOATDir;
    public String newVersion;
    public String oatDir;
    public String oldVersion;
    public boolean useCustomPatch;
    public String versionToRemove;

    public SharePatchInfo(String str, String str2, boolean z10, boolean z11, String str3, String str4, String str5, boolean z12) {
        this.oldVersion = str;
        this.newVersion = str2;
        this.isProtectedApp = z10;
        this.versionToRemove = str3;
        this.fingerPrint = str4;
        this.oatDir = str5;
        this.isRemoveInterpretOATDir = z12;
    }

    private static SharePatchInfo readAndCheckProperty(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        int i11 = 0;
        boolean z10 = false;
        String property = null;
        String property2 = null;
        boolean z11 = false;
        boolean z12 = false;
        String property3 = null;
        String property4 = null;
        String property5 = null;
        boolean z13 = false;
        while (i11 < 2 && !z10) {
            i11++;
            Properties properties = new Properties();
            try {
                try {
                    try {
                        fileInputStream2 = new FileInputStream(file);
                        try {
                            try {
                                properties.load(fileInputStream2);
                                property = properties.getProperty("old");
                                property2 = properties.getProperty("new");
                                String property6 = properties.getProperty("is_protected_app");
                                z11 = (property6 == null || property6.isEmpty() || "0".equals(property6)) ? false : true;
                                String property7 = properties.getProperty("use_custom_file_patch");
                                z12 = (property7 == null || property7.isEmpty() || "0".equals(property7)) ? false : true;
                                property3 = properties.getProperty("version_to_remove");
                                property4 = properties.getProperty("print");
                                property5 = properties.getProperty(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR);
                                String property8 = properties.getProperty("is_remove_interpret_oat_dir");
                                z13 = (property8 == null || property8.isEmpty() || "0".equals(property8)) ? false : true;
                            } catch (IOException e11) {
                                e = e11;
                                ShareTinkerLog.w("Tinker.PatchInfo", "read property failed, e:" + e, new Object[0]);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = fileInputStream2;
                            SharePatchFileUtil.closeQuietly(fileInputStream);
                            throw th;
                        }
                    } catch (IOException e12) {
                        e = e12;
                        fileInputStream2 = null;
                        ShareTinkerLog.w("Tinker.PatchInfo", "read property failed, e:" + e, new Object[0]);
                        SharePatchFileUtil.closeQuietly(fileInputStream2);
                        if (property == null) {
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = null;
                }
            } catch (IOException e13) {
                e = e13;
            }
            SharePatchFileUtil.closeQuietly(fileInputStream2);
            if (property == null && property2 != null) {
                if ((property.equals("") || SharePatchFileUtil.checkIfMd5Valid(property)) && SharePatchFileUtil.checkIfMd5Valid(property2)) {
                    z10 = true;
                } else {
                    ShareTinkerLog.w("Tinker.PatchInfo", "path info file  corrupted:" + file.getAbsolutePath(), new Object[0]);
                }
            }
        }
        if (z10) {
            return new SharePatchInfo(property, property2, z11, z12, property3, property4, property5, z13);
        }
        return null;
    }

    public static SharePatchInfo readAndCheckPropertyWithLock(File file, File file2) {
        ShareFileLockHelper fileLock = null;
        if (file == null || file2 == null) {
            return null;
        }
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            try {
                fileLock = ShareFileLockHelper.getFileLock(file2);
                SharePatchInfo andCheckProperty = readAndCheckProperty(file);
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (IOException e11) {
                        ShareTinkerLog.w("Tinker.PatchInfo", "releaseInfoLock error", e11);
                    }
                }
                return andCheckProperty;
            } catch (Throwable th2) {
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (IOException e12) {
                        ShareTinkerLog.w("Tinker.PatchInfo", "releaseInfoLock error", e12);
                    }
                }
                throw th2;
            }
        } catch (Exception e13) {
            throw new TinkerRuntimeException("readAndCheckPropertyWithLock fail", e13);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean rewritePatchInfoFile(File file, SharePatchInfo sharePatchInfo) throws Throwable {
        if (file == null || sharePatchInfo == null) {
            return false;
        }
        if (ShareTinkerInternals.isNullOrNil(sharePatchInfo.fingerPrint)) {
            sharePatchInfo.fingerPrint = Build.FINGERPRINT;
        }
        if (ShareTinkerInternals.isNullOrNil(sharePatchInfo.oatDir)) {
            sharePatchInfo.oatDir = "odex";
        }
        ShareTinkerLog.i("Tinker.PatchInfo", "rewritePatchInfoFile file path:" + file.getAbsolutePath() + " , oldVer:" + sharePatchInfo.oldVersion + ", newVer:" + sharePatchInfo.newVersion + ", isProtectedApp:" + (sharePatchInfo.isProtectedApp ? 1 : 0) + ", versionToRemove:" + sharePatchInfo.versionToRemove + ", fingerprint:" + sharePatchInfo.fingerPrint + ", oatDir:" + sharePatchInfo.oatDir + ", isRemoveInterpretOATDir:" + (sharePatchInfo.isRemoveInterpretOATDir ? 1 : 0) + ", stack: " + Log.getStackTraceString(new Throwable()), new Object[0]);
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        int i11 = 0;
        boolean z10 = false;
        while (i11 < 2 && !z10) {
            i11++;
            Properties properties = new Properties();
            properties.put("old", sharePatchInfo.oldVersion);
            properties.put("new", sharePatchInfo.newVersion);
            properties.put("is_protected_app", sharePatchInfo.isProtectedApp ? "1" : "0");
            properties.put("use_custom_file_patch", sharePatchInfo.useCustomPatch ? "1" : "0");
            properties.put("version_to_remove", sharePatchInfo.versionToRemove);
            properties.put("print", sharePatchInfo.fingerPrint);
            properties.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, sharePatchInfo.oatDir);
            properties.put("is_remove_interpret_oat_dir", sharePatchInfo.isRemoveInterpretOATDir ? "1" : "0");
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                    try {
                        properties.store(fileOutputStream2, "from old version:" + sharePatchInfo.oldVersion + " to new version:" + sharePatchInfo.newVersion);
                        SharePatchFileUtil.closeQuietly(fileOutputStream2);
                    } catch (Exception e11) {
                        e = e11;
                        fileOutputStream = fileOutputStream2;
                        ShareTinkerLog.w("Tinker.PatchInfo", "write property failed, e:" + e, new Object[0]);
                        SharePatchFileUtil.closeQuietly(fileOutputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        SharePatchFileUtil.closeQuietly(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e12) {
                e = e12;
            }
            SharePatchInfo andCheckProperty = readAndCheckProperty(file);
            z10 = andCheckProperty != null && andCheckProperty.oldVersion.equals(sharePatchInfo.oldVersion) && andCheckProperty.newVersion.equals(sharePatchInfo.newVersion);
            if (!z10) {
                file.delete();
            }
        }
        return z10;
    }

    public static boolean rewritePatchInfoFileWithLock(File file, SharePatchInfo sharePatchInfo, File file2) {
        if (file == null || sharePatchInfo == null || file2 == null) {
            return false;
        }
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        ShareFileLockHelper fileLock = null;
        try {
            try {
                fileLock = ShareFileLockHelper.getFileLock(file2);
                boolean zRewritePatchInfoFile = rewritePatchInfoFile(file, sharePatchInfo);
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (IOException e11) {
                        ShareTinkerLog.i("Tinker.PatchInfo", "releaseInfoLock error", e11);
                    }
                }
                return zRewritePatchInfoFile;
            } catch (Throwable th2) {
                if (fileLock != null) {
                    try {
                        fileLock.close();
                    } catch (IOException e12) {
                        ShareTinkerLog.i("Tinker.PatchInfo", "releaseInfoLock error", e12);
                    }
                }
                throw th2;
            }
        } catch (Exception e13) {
            throw new TinkerRuntimeException("rewritePatchInfoFileWithLock fail", e13);
        }
    }
}
