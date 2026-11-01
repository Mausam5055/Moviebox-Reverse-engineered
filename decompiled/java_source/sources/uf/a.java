package uf;

import android.content.Context;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f76745a;

    public a(Context context) {
        this.f76745a = context;
    }

    @Override // uf.c
    public void a(Throwable th2, int i11) throws Throwable {
        if (i11 == -4) {
            ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadException: patch load unCatch exception: %s", th2);
            ShareTinkerInternals.setTinkerDisableWithSharedPreferences(this.f76745a);
            ShareTinkerLog.i("Tinker.DefaultLoadReporter", "unCaught exception disable tinker forever with sp", new Object[0]);
            String strCheckTinkerLastUncaughtCrash = SharePatchFileUtil.checkTinkerLastUncaughtCrash(this.f76745a);
            if (!ShareTinkerInternals.isNullOrNil(strCheckTinkerLastUncaughtCrash)) {
                SharePatchFileUtil.safeDeleteFile(SharePatchFileUtil.getPatchLastCrashFile(this.f76745a));
                ShareTinkerLog.e("Tinker.DefaultLoadReporter", "tinker uncaught real exception:" + strCheckTinkerLastUncaughtCrash, new Object[0]);
            }
        } else if (i11 == -3) {
            if (th2.getMessage().contains("checkResInstall failed")) {
                ShareTinkerLog.e("Tinker.DefaultLoadReporter", "patch loadReporter onLoadException: tinker res check fail:" + th2.getMessage(), new Object[0]);
            } else {
                ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadException: patch load resource exception: %s", th2);
            }
            ShareTinkerInternals.setTinkerDisableWithSharedPreferences(this.f76745a);
            ShareTinkerLog.i("Tinker.DefaultLoadReporter", "res exception disable tinker forever with sp", new Object[0]);
        } else if (i11 == -2) {
            if (th2.getMessage().contains("checkDexInstall failed")) {
                ShareTinkerLog.e("Tinker.DefaultLoadReporter", "patch loadReporter onLoadException: tinker dex check fail:" + th2.getMessage(), new Object[0]);
            } else {
                ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadException: patch load dex exception: %s", th2);
            }
            ShareTinkerInternals.setTinkerDisableWithSharedPreferences(this.f76745a);
            ShareTinkerLog.i("Tinker.DefaultLoadReporter", "dex exception disable tinker forever with sp", new Object[0]);
        } else if (i11 == -1) {
            ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadException: patch load unknown exception: %s", th2);
        }
        ShareTinkerLog.e("Tinker.DefaultLoadReporter", "tinker load exception, welcome to submit issue to us: https://github.com/Tencent/tinker/issues", new Object[0]);
        ShareTinkerLog.printErrStackTrace("Tinker.DefaultLoadReporter", th2, "tinker load exception", new Object[0]);
        vf.a.x(this.f76745a).v();
        j();
    }

    @Override // uf.c
    public void b(File file, int i11) {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadPackageCheckFail: load patch package check fail file path: %s, errorCode: %d", file.getAbsolutePath(), Integer.valueOf(i11));
        j();
    }

    @Override // uf.c
    public void c(File file, int i11, boolean z10) {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadFileNotFound: patch file not found: %s, fileType: %d, isDirectory: %b", file.getAbsolutePath(), Integer.valueOf(i11), Boolean.valueOf(z10));
        if (i11 == 4) {
            k();
        } else {
            j();
        }
    }

    @Override // uf.c
    public void d(int i11, Throwable th2) {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadInterpret: type: %d, throwable: %s", Integer.valueOf(i11), th2);
        if (i11 == 0) {
            ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadInterpret ok", new Object[0]);
        } else if (i11 == 1) {
            ShareTinkerLog.e("Tinker.DefaultLoadReporter", "patch loadReporter onLoadInterpret fail, can get instruction set from existed oat file", new Object[0]);
        } else if (i11 == 2) {
            ShareTinkerLog.e("Tinker.DefaultLoadReporter", "patch loadReporter onLoadInterpret fail, command line to interpret return error", new Object[0]);
        }
        k();
    }

    @Override // uf.c
    public void e(File file, int i11, long j11) {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadResult: patch load result, path:%s, code: %d, cost: %dms", file.getAbsolutePath(), Integer.valueOf(i11), Long.valueOf(j11));
    }

    @Override // uf.c
    public void f(File file, int i11) {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch load Reporter onLoadFileMd5Mismatch: patch file md5 mismatch file: %s, fileType: %d", file.getAbsolutePath(), Integer.valueOf(i11));
        j();
    }

    @Override // uf.c
    public void g(String str, String str2, File file) {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadPatchInfoCorrupted: patch info file damage: %s, from version: %s to version: %s", file.getAbsolutePath(), str, str2);
        j();
    }

    @Override // uf.c
    public void h(File file, int i11) {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadPatchListenerReceiveFail: patch receive fail: %s, code: %d", file.getAbsolutePath(), Integer.valueOf(i11));
    }

    @Override // uf.c
    public void i(String str, String str2, File file, String str3) throws Throwable {
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "patch loadReporter onLoadPatchVersionChanged: patch version change from " + str + " to " + str2, new Object[0]);
        if (str == null || str2 == null || str.equals(str2) || !vf.a.x(this.f76745a).r()) {
            return;
        }
        wf.c.b(this.f76745a).d(str2);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                if (file2.isDirectory() && !name.equals(str3)) {
                    SharePatchFileUtil.deleteDir(file2);
                }
            }
        }
    }

    public void j() {
        vf.a.x(this.f76745a).a();
    }

    public boolean k() {
        File file;
        vf.a aVarX = vf.a.x(this.f76745a);
        if (!aVarX.r() || (file = aVarX.m().f77314h) == null || !wf.c.b(this.f76745a).c(SharePatchFileUtil.getMD5(file))) {
            return false;
        }
        ShareTinkerLog.i("Tinker.DefaultLoadReporter", "try to repair oat file on patch process", new Object[0]);
        vf.b.b(this.f76745a, file.getAbsolutePath());
        return true;
    }
}
