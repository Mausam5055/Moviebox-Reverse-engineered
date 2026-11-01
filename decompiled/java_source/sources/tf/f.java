package tf;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemClock;
import com.tencent.tinker.lib.service.PatchResult;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes5.dex */
public class f extends c {
    private static boolean c(Context context, String str, String str2, File file, int i11, boolean z10) {
        ZipFile zipFile;
        ZipFile zipFile2;
        String str3;
        InputStream inputStream;
        InputStream inputStream2;
        boolean z11;
        String str4 = str;
        int i12 = 3;
        ArrayList arrayList = new ArrayList();
        ShareBsDiffPatchInfo.parseDiffPatchInfo(str2, arrayList);
        if (arrayList.isEmpty()) {
            ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "extract patch list is empty! type:%s:", ShareTinkerInternals.getTypeString(i11));
            return true;
        }
        File file2 = new File(str4);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        vf.a aVarX = vf.a.x(context);
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "applicationInfo == null!!!!", new Object[0]);
            return false;
        }
        try {
            ZipFile zipFile3 = new ZipFile(applicationInfo.sourceDir);
            try {
                zipFile = new ZipFile(file);
                try {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ShareBsDiffPatchInfo shareBsDiffPatchInfo = (ShareBsDiffPatchInfo) it.next();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (shareBsDiffPatchInfo.path.equals("")) {
                            str3 = shareBsDiffPatchInfo.name;
                        } else {
                            str3 = shareBsDiffPatchInfo.path + "/" + shareBsDiffPatchInfo.name;
                        }
                        String str5 = shareBsDiffPatchInfo.md5;
                        if (SharePatchFileUtil.checkIfMd5Valid(str5)) {
                            StringBuilder sb2 = new StringBuilder();
                            it = it;
                            sb2.append(shareBsDiffPatchInfo.path);
                            sb2.append("/");
                            sb2.append(shareBsDiffPatchInfo.name);
                            File file3 = new File(str4 + sb2.toString());
                            if (!file3.exists()) {
                                file3.getParentFile().mkdirs();
                            } else if (str5.equals(SharePatchFileUtil.getMD5(file3))) {
                                ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "bsdiff file %s is already exist, and md5 match, just continue", file3.getPath());
                                i12 = 3;
                            } else {
                                ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "have a mismatch corrupted dex " + file3.getPath(), new Object[0]);
                                file3.delete();
                            }
                            String str6 = shareBsDiffPatchInfo.patchMd5;
                            ZipEntry entry = zipFile.getEntry(str3);
                            if (entry == null) {
                                ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "patch entry is null. path:" + str3, new Object[0]);
                                aVarX.k().a(file, file3, shareBsDiffPatchInfo.name, i11);
                            } else if (str6.equals("0")) {
                                if (c.a(zipFile, entry, file3, str5, false)) {
                                    z11 = false;
                                    str4 = str;
                                    i12 = 3;
                                } else {
                                    ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "Failed to extract file " + file3.getPath(), new Object[0]);
                                    aVarX.k().a(file, file3, shareBsDiffPatchInfo.name, i11);
                                }
                            } else if (SharePatchFileUtil.checkIfMd5Valid(str6)) {
                                ZipEntry entry2 = zipFile3.getEntry(str3);
                                if (entry2 == null) {
                                    ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "apk entry is null. path:" + str3, new Object[0]);
                                    aVarX.k().a(file, file3, shareBsDiffPatchInfo.name, i11);
                                } else {
                                    String str7 = shareBsDiffPatchInfo.rawCrc;
                                    String strValueOf = String.valueOf(entry2.getCrc());
                                    if (strValueOf.equals(str7)) {
                                        try {
                                            InputStream inputStream3 = zipFile3.getInputStream(entry2);
                                            try {
                                                inputStream = zipFile.getInputStream(entry);
                                                try {
                                                    rf.c.a(context, z10).a(inputStream3, inputStream, file3);
                                                    pf.b.a(inputStream3);
                                                    pf.b.a(inputStream);
                                                    if (SharePatchFileUtil.verifyFileMd5(file3, str5)) {
                                                        z11 = false;
                                                        ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "success recover bsdiff file: %s, use time: %d", file3.getPath(), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                                                        str4 = str;
                                                        i12 = 3;
                                                    } else {
                                                        ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "Failed to recover diff file " + file3.getPath(), new Object[0]);
                                                        aVarX.k().a(file, file3, shareBsDiffPatchInfo.name, i11);
                                                        SharePatchFileUtil.safeDeleteFile(file3);
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    inputStream2 = inputStream3;
                                                    pf.b.a(inputStream2);
                                                    pf.b.a(inputStream);
                                                    throw th;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                inputStream2 = inputStream3;
                                                inputStream = null;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            inputStream = null;
                                            inputStream2 = null;
                                        }
                                    } else {
                                        ShareTinkerLog.e("Tinker.BsDiffPatchInternal", "apk entry %s crc is not equal, expect crc: %s, got crc: %s", str3, str7, strValueOf);
                                        aVarX.k().a(file, file3, shareBsDiffPatchInfo.name, i11);
                                    }
                                }
                            } else {
                                ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "meta file md5 mismatch, type:%s, name: %s, md5: %s", ShareTinkerInternals.getTypeString(i11), shareBsDiffPatchInfo.name, str6);
                                aVarX.k().b(file, c.b(i11));
                            }
                        } else {
                            String typeString = ShareTinkerInternals.getTypeString(i11);
                            String str8 = shareBsDiffPatchInfo.name;
                            String str9 = shareBsDiffPatchInfo.md5;
                            Object[] objArr = new Object[i12];
                            objArr[0] = typeString;
                            objArr[1] = str8;
                            objArr[2] = str9;
                            ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "meta file md5 mismatch, type:%s, name: %s, md5: %s", objArr);
                            aVarX.k().b(file, c.b(i11));
                        }
                        SharePatchFileUtil.closeZip(zipFile3);
                        SharePatchFileUtil.closeZip(zipFile);
                        return false;
                    }
                    SharePatchFileUtil.closeZip(zipFile3);
                    SharePatchFileUtil.closeZip(zipFile);
                    return true;
                } catch (Throwable th5) {
                    th = th5;
                    zipFile2 = zipFile3;
                    try {
                        throw new TinkerRuntimeException("patch " + ShareTinkerInternals.getTypeString(i11) + " extract failed (" + th.getMessage() + ").", th);
                    } catch (Throwable th6) {
                        SharePatchFileUtil.closeZip(zipFile2);
                        SharePatchFileUtil.closeZip(zipFile);
                        throw th6;
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                zipFile2 = zipFile3;
                zipFile = null;
            }
        } catch (Throwable th8) {
            th = th8;
            zipFile = null;
            zipFile2 = null;
        }
    }

    private static boolean d(Context context, String str, String str2, File file, boolean z10) {
        return c(context, str + "/lib/", str2, file, 5, z10);
    }

    protected static boolean e(vf.a aVar, ShareSecurityCheck shareSecurityCheck, Context context, String str, File file, boolean z10, PatchResult patchResult) {
        if (!aVar.p()) {
            ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "patch recover, library is not enabled", new Object[0]);
            return true;
        }
        String str2 = shareSecurityCheck.getMetaContentMap().get("assets/so_meta.txt");
        if (str2 == null) {
            ShareTinkerLog.w("Tinker.BsDiffPatchInternal", "patch recover, library is not contained", new Object[0]);
            return true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zD = d(context, str, str2, file, z10);
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        patchResult.soCostTime = jElapsedRealtime2;
        ShareTinkerLog.i("Tinker.BsDiffPatchInternal", "recover lib result:%b, cost:%d", Boolean.valueOf(zD), Long.valueOf(jElapsedRealtime2));
        return zD;
    }
}
