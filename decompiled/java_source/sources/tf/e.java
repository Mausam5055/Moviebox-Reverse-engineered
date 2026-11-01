package tf;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemClock;
import com.tencent.tinker.lib.service.PatchResult;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareResPatchInfo;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import xf.h;
import xf.i;
import xf.j;
import xf.k;

/* JADX INFO: loaded from: classes5.dex */
public class e extends c {
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v16 */
    private static boolean c(Context context, String str, File file, File file2, File file3, ShareResPatchInfo shareResPatchInfo, int i11, boolean z10) {
        ZipFile zipFile;
        ZipFile zipFile2;
        InputStream inputStream;
        InputStream inputStream2;
        File file4 = file2;
        ShareResPatchInfo shareResPatchInfo2 = shareResPatchInfo;
        ?? r11 = 0;
        long jCurrentTimeMillis = System.currentTimeMillis();
        vf.a aVarX = vf.a.x(context);
        try {
            ZipFile zipFile3 = new ZipFile(str);
            try {
                ZipEntry entry = zipFile3.getEntry("resources.arsc");
                File file5 = new File(file, "resources.arsc");
                if (entry == null) {
                    try {
                        ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "resources apk entry is null. path:resources.arsc", new Object[0]);
                        aVarX.k().a(file3, file5, "resources.arsc", i11);
                        SharePatchFileUtil.closeZip(zipFile3);
                        SharePatchFileUtil.closeZip(null);
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        zipFile = null;
                    }
                } else {
                    String strValueOf = String.valueOf(entry.getCrc());
                    if (!strValueOf.equals(shareResPatchInfo2.arscBaseCrc)) {
                        ShareTinkerLog.e("Tinker.ResDiffPatchInternal", "resources.arsc's crc is not equal, expect crc: %s, got crc: %s", shareResPatchInfo2.arscBaseCrc, strValueOf);
                        aVarX.k().a(file3, file5, "resources.arsc", i11);
                        SharePatchFileUtil.closeZip(zipFile3);
                        SharePatchFileUtil.closeZip(null);
                        return false;
                    }
                    if (shareResPatchInfo2.largeModRes.isEmpty() && shareResPatchInfo2.storeRes.isEmpty()) {
                        ShareTinkerLog.i("Tinker.ResDiffPatchInternal", "no large modify or store resources, just return", new Object[0]);
                        SharePatchFileUtil.closeZip(zipFile3);
                        SharePatchFileUtil.closeZip(null);
                        return true;
                    }
                    zipFile = new ZipFile(file3);
                    try {
                        for (Iterator<String> it = shareResPatchInfo2.storeRes.keySet().iterator(); it.hasNext(); it = it) {
                            String next = it.next();
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            File file6 = new File(file4, next);
                            SharePatchFileUtil.ensureFileDirectory(file6);
                            ZipEntry entry2 = zipFile.getEntry(next);
                            if (entry2 == null) {
                                ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "store patch entry is null. path:" + next, new Object[0]);
                                aVarX.k().a(file3, file6, next, i11);
                                SharePatchFileUtil.closeZip(zipFile3);
                                SharePatchFileUtil.closeZip(zipFile);
                                return false;
                            }
                            c.a(zipFile, entry2, file6, null, false);
                            if (entry2.getSize() != file6.length()) {
                                ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "resource meta file size mismatch, type:%s, name: %s, patch size: %d, file size; %d", ShareTinkerInternals.getTypeString(i11), next, Long.valueOf(entry2.getSize()), Long.valueOf(file6.length()));
                                aVarX.k().b(file3, c.b(i11));
                                SharePatchFileUtil.closeZip(zipFile3);
                                SharePatchFileUtil.closeZip(zipFile);
                                return false;
                            }
                            shareResPatchInfo2.storeRes.put(next, file6);
                            ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "success recover store file:%s, file size:%d, use time:%d", file6.getPath(), Long.valueOf(file6.length()), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis2));
                        }
                        Iterator<String> it2 = shareResPatchInfo2.largeModRes.iterator();
                        while (it2.hasNext()) {
                            String next2 = it2.next();
                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                            ShareResPatchInfo.LargeModeInfo largeModeInfo = shareResPatchInfo2.largeModMap.get(next2);
                            if (largeModeInfo == null) {
                                Object[] objArr = new Object[2];
                                objArr[r11] = ShareTinkerInternals.getTypeString(i11);
                                objArr[1] = next2;
                                ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "resource not found largeModeInfo, type:%s, name: %s", objArr);
                                aVarX.k().b(file3, c.b(i11));
                                SharePatchFileUtil.closeZip(zipFile3);
                                SharePatchFileUtil.closeZip(zipFile);
                                return r11;
                            }
                            File file7 = new File(file4, next2);
                            largeModeInfo.file = file7;
                            SharePatchFileUtil.ensureFileDirectory(file7);
                            if (SharePatchFileUtil.checkIfMd5Valid(largeModeInfo.md5)) {
                                ZipEntry entry3 = zipFile.getEntry(next2);
                                if (entry3 == null) {
                                    ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "large mod patch entry is null. path:" + next2, new Object[0]);
                                    aVarX.k().a(file3, largeModeInfo.file, next2, i11);
                                } else {
                                    ZipEntry entry4 = zipFile3.getEntry(next2);
                                    if (entry4 == null) {
                                        ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "resources apk entry is null. path:" + next2, new Object[0]);
                                        aVarX.k().a(file3, largeModeInfo.file, next2, i11);
                                    } else {
                                        try {
                                            InputStream inputStream3 = zipFile3.getInputStream(entry4);
                                            try {
                                                inputStream = zipFile.getInputStream(entry3);
                                                Iterator<String> it3 = it2;
                                                long j11 = jCurrentTimeMillis;
                                                try {
                                                    rf.c.a(context, z10).a(inputStream3, inputStream, largeModeInfo.file);
                                                    pf.b.a(inputStream3);
                                                    pf.b.a(inputStream);
                                                    if (SharePatchFileUtil.verifyFileMd5(largeModeInfo.file, largeModeInfo.md5)) {
                                                        ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "success recover large modify file:%s, file size:%d, use time:%d", largeModeInfo.file.getPath(), Long.valueOf(largeModeInfo.file.length()), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis3));
                                                        it2 = it3;
                                                        file4 = file2;
                                                        shareResPatchInfo2 = shareResPatchInfo;
                                                        jCurrentTimeMillis = j11;
                                                        r11 = 0;
                                                    } else {
                                                        ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "Failed to recover large modify file:%s", largeModeInfo.file.getPath());
                                                        SharePatchFileUtil.safeDeleteFile(largeModeInfo.file);
                                                        aVarX.k().a(file3, largeModeInfo.file, next2, i11);
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    inputStream2 = inputStream3;
                                                    pf.b.a(inputStream2);
                                                    pf.b.a(inputStream);
                                                    throw th;
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                inputStream2 = inputStream3;
                                                inputStream = null;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            inputStream = null;
                                            inputStream2 = null;
                                        }
                                    }
                                }
                            } else {
                                ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "resource meta file md5 mismatch, type:%s, name: %s, md5: %s", ShareTinkerInternals.getTypeString(i11), next2, largeModeInfo.md5);
                                aVarX.k().b(file3, c.b(i11));
                            }
                            SharePatchFileUtil.closeZip(zipFile3);
                            SharePatchFileUtil.closeZip(zipFile);
                            return false;
                        }
                        ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "success recover all large modify and store resources use time:%d", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                        SharePatchFileUtil.closeZip(zipFile3);
                        SharePatchFileUtil.closeZip(zipFile);
                        return true;
                    } catch (Throwable th6) {
                        th = th6;
                    }
                }
                zipFile2 = zipFile3;
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
        try {
            throw new TinkerRuntimeException("patch " + ShareTinkerInternals.getTypeString(i11) + " extract failed (" + th.getMessage() + ").", th);
        } catch (Throwable th9) {
            SharePatchFileUtil.closeZip(zipFile2);
            SharePatchFileUtil.closeZip(zipFile);
            throw th9;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v5 */
    private static boolean d(Context context, String str, String str2, File file, int i11, boolean z10) {
        i iVar;
        i iVar2;
        ShareResPatchInfo shareResPatchInfo = new ShareResPatchInfo();
        ShareResPatchInfo.parseAllResPatchInfo(str2, shareResPatchInfo);
        int i12 = 0;
        ShareTinkerLog.i("Tinker.ResDiffPatchInternal", "res dir: %s, meta: %s", str, shareResPatchInfo.toString());
        vf.a aVarX = vf.a.x(context);
        if (!SharePatchFileUtil.checkIfMd5Valid(shareResPatchInfo.resArscMd5)) {
            ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "resource meta file md5 mismatch, type:%s, md5: %s", ShareTinkerInternals.getTypeString(i11), shareResPatchInfo.resArscMd5);
            aVarX.k().b(file, c.b(i11));
            return false;
        }
        File file2 = new File(str);
        File file3 = new File(file2, "res_temp");
        File file4 = new File(file2, "resources.apk");
        if (!file4.exists()) {
            file4.getParentFile().mkdirs();
        } else {
            if (SharePatchFileUtil.checkResourceArscMd5(file4, shareResPatchInfo.resArscMd5)) {
                ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "resource file %s is already exist, and md5 match, just return true", file4.getPath());
                return true;
            }
            ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "have a mismatch corrupted resource " + file4.getPath(), new Object[0]);
            file4.delete();
        }
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "applicationInfo == null!!!!", new Object[0]);
                return false;
            }
            String str3 = applicationInfo.sourceDir;
            if (!c(context, str3, file2, file3, file, shareResPatchInfo, i11, z10)) {
                return false;
            }
            j jVar = null;
            try {
                if (file4.exists()) {
                    file4.delete();
                }
                j jVar2 = new j(new BufferedOutputStream(new FileOutputStream(file4)));
                try {
                    if (ShareTinkerInternals.isNewerOrEqualThanVersion(33, true)) {
                        file4.setReadOnly();
                    }
                    iVar = new i(str3);
                    try {
                        iVar2 = new i(file);
                        try {
                            Enumeration enumerationH = iVar.h();
                            int i13 = 0;
                            while (enumerationH.hasMoreElements()) {
                                h hVar = (h) enumerationH.nextElement();
                                if (hVar == null) {
                                    throw new TinkerRuntimeException("zipEntry is null when get from oldApk");
                                }
                                String strG = hVar.g();
                                if (!strG.contains("../") && ShareResPatchInfo.checkFileInPattern(shareResPatchInfo.patterns, strG) && !shareResPatchInfo.deleteRes.contains(strG) && !shareResPatchInfo.modRes.contains(strG) && !shareResPatchInfo.largeModRes.contains(strG) && !strG.equals("AndroidManifest.xml")) {
                                    k.b(iVar, hVar, jVar2);
                                    i13++;
                                }
                            }
                            h hVarL = iVar.l("AndroidManifest.xml");
                            if (hVarL == null) {
                                ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "manifest patch entry is null. path:AndroidManifest.xml", new Object[0]);
                                aVarX.k().a(file, file4, "AndroidManifest.xml", i11);
                                pf.b.a(jVar2);
                                pf.b.a(iVar);
                                pf.b.a(iVar2);
                                SharePatchFileUtil.deleteDir(file3);
                                return false;
                            }
                            k.b(iVar, hVarL, jVar2);
                            int i14 = i13 + 1;
                            for (String str4 : shareResPatchInfo.largeModRes) {
                                h hVarL2 = iVar.l(str4);
                                if (hVarL2 == null) {
                                    ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "large patch entry is null. path:" + str4, new Object[i12]);
                                    aVarX.k().a(file, file4, str4, i11);
                                    pf.b.a(jVar2);
                                    pf.b.a(iVar);
                                    pf.b.a(iVar2);
                                    SharePatchFileUtil.deleteDir(file3);
                                    return i12;
                                }
                                ShareResPatchInfo.LargeModeInfo largeModeInfo = shareResPatchInfo.largeModMap.get(str4);
                                k.a(hVarL2, largeModeInfo.file, largeModeInfo.crc, jVar2);
                                i14++;
                                i12 = 0;
                            }
                            for (String str5 : shareResPatchInfo.addRes) {
                                h hVarL3 = iVar2.l(str5);
                                if (hVarL3 == null) {
                                    ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "add patch entry is null. path:" + str5, new Object[0]);
                                    aVarX.k().a(file, file4, str5, i11);
                                    pf.b.a(jVar2);
                                    pf.b.a(iVar);
                                    pf.b.a(iVar2);
                                    SharePatchFileUtil.deleteDir(file3);
                                    return false;
                                }
                                if (shareResPatchInfo.storeRes.containsKey(str5)) {
                                    k.a(hVarL3, shareResPatchInfo.storeRes.get(str5), hVarL3.c(), jVar2);
                                } else {
                                    k.b(iVar2, hVarL3, jVar2);
                                }
                                i14++;
                            }
                            for (String str6 : shareResPatchInfo.modRes) {
                                h hVarL4 = iVar2.l(str6);
                                if (hVarL4 == null) {
                                    ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "mod patch entry is null. path:" + str6, new Object[0]);
                                    aVarX.k().a(file, file4, str6, i11);
                                    pf.b.a(jVar2);
                                    pf.b.a(iVar);
                                    pf.b.a(iVar2);
                                    SharePatchFileUtil.deleteDir(file3);
                                    return false;
                                }
                                if (shareResPatchInfo.storeRes.containsKey(str6)) {
                                    k.a(hVarL4, shareResPatchInfo.storeRes.get(str6), hVarL4.c(), jVar2);
                                } else {
                                    k.b(iVar2, hVarL4, jVar2);
                                }
                                i14++;
                            }
                            jVar2.p(iVar.k());
                            pf.b.a(jVar2);
                            pf.b.a(iVar);
                            pf.b.a(iVar2);
                            SharePatchFileUtil.deleteDir(file3);
                            if (SharePatchFileUtil.checkResourceArscMd5(file4, shareResPatchInfo.resArscMd5)) {
                                ShareTinkerLog.i("Tinker.ResDiffPatchInternal", "final new resource file:%s, entry count:%d, size:%d", file4.getAbsolutePath(), Integer.valueOf(i14), Long.valueOf(file4.length()));
                                return true;
                            }
                            ShareTinkerLog.i("Tinker.ResDiffPatchInternal", "check final new resource file fail path:%s, entry count:%d, size:%d", file4.getAbsolutePath(), Integer.valueOf(i14), Long.valueOf(file4.length()));
                            SharePatchFileUtil.safeDeleteFile(file4);
                            aVarX.k().a(file, file4, "resources.apk", i11);
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            jVar = jVar2;
                            pf.b.a(jVar);
                            pf.b.a(iVar);
                            pf.b.a(iVar2);
                            SharePatchFileUtil.deleteDir(file3);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        iVar2 = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    iVar = null;
                    iVar2 = null;
                }
            } catch (Throwable th5) {
                th = th5;
                iVar = null;
                iVar2 = null;
            }
        } catch (Throwable th6) {
            throw new TinkerRuntimeException("patch " + ShareTinkerInternals.getTypeString(i11) + " extract failed (" + th6.getMessage() + ").", th6);
        }
    }

    private static boolean e(Context context, String str, String str2, File file, boolean z10) {
        if (d(context, str + "/res/", str2, file, 6, z10)) {
            return true;
        }
        ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "patch recover, extractDiffInternals fail", new Object[0]);
        return false;
    }

    protected static boolean f(vf.a aVar, ShareSecurityCheck shareSecurityCheck, Context context, String str, File file, boolean z10, PatchResult patchResult) {
        if (!aVar.q()) {
            ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "patch recover, resource is not enabled", new Object[0]);
            return true;
        }
        String str2 = shareSecurityCheck.getMetaContentMap().get("assets/res_meta.txt");
        if (str2 == null || str2.length() == 0) {
            ShareTinkerLog.w("Tinker.ResDiffPatchInternal", "patch recover, resource is not contained", new Object[0]);
            return true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zE = e(context, str, str2, file, z10);
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        patchResult.resCostTime = jElapsedRealtime2;
        ShareTinkerLog.i("Tinker.ResDiffPatchInternal", "recover resource result:%b, cost:%d", Boolean.valueOf(zE), Long.valueOf(jElapsedRealtime2));
        return zE;
    }
}
