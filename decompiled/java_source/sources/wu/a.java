package wu;

import android.content.Context;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.tinker.lib.custom.api.PatchState;
import java.io.File;
import nu.h;

/* JADX INFO: loaded from: classes7.dex */
public class a extends uf.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ou.c f77959b;

    public a(Context context, ou.c cVar) {
        super(context);
        this.f77959b = cVar;
    }

    @Override // uf.a, uf.c
    public void a(Throwable th2, int i11) throws Throwable {
        super.a(th2, i11);
        ShareTinkerLog.e("Tinker.CustomLoadReporter", "onLoadException: errorCode=%d throwable=%s", Integer.valueOf(i11), th2 != null ? th2.getMessage() : "null");
        ou.c cVar = this.f77959b;
        if (cVar != null) {
            cVar.a(th2, i11);
        }
    }

    @Override // uf.a, uf.c
    public void b(File file, int i11) {
        super.b(file, i11);
        try {
            yu.a.o(this.f76745a, PatchState.NONE, null, "package_check_fail_" + i11);
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.CustomLoadReporter", "onLoadPackageCheckFail: reset PatchStateStore failed: %s", th2.getMessage());
        }
    }

    @Override // uf.a, uf.c
    public void c(File file, int i11, boolean z10) {
        super.c(file, i11, z10);
    }

    @Override // uf.a, uf.c
    public void d(int i11, Throwable th2) {
        super.d(i11, th2);
    }

    @Override // uf.a, uf.c
    public void e(File file, int i11, long j11) {
        super.e(file, i11, j11);
        ShareTinkerLog.i("Tinker.CustomLoadReporter", "onLoadResult: loadCode=%d costMs=%d patchDir=%s", Integer.valueOf(i11), Long.valueOf(j11), file != null ? file.getAbsolutePath() : "null");
        if (i11 == 0 || i11 == -2 || i11 == -1 || i11 == -8) {
            ShareTinkerLog.i("Tinker.CustomLoadReporter", "disarm startup watchdog: loadCode=%d", Integer.valueOf(i11));
            h.o();
        }
        ou.c cVar = this.f77959b;
        if (cVar != null) {
            cVar.k(i11, j11);
        }
    }

    @Override // uf.a, uf.c
    public void f(File file, int i11) {
        super.f(file, i11);
    }

    @Override // uf.a, uf.c
    public void g(String str, String str2, File file) {
        super.g(str, str2, file);
    }

    @Override // uf.a, uf.c
    public void h(File file, int i11) {
        super.h(file, i11);
        ShareTinkerLog.w("Tinker.CustomLoadReporter", "onLoadPatchListenerReceiveFail: patchFile=%s errorCode=%d", file != null ? file.getAbsolutePath() : "null", Integer.valueOf(i11));
        ou.c cVar = this.f77959b;
        if (cVar != null) {
            cVar.e(file, i11);
        }
    }

    @Override // uf.a, uf.c
    public void i(String str, String str2, File file, String str3) throws Throwable {
        super.i(str, str2, file, str3);
    }
}
