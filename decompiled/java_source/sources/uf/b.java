package uf;

import android.content.Context;
import android.content.Intent;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.SharePatchInfo;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f76746b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f76747a;

    public b(Context context) {
        this.f76747a = context;
    }

    private void i(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SharePatchFileUtil.safeDeleteFile((File) it.next());
        }
    }

    @Override // uf.d
    public void a(File file, File file2, String str, int i11) {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchTypeExtractFail: file extract fail type: %s, path: %s, extractTo: %s, filename: %s", ShareTinkerInternals.getTypeString(i11), file.getPath(), file2.getPath(), str);
        vf.a.x(this.f76747a).b(file);
    }

    @Override // uf.d
    public void b(File file, int i11) {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchPackageCheckFail: package check failed. path: %s, code: %d", file.getAbsolutePath(), Integer.valueOf(i11));
        if (i11 == -3 || i11 == -4 || i11 == -8) {
            vf.a.x(this.f76747a).b(file);
        }
    }

    @Override // uf.d
    public void c(File file, String str, String str2) {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchInfoCorrupted: patch info is corrupted. old: %s, new: %s", str, str2);
        vf.a.x(this.f76747a).a();
    }

    @Override // uf.d
    public void d(File file, Throwable th2) {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchException: patch exception path: %s, throwable: %s", file.getAbsolutePath(), th2.getMessage());
        ShareTinkerLog.e("Tinker.DefaultPatchReporter", "tinker patch exception, welcome to submit issue to us: https://github.com/Tencent/tinker/issues", new Object[0]);
        ShareTinkerLog.printErrStackTrace("Tinker.DefaultPatchReporter", th2, "tinker patch exception", new Object[0]);
        vf.a.x(this.f76747a).v();
        vf.a.x(this.f76747a).b(file);
    }

    @Override // uf.d
    public void e(File file, boolean z10, long j11) {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchResult: patch all result path: %s, success: %b, cost: %d", file.getAbsolutePath(), Boolean.valueOf(z10), Long.valueOf(j11));
        if (f76746b) {
            return;
        }
        wf.c.b(this.f76747a).e();
    }

    @Override // uf.d
    public void f(File file, List list, Throwable th2) {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchDexOptFail: dex opt fail path: %s, dex size: %d", file.getAbsolutePath(), Integer.valueOf(list.size()));
        ShareTinkerLog.printErrStackTrace("Tinker.DefaultPatchReporter", th2, "onPatchDexOptFail:", new Object[0]);
        if (!th2.getMessage().contains("checkDexOptExist failed") && !th2.getMessage().contains("checkDexOptFormat failed")) {
            vf.a.x(this.f76747a).b(file);
        } else {
            f76746b = true;
            i(list);
        }
    }

    @Override // uf.d
    public void g(File file, SharePatchInfo sharePatchInfo, String str) {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchVersionCheckFail: patch version exist. path: %s, version: %s", file.getAbsolutePath(), str);
    }

    @Override // uf.d
    public void h(Intent intent) throws Throwable {
        ShareTinkerLog.i("Tinker.DefaultPatchReporter", "patchReporter onPatchServiceStart: patch service start", new Object[0]);
        f76746b = false;
        wf.c.b(this.f76747a).f(intent);
    }
}
