package tf;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemClock;
import com.tencent.tinker.lib.service.PatchResult;
import com.tencent.tinker.loader.TinkerDexOptimizer;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.app.TinkerApplication;
import com.tencent.tinker.loader.shareutil.ShareConstants;
import com.tencent.tinker.loader.shareutil.ShareDexDiffPatchInfo;
import com.tencent.tinker.loader.shareutil.ShareElfFile;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class d extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ArrayList f76203a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ArrayList f76204b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static HashMap f76205c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f76206d = ShareTinkerInternals.isVmArt();

    class a implements TinkerDexOptimizer.ResultCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f76207a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean[] f76208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f76209c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Throwable[] f76210d;

        a(boolean[] zArr, List list, Throwable[] thArr) {
            this.f76208b = zArr;
            this.f76209c = list;
            this.f76210d = thArr;
        }

        @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
        public void onFailed(File file, File file2, Throwable th2) {
            ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "fail to parallel optimize dex %s use time %d", file.getPath(), Long.valueOf(System.currentTimeMillis() - this.f76207a));
            this.f76209c.add(file);
            this.f76210d[0] = th2;
        }

        @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
        public void onStart(File file, File file2) {
            this.f76207a = System.currentTimeMillis();
            ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "start to parallel optimize dex %s, size: %d", file.getPath(), Long.valueOf(file.length()));
        }

        @Override // com.tencent.tinker.loader.TinkerDexOptimizer.ResultCallback
        public void onSuccess(File file, File file2, File file3) {
            ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "success to parallel optimize dex %s, opt file:%s, opt file size: %d, use time %d", file.getPath(), file3.getPath(), Long.valueOf(file3.length()), Long.valueOf(System.currentTimeMillis() - this.f76207a));
            if (file3.exists()) {
                return;
            }
            synchronized (this.f76208b) {
                this.f76208b[0] = true;
            }
        }
    }

    private static boolean c(ArrayList arrayList, int i11) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (!SharePatchFileUtil.isLegalFile(file) && !SharePatchFileUtil.shouldAcceptEvenIfIllegal(file)) {
                ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "parallel dex optimizer file %s is not exist, just wait %d times", file.getName(), Integer.valueOf(i11));
                return false;
            }
        }
        return true;
    }

    private static boolean d(String str) {
        boolean z10 = true;
        f76205c.clear();
        boolean z11 = false;
        if (!f76204b.isEmpty() && f76206d) {
            ShareDexDiffPatchInfo shareDexDiffPatchInfo = null;
            File file = null;
            for (ShareDexDiffPatchInfo shareDexDiffPatchInfo2 : f76204b) {
                File file2 = new File(str + shareDexDiffPatchInfo2.realName);
                if (ShareConstants.CLASS_N_PATTERN.matcher(file2.getName()).matches()) {
                    f76205c.put(shareDexDiffPatchInfo2, file2);
                }
                if (shareDexDiffPatchInfo2.rawName.startsWith("test.dex")) {
                    shareDexDiffPatchInfo = shareDexDiffPatchInfo2;
                    file = file2;
                }
            }
            if (shareDexDiffPatchInfo != null) {
                HashMap map = f76205c;
                map.put(ShareTinkerInternals.changeTestDexToClassN(shareDexDiffPatchInfo, map.size() + 1), file);
            }
            File file3 = new File(str, "tinker_classN.apk");
            if (file3.exists()) {
                for (ShareDexDiffPatchInfo shareDexDiffPatchInfo3 : f76205c.keySet()) {
                    if (!SharePatchFileUtil.verifyDexFileMd5(file3, shareDexDiffPatchInfo3.rawName, shareDexDiffPatchInfo3.destMd5InArt)) {
                        ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "verify dex file md5 error, entry name; %s, file len: %d", shareDexDiffPatchInfo3.rawName, Long.valueOf(file3.length()));
                        z10 = false;
                        break;
                    }
                }
                if (!z10) {
                    SharePatchFileUtil.safeDeleteFile(file3);
                }
                z11 = z10;
            }
            if (z11) {
                Iterator it = f76205c.values().iterator();
                while (it.hasNext()) {
                    SharePatchFileUtil.safeDeleteFile((File) it.next());
                }
            }
        }
        return z11;
    }

    private static boolean e(Context context, List list, String str, File file, boolean z10, PatchResult patchResult) {
        vf.a aVarX = vf.a.x(context);
        f76203a.clear();
        if (list != null) {
            File file2 = new File(str);
            if (!file2.exists() && !file2.mkdirs()) {
                ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "patch recover, make optimizeDexDirectoryFile fail", new Object[0]);
                return false;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                f76203a.add(new File(SharePatchFileUtil.optimizedPathFor((File) it.next(), file2)));
            }
            ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "patch recover, try to optimize dex file count:%d, optimizeDexDirectory:%s", Integer.valueOf(list.size()), str);
            Vector vector = new Vector();
            Throwable[] thArr = new Throwable[1];
            if (patchResult != null) {
                patchResult.dexoptTriggerTime = System.currentTimeMillis();
            }
            boolean[] zArr = {false};
            TinkerDexOptimizer.optimizeAll(context, list, file2, TinkerApplication.getInstance().isUseDelegateLastClassLoader(), z10, new a(zArr, vector, thArr));
            if (patchResult != null) {
                synchronized (zArr) {
                    patchResult.isOatGenerated = !zArr[0];
                }
            }
            if (!vector.isEmpty()) {
                aVarX.k().f(file, vector, thArr[0]);
                return false;
            }
        }
        return true;
    }

    private static boolean f(Context context, String str, String str2, File file, int i11) {
        ZipFile zipFile;
        ZipFile zipFile2;
        String str3;
        str = str;
        boolean z10 = false;
        f76204b.clear();
        ShareDexDiffPatchInfo.parseDexDiffPatchInfo(str2, f76204b);
        int i12 = 1;
        if (f76204b.isEmpty()) {
            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "extract patch list is empty! type:%s:", ShareTinkerInternals.getTypeString(i11));
            return true;
        }
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        vf.a aVarX = vf.a.x(context);
        ZipFile zipFile3 = null;
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "applicationInfo == null!!!!", new Object[0]);
                SharePatchFileUtil.closeZip(null);
                SharePatchFileUtil.closeZip(null);
                return false;
            }
            ZipFile zipFile4 = new ZipFile(applicationInfo.sourceDir);
            try {
                zipFile = new ZipFile(file);
                try {
                    try {
                        if (d(str)) {
                            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "class n dex file %s is already exist, and md5 match, just continue", "tinker_classN.apk");
                            SharePatchFileUtil.closeZip(zipFile4);
                            SharePatchFileUtil.closeZip(zipFile);
                            return true;
                        }
                        Iterator it = f76204b.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                ShareDexDiffPatchInfo shareDexDiffPatchInfo = (ShareDexDiffPatchInfo) it.next();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                if (shareDexDiffPatchInfo.path.equals("")) {
                                    str3 = shareDexDiffPatchInfo.rawName;
                                } else {
                                    str3 = shareDexDiffPatchInfo.path + "/" + shareDexDiffPatchInfo.rawName;
                                }
                                String str4 = shareDexDiffPatchInfo.dexDiffMd5;
                                String str5 = shareDexDiffPatchInfo.oldDexCrC;
                                if (f76206d || !shareDexDiffPatchInfo.destMd5InDvm.equals("0")) {
                                    String str6 = f76206d ? shareDexDiffPatchInfo.destMd5InArt : shareDexDiffPatchInfo.destMd5InDvm;
                                    if (!SharePatchFileUtil.checkIfMd5Valid(str6)) {
                                        String typeString = ShareTinkerInternals.getTypeString(i11);
                                        String str7 = shareDexDiffPatchInfo.rawName;
                                        Object[] objArr = new Object[3];
                                        objArr[z10 ? 1 : 0] = typeString;
                                        objArr[1] = str7;
                                        objArr[2] = str6;
                                        ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "meta file md5 invalid, type:%s, name: %s, md5: %s", objArr);
                                        aVarX.k().b(file, c.b(i11));
                                        SharePatchFileUtil.closeZip(zipFile4);
                                        SharePatchFileUtil.closeZip(zipFile);
                                        return z10;
                                    }
                                    Iterator it2 = it;
                                    File file3 = new File(str + shareDexDiffPatchInfo.realName);
                                    if (file3.exists()) {
                                        if (SharePatchFileUtil.verifyDexFileMd5(file3, str6)) {
                                            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "dex file %s is already exist, and md5 match, just continue", file3.getPath());
                                        } else {
                                            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "have a mismatch corrupted dex " + file3.getPath(), new Object[0]);
                                            file3.delete();
                                        }
                                        it = it2;
                                        z10 = false;
                                        i12 = 1;
                                    } else {
                                        file3.getParentFile().mkdirs();
                                    }
                                    ZipEntry entry = zipFile.getEntry(str3);
                                    ZipEntry entry2 = zipFile4.getEntry(str3);
                                    String str8 = str6;
                                    if (str5.equals("0")) {
                                        if (entry == null) {
                                            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "patch entry is null. path:" + str3, new Object[0]);
                                            aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                        } else {
                                            if (!g(zipFile, entry, file3, shareDexDiffPatchInfo)) {
                                                ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "Failed to extract raw patch file " + file3.getPath(), new Object[0]);
                                                aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                            }
                                            zipFile2 = zipFile4;
                                            zipFile4 = zipFile2;
                                        }
                                        SharePatchFileUtil.closeZip(zipFile4);
                                        SharePatchFileUtil.closeZip(zipFile);
                                        return false;
                                    }
                                    if (str4.equals("0")) {
                                        if (f76206d) {
                                            if (entry2 == null) {
                                                ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "apk entry is null. path:" + str3, new Object[0]);
                                                aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                            } else {
                                                String strValueOf = String.valueOf(entry2.getCrc());
                                                if (strValueOf.equals(str5)) {
                                                    g(zipFile4, entry2, file3, shareDexDiffPatchInfo);
                                                    if (!SharePatchFileUtil.verifyDexFileMd5(file3, str8)) {
                                                        ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "Failed to recover dex file when verify patched dex: " + file3.getPath(), new Object[0]);
                                                        aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                                        SharePatchFileUtil.safeDeleteFile(file3);
                                                    }
                                                    zipFile2 = zipFile4;
                                                    zipFile4 = zipFile2;
                                                } else {
                                                    ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "apk entry %s crc is not equal, expect crc: %s, got crc: %s", str3, str5, strValueOf);
                                                    aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                                }
                                            }
                                        }
                                    } else if (entry == null) {
                                        ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "patch entry is null. path:" + str3, new Object[0]);
                                        aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                    } else if (!SharePatchFileUtil.checkIfMd5Valid(str4)) {
                                        ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "meta file md5 invalid, type:%s, name: %s, md5: %s", ShareTinkerInternals.getTypeString(i11), shareDexDiffPatchInfo.rawName, str4);
                                        aVarX.k().b(file, c.b(i11));
                                    } else if (entry2 == null) {
                                        ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "apk entry is null. path:" + str3, new Object[0]);
                                        aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                    } else {
                                        String strValueOf2 = String.valueOf(entry2.getCrc());
                                        if (strValueOf2.equals(str5)) {
                                            zipFile2 = zipFile4;
                                            try {
                                                l(zipFile4, zipFile, entry2, entry, shareDexDiffPatchInfo, file3);
                                                if (SharePatchFileUtil.verifyDexFileMd5(file3, str8)) {
                                                    ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "success recover dex file: %s, size: %d, use time: %d", file3.getPath(), Long.valueOf(file3.length()), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                                                    zipFile4 = zipFile2;
                                                } else {
                                                    ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "Failed to recover dex file when verify patched dex: " + file3.getPath(), new Object[0]);
                                                    aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                                    SharePatchFileUtil.safeDeleteFile(file3);
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        } else {
                                            ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "apk entry %s crc is not equal, expect crc: %s, got crc: %s", str3, str5, strValueOf2);
                                            aVarX.k().a(file, file3, shareDexDiffPatchInfo.rawName, i11);
                                        }
                                    }
                                    SharePatchFileUtil.closeZip(zipFile4);
                                    SharePatchFileUtil.closeZip(zipFile);
                                    return false;
                                    it = it2;
                                    z10 = false;
                                    i12 = 1;
                                } else {
                                    Object[] objArr2 = new Object[i12];
                                    objArr2[z10 ? 1 : 0] = str3;
                                    ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "patch dex %s is only for art, just continue", objArr2);
                                }
                            } else {
                                zipFile2 = zipFile4;
                                if (j(context, file, str)) {
                                    SharePatchFileUtil.closeZip(zipFile2);
                                    SharePatchFileUtil.closeZip(zipFile);
                                    return true;
                                }
                            }
                            SharePatchFileUtil.closeZip(zipFile2);
                            SharePatchFileUtil.closeZip(zipFile);
                            return false;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        zipFile3 = zipFile4;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    zipFile2 = zipFile4;
                }
            } catch (Throwable th5) {
                th = th5;
                zipFile2 = zipFile4;
                zipFile = null;
            }
            zipFile3 = zipFile2;
            try {
                throw new TinkerRuntimeException("patch " + ShareTinkerInternals.getTypeString(i11) + " extract failed (" + th.getMessage() + ").", th);
            } catch (Throwable th6) {
                SharePatchFileUtil.closeZip(zipFile3);
                SharePatchFileUtil.closeZip(zipFile);
                throw th6;
            }
        } catch (Throwable th7) {
            th = th7;
            zipFile = null;
        }
    }

    private static boolean g(ZipFile zipFile, ZipEntry zipEntry, File file, ShareDexDiffPatchInfo shareDexDiffPatchInfo) {
        String str = f76206d ? shareDexDiffPatchInfo.destMd5InArt : shareDexDiffPatchInfo.destMd5InDvm;
        return (SharePatchFileUtil.isRawDexFile(shareDexDiffPatchInfo.rawName) && shareDexDiffPatchInfo.isJarMode) ? h(zipFile, zipEntry, file, str) : c.a(zipFile, zipEntry, file, str, true);
    }

    private static boolean h(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws Throwable {
        ZipOutputStream zipOutputStream;
        int i11 = 0;
        boolean zVerifyDexFileMd5 = false;
        while (i11 < 2 && !zVerifyDexFileMd5) {
            i11++;
            ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "try Extracting " + file.getPath(), new Object[0]);
            BufferedInputStream bufferedInputStream = null;
            try {
                if (file.exists()) {
                    file.delete();
                }
                zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                try {
                    if (ShareTinkerInternals.isNewerOrEqualThanVersion(33, true)) {
                        file.setReadOnly();
                    }
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(zipFile.getInputStream(zipEntry));
                    try {
                        byte[] bArr = new byte[4096];
                        zipOutputStream.putNextEntry(new ZipEntry("classes.dex"));
                        for (int i12 = bufferedInputStream2.read(bArr); i12 != -1; i12 = bufferedInputStream2.read(bArr)) {
                            zipOutputStream.write(bArr, 0, i12);
                        }
                        zipOutputStream.closeEntry();
                        pf.b.a(bufferedInputStream2);
                        pf.b.a(zipOutputStream);
                        zVerifyDexFileMd5 = SharePatchFileUtil.verifyDexFileMd5(file, str);
                        ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "isExtractionSuccessful: %b", Boolean.valueOf(zVerifyDexFileMd5));
                        if (!zVerifyDexFileMd5 && (!file.delete() || file.exists())) {
                            ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "Failed to delete corrupted dex " + file.getPath(), new Object[0]);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream = bufferedInputStream2;
                        pf.b.a(bufferedInputStream);
                        pf.b.a(zipOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                zipOutputStream = null;
            }
        }
        return zVerifyDexFileMd5;
    }

    private static ZipEntry i(ZipEntry zipEntry, String str) {
        ZipEntry zipEntry2 = new ZipEntry(str);
        zipEntry2.setMethod(0);
        zipEntry2.setCompressedSize(zipEntry.getSize());
        zipEntry2.setSize(zipEntry.getSize());
        zipEntry2.setCrc(zipEntry.getCrc());
        return zipEntry2;
    }

    private static boolean j(Context context, File file, String str) {
        boolean z10;
        ZipFile zipFile;
        if (f76204b.isEmpty() || !f76206d) {
            return true;
        }
        File file2 = new File(str, "tinker_classN.apk");
        if (f76205c.isEmpty()) {
            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "classNDexInfo size: %d, no need to merge classN dex files", Integer.valueOf(f76205c.size()));
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Object obj = null;
        try {
            if (file2.exists()) {
                file2.delete();
            }
            xf.a aVar = new xf.a(new BufferedOutputStream(new FileOutputStream(file2)));
            try {
                if (ShareTinkerInternals.isNewerOrEqualThanVersion(33, true)) {
                    file2.setReadOnly();
                }
                for (ShareDexDiffPatchInfo shareDexDiffPatchInfo : f76205c.keySet()) {
                    File file3 = (File) f76205c.get(shareDexDiffPatchInfo);
                    if (shareDexDiffPatchInfo.isJarMode) {
                        try {
                            zipFile = new ZipFile(file3);
                            try {
                                ZipEntry entry = zipFile.getEntry("classes.dex");
                                ZipEntry zipEntryI = i(entry, shareDexDiffPatchInfo.rawName);
                                InputStream inputStream = zipFile.getInputStream(entry);
                                try {
                                    aVar.l(zipEntryI);
                                    pf.b.b(inputStream, aVar);
                                    try {
                                        aVar.h();
                                        pf.b.a(inputStream);
                                        pf.b.a(zipFile);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        obj = inputStream;
                                        pf.b.a(obj);
                                        pf.b.a(zipFile);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    aVar.h();
                                    throw th3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            zipFile = null;
                        }
                    } else {
                        ZipEntry zipEntry = new ZipEntry(shareDexDiffPatchInfo.rawName);
                        zipEntry.setMethod(0);
                        zipEntry.setCompressedSize(file3.length());
                        zipEntry.setSize(file3.length());
                        zipEntry.setCrc(pf.a.a(file3));
                        try {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file3));
                            try {
                                aVar.l(zipEntry);
                                pf.b.b(bufferedInputStream, aVar);
                                try {
                                    aVar.h();
                                    pf.b.a(bufferedInputStream);
                                } catch (Throwable th6) {
                                    th = th6;
                                    obj = bufferedInputStream;
                                    pf.b.a(obj);
                                    throw th;
                                }
                            } catch (Throwable th7) {
                                aVar.h();
                                throw th7;
                            }
                        } catch (Throwable th8) {
                            th = th8;
                        }
                    }
                }
                pf.b.a(aVar);
                z10 = true;
            } catch (Throwable th9) {
                th = th9;
                obj = aVar;
                try {
                    ShareTinkerLog.printErrStackTrace("Tinker.DexDiffPatchInternal", th, "merge classN file", new Object[0]);
                    pf.b.a(obj);
                    z10 = false;
                } catch (Throwable th10) {
                    pf.b.a(obj);
                    throw th10;
                }
            }
        } catch (Throwable th11) {
            th = th11;
        }
        if (z10) {
            for (ShareDexDiffPatchInfo shareDexDiffPatchInfo2 : f76205c.keySet()) {
                if (!SharePatchFileUtil.verifyDexFileMd5(file2, shareDexDiffPatchInfo2.rawName, shareDexDiffPatchInfo2.destMd5InArt)) {
                    ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "verify dex file md5 error, entry name; %s, file len: %d", shareDexDiffPatchInfo2.rawName, Long.valueOf(file2.length()));
                    z10 = false;
                    break;
                }
            }
        }
        if (z10) {
            Iterator it = f76205c.values().iterator();
            while (it.hasNext()) {
                SharePatchFileUtil.safeDeleteFile((File) it.next());
            }
        } else {
            ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "merge classN dex error, try delete temp file", new Object[0]);
            SharePatchFileUtil.safeDeleteFile(file2);
            vf.a.x(context).k().a(file, file2, file2.getName(), 7);
        }
        ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "merge classN dex file %s, result: %b, size: %d, use: %dms", file2.getPath(), Boolean.valueOf(z10), Long.valueOf(file2.length()), Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
        return z10;
    }

    private static boolean k(Context context, String str, String str2, File file, boolean z10, PatchResult patchResult) {
        String str3 = str + "/dex/";
        if (!f(context, str3, str2, file, 3)) {
            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "patch recover, extractDiffInternals fail", new Object[0]);
            return false;
        }
        File[] fileArrListFiles = new File(str3).listFiles();
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (file2.isFile() && (name.endsWith(".dex") || name.endsWith(".jar") || name.endsWith(".apk"))) {
                    arrayList.add(file2);
                }
            }
        }
        ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "legal files to do dexopt: " + arrayList, new Object[0]);
        return e(context, arrayList, str + "/odex/", file, z10, patchResult);
    }

    private static void l(ZipFile zipFile, ZipFile zipFile2, ZipEntry zipEntry, ZipEntry zipEntry2, ShareDexDiffPatchInfo shareDexDiffPatchInfo, File file) throws Throwable {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        ZipEntry nextEntry;
        Object obj = null;
        try {
            BufferedInputStream bufferedInputStream3 = new BufferedInputStream(zipFile.getInputStream(zipEntry));
            if (zipEntry2 != null) {
                try {
                    bufferedInputStream2 = new BufferedInputStream(zipFile2.getInputStream(zipEntry2));
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = null;
                    obj = bufferedInputStream3;
                    pf.b.a(obj);
                    pf.b.a(bufferedInputStream);
                    throw th;
                }
            } else {
                bufferedInputStream2 = null;
            }
            try {
                if (ShareTinkerInternals.isNewerOrEqualThanVersion(33, true)) {
                    file.setReadOnly();
                }
                boolean zIsRawDexFile = SharePatchFileUtil.isRawDexFile(shareDexDiffPatchInfo.rawName);
                if (!zIsRawDexFile || shareDexDiffPatchInfo.isJarMode) {
                    try {
                        if (file.exists()) {
                            file.delete();
                        }
                        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
                        try {
                            zipOutputStream.putNextEntry(new ZipEntry("classes.dex"));
                            if (zIsRawDexFile) {
                                new lf.a(bufferedInputStream3, bufferedInputStream2).b(zipOutputStream);
                            } else {
                                try {
                                    ZipInputStream zipInputStream = new ZipInputStream(bufferedInputStream3);
                                    do {
                                        try {
                                            nextEntry = zipInputStream.getNextEntry();
                                            if (nextEntry == null) {
                                                break;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            obj = zipInputStream;
                                            pf.b.a(obj);
                                            throw th;
                                        }
                                    } while (!"classes.dex".equals(nextEntry.getName()));
                                    if (nextEntry == null) {
                                        throw new TinkerRuntimeException("can't recognize zip dex format file:" + file.getAbsolutePath());
                                    }
                                    new lf.a(zipInputStream, bufferedInputStream2).b(zipOutputStream);
                                    pf.b.a(zipInputStream);
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            }
                            zipOutputStream.closeEntry();
                            pf.b.a(zipOutputStream);
                        } catch (Throwable th5) {
                            th = th5;
                            obj = zipOutputStream;
                            pf.b.a(obj);
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } else {
                    new lf.a(bufferedInputStream3, bufferedInputStream2).a(file);
                }
                pf.b.a(bufferedInputStream3);
                pf.b.a(bufferedInputStream2);
            } catch (Throwable th7) {
                obj = bufferedInputStream3;
                bufferedInputStream = bufferedInputStream2;
                th = th7;
                pf.b.a(obj);
                pf.b.a(bufferedInputStream);
                throw th;
            }
        } catch (Throwable th8) {
            th = th8;
            bufferedInputStream = null;
        }
    }

    protected static boolean m(vf.a aVar, ShareSecurityCheck shareSecurityCheck, Context context, String str, File file, boolean z10, PatchResult patchResult) {
        if (!aVar.o()) {
            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "patch recover, dex is not enabled", new Object[0]);
            return true;
        }
        String str2 = shareSecurityCheck.getMetaContentMap().get("assets/dex_meta.txt");
        if (str2 == null) {
            ShareTinkerLog.w("Tinker.DexDiffPatchInternal", "patch recover, dex is not contained", new Object[0]);
            return true;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zK = k(context, str, str2, file, z10, patchResult);
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        patchResult.dexCostTime = jElapsedRealtime2;
        ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "recover dex result:%b, cost:%d", Boolean.valueOf(zK), Long.valueOf(jElapsedRealtime2));
        return zK;
    }

    protected static boolean n(File file, vf.a aVar) {
        if (f76203a.isEmpty()) {
            return true;
        }
        int size = f76204b.size() * 30;
        if (size > 120) {
            size = 120;
        }
        ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "raw dex count: %d, dex opt dex count: %d, final wait times: %d", Integer.valueOf(f76204b.size()), Integer.valueOf(f76203a.size()), Integer.valueOf(size));
        int i11 = 0;
        while (i11 < size) {
            i11++;
            if (!c(f76203a, i11)) {
                try {
                    Thread.sleep(10000L);
                } catch (InterruptedException e11) {
                    ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "thread sleep InterruptedException e:" + e11, new Object[0]);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : f76203a) {
            ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "check dex optimizer file exist: %s, size %d", file2.getPath(), Long.valueOf(file2.length()));
            if (!SharePatchFileUtil.isLegalFile(file2) && !SharePatchFileUtil.shouldAcceptEvenIfIllegal(file2)) {
                ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "final parallel dex optimizer file %s is not exist, return false", file2.getName());
                arrayList.add(file2);
            }
        }
        if (!arrayList.isEmpty()) {
            aVar.k().f(file, arrayList, new TinkerRuntimeException("checkDexOptExist failed"));
            return false;
        }
        Throwable th2 = null;
        for (File file3 : f76203a) {
            if (!SharePatchFileUtil.shouldAcceptEvenIfIllegal(file3)) {
                ShareTinkerLog.i("Tinker.DexDiffPatchInternal", "check dex optimizer file format: %s, size %d", file3.getName(), Long.valueOf(file3.length()));
                try {
                    if (ShareElfFile.getFileTypeByMagic(file3) == 1) {
                        try {
                            pf.b.a(new ShareElfFile(file3));
                        } catch (Throwable th3) {
                            th2 = th3;
                            try {
                                ShareTinkerLog.e("Tinker.DexDiffPatchInternal", "final parallel dex optimizer file %s is not elf format, return false", file3.getName());
                                arrayList.add(file3);
                                pf.b.a(null);
                            } catch (Throwable th4) {
                                pf.b.a(null);
                                throw th4;
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (IOException unused) {
                    continue;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        aVar.k().f(file, arrayList, th2 == null ? new TinkerRuntimeException("checkDexOptFormat failed") : new TinkerRuntimeException("checkDexOptFormat failed", th2));
        return false;
    }
}
