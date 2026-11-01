package wu;

import android.content.Context;
import android.content.Intent;
import com.tencent.tinker.loader.shareutil.SharePatchInfo;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class b extends uf.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ou.c f77960c;

    public b(Context context, ou.c cVar) {
        super(context);
        this.f77960c = cVar;
    }

    @Override // uf.b, uf.d
    public void a(File file, File file2, String str, int i11) {
        String str2;
        super.a(file, file2, str, i11);
        if (i11 == 3) {
            str2 = "dex";
        } else if (i11 == 4) {
            str2 = "dex_opt";
        } else if (i11 == 5) {
            str2 = "so";
        } else if (i11 == 6) {
            str2 = "resource";
        } else if (i11 != 7) {
            str2 = "type=" + i11;
        } else {
            str2 = "classN_dex";
        }
        wf.a.a("Tinker.CustomPatchReporter", "patch extract FAILED: type=%s, filename=%s, extractTo=%s, patchFile=%s. If type=dex, the most likely cause is base.apk/dex CRC mismatch: re-install base.apk on device and regenerate the patch.", str2, str, file2 != null ? file2.getAbsolutePath() : "null", file != null ? file.getName() : "null");
    }

    @Override // uf.b, uf.d
    public void b(File file, int i11) {
        super.b(file, i11);
        ou.c cVar = this.f77960c;
        if (cVar != null) {
            cVar.e(file, i11);
        }
        wf.a.a("Tinker.CustomPatchReporter", "onPatchPackageCheckFail: patch=%s errorCode=%d", file != null ? file.getAbsolutePath() : "null", Integer.valueOf(i11));
    }

    @Override // uf.b, uf.d
    public void c(File file, String str, String str2) {
        super.c(file, str, str2);
        wf.a.a("Tinker.CustomPatchReporter", "onPatchInfoCorrupted: patch=%s old=%s new=%s", file != null ? file.getAbsolutePath() : "null", str, str2);
    }

    @Override // uf.b, uf.d
    public void d(File file, Throwable th2) {
        super.d(file, th2);
        ou.c cVar = this.f77960c;
        if (cVar != null) {
            cVar.g(null, th2);
        }
        wf.a.a("Tinker.CustomPatchReporter", "onPatchException: patch=%s throwable=%s", file != null ? file.getAbsolutePath() : "null", th2 != null ? th2.getMessage() : "null");
    }

    @Override // uf.b, uf.d
    public void e(File file, boolean z10, long j11) {
        super.e(file, z10, j11);
        ou.c cVar = this.f77960c;
        if (cVar != null) {
            cVar.i(null, z10, j11);
        }
        wf.a.b("Tinker.CustomPatchReporter", "onPatchResult: patch=%s success=%b costMs=%d", file != null ? file.getAbsolutePath() : "null", Boolean.valueOf(z10), Long.valueOf(j11));
    }

    @Override // uf.b, uf.d
    public void f(File file, List list, Throwable th2) {
        super.f(file, list, th2);
        wf.a.a("Tinker.CustomPatchReporter", "onPatchDexOptFail: patch=%s dexCount=%d throwable=%s", file != null ? file.getAbsolutePath() : "null", Integer.valueOf(list != null ? list.size() : -1), th2 != null ? th2.getMessage() : "null");
    }

    @Override // uf.b, uf.d
    public void g(File file, SharePatchInfo sharePatchInfo, String str) {
        super.g(file, sharePatchInfo, str);
        wf.a.c("Tinker.CustomPatchReporter", "onPatchVersionCheckFail: patch=%s patchFileVersion=%s oldPatchInfo=%s", file != null ? file.getAbsolutePath() : "null", str, sharePatchInfo != null ? sharePatchInfo.toString() : "null");
    }

    @Override // uf.b, uf.d
    public void h(Intent intent) throws Throwable {
        super.h(intent);
        ou.c cVar = this.f77960c;
        if (cVar != null) {
            cVar.f();
        }
        wf.a.b("Tinker.CustomPatchReporter", "onPatchServiceStart: intent=%s", intent);
    }
}
