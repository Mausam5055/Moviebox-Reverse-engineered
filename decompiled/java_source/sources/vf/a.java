package vf;

import android.content.Context;
import android.content.Intent;
import com.tencent.tinker.lib.service.TinkerPatchService;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import uf.d;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static a f77279o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static boolean f77280p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f77281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final File f77282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final sf.b f77283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final uf.c f77284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final d f77285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final File f77286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final File f77287g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final rf.a f77288h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final boolean f77289i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final boolean f77290j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final boolean f77291k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f77292l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    c f77293m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f77294n;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f77295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f77296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f77297c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f77298d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private uf.c f77299e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private d f77300f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private sf.b f77301g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private rf.a f77302h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private File f77303i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private File f77304j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private File f77305k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private Boolean f77306l;

        public b(Context context) {
            if (context == null) {
                throw new TinkerRuntimeException("Context must not be null.");
            }
            this.f77295a = context;
            this.f77296b = ShareTinkerInternals.isInMainProcess(context);
            this.f77297c = wf.b.c(context);
            File patchDirectory = SharePatchFileUtil.getPatchDirectory(context);
            this.f77303i = patchDirectory;
            if (patchDirectory == null) {
                ShareTinkerLog.e("Tinker.Tinker", "patchDirectory is null!", new Object[0]);
                return;
            }
            this.f77304j = SharePatchFileUtil.getPatchInfoFile(patchDirectory.getAbsolutePath());
            this.f77305k = SharePatchFileUtil.getPatchInfoLockFile(this.f77303i.getAbsolutePath());
            ShareTinkerLog.w("Tinker.Tinker", "tinker patch directory: %s", this.f77303i);
        }

        public a a() {
            if (this.f77298d == -1) {
                this.f77298d = 15;
            }
            if (this.f77299e == null) {
                this.f77299e = new uf.a(this.f77295a);
            }
            if (this.f77300f == null) {
                this.f77300f = new uf.b(this.f77295a);
            }
            if (this.f77301g == null) {
                this.f77301g = new sf.a(this.f77295a);
            }
            if (this.f77306l == null) {
                this.f77306l = Boolean.FALSE;
            }
            return new a(this.f77295a, this.f77298d, this.f77299e, this.f77300f, this.f77301g, this.f77303i, this.f77304j, this.f77305k, this.f77302h, this.f77296b, this.f77297c, this.f77306l.booleanValue());
        }

        public b b(sf.b bVar) {
            if (bVar == null) {
                throw new TinkerRuntimeException("listener must not be null.");
            }
            if (this.f77301g != null) {
                throw new TinkerRuntimeException("listener is already set.");
            }
            this.f77301g = bVar;
            return this;
        }

        public b c(uf.c cVar) {
            if (cVar == null) {
                throw new TinkerRuntimeException("loadReporter must not be null.");
            }
            if (this.f77299e != null) {
                throw new TinkerRuntimeException("loadReporter is already set.");
            }
            this.f77299e = cVar;
            return this;
        }

        public b d(d dVar) {
            if (dVar == null) {
                throw new TinkerRuntimeException("patchReporter must not be null.");
            }
            if (this.f77300f != null) {
                throw new TinkerRuntimeException("patchReporter is already set.");
            }
            this.f77300f = dVar;
            return this;
        }

        public b e(int i11) {
            if (this.f77298d != -1) {
                throw new TinkerRuntimeException("tinkerFlag is already set.");
            }
            this.f77298d = i11;
            return this;
        }

        public b f(Boolean bool) {
            if (bool == null) {
                throw new TinkerRuntimeException("tinkerLoadVerifyFlag must not be null.");
            }
            if (this.f77306l != null) {
                throw new TinkerRuntimeException("tinkerLoadVerifyFlag is already set.");
            }
            this.f77306l = bool;
            return this;
        }
    }

    private a(Context context, int i11, uf.c cVar, d dVar, sf.b bVar, File file, File file2, File file3, rf.a aVar, boolean z10, boolean z11, boolean z12) {
        this.f77294n = false;
        this.f77281a = context;
        this.f77283c = bVar;
        this.f77284d = cVar;
        this.f77285e = dVar;
        this.f77292l = i11;
        this.f77282b = file;
        this.f77286f = file2;
        this.f77287g = file3;
        this.f77288h = aVar;
        this.f77289i = z10;
        this.f77291k = z12;
        this.f77290j = z11;
    }

    public static void d(a aVar) {
        if (f77279o != null) {
            throw new TinkerRuntimeException("Tinker instance is already set.");
        }
        f77279o = aVar;
    }

    public static a x(Context context) {
        if (!f77280p) {
            throw new TinkerRuntimeException("you must install tinker before get tinker sInstance");
        }
        synchronized (a.class) {
            try {
                if (f77279o == null) {
                    f77279o = new b(context).a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f77279o;
    }

    public void a() {
        ShareTinkerInternals.cleanPatch(e());
    }

    public void b(File file) {
        if (this.f77282b == null || file == null || !file.exists()) {
            return;
        }
        c(SharePatchFileUtil.getPatchVersionDirectory(SharePatchFileUtil.getMD5(file)));
    }

    public void c(String str) {
        if (this.f77282b == null || str == null) {
            return;
        }
        SharePatchFileUtil.deleteDir(this.f77282b.getAbsolutePath() + "/" + str);
    }

    public Context e() {
        return this.f77281a;
    }

    public rf.a f() {
        return this.f77288h;
    }

    public uf.c g() {
        return this.f77284d;
    }

    public File h() {
        return this.f77282b;
    }

    public File i() {
        return this.f77286f;
    }

    public sf.b j() {
        return this.f77283c;
    }

    public d k() {
        return this.f77285e;
    }

    public int l() {
        return this.f77292l;
    }

    public c m() {
        return this.f77293m;
    }

    public void n(Intent intent, Class cls, tf.a aVar) {
        f77280p = true;
        TinkerPatchService.k(aVar, cls);
        ShareTinkerLog.i("Tinker.Tinker", "try to install tinker, isEnable: %b, version: %s", Boolean.valueOf(t()), "1.9.15.2");
        if (!t()) {
            ShareTinkerLog.e("Tinker.Tinker", "tinker is disabled", new Object[0]);
            return;
        }
        if (intent == null) {
            throw new TinkerRuntimeException("intentResult must not be null.");
        }
        c cVar = new c();
        this.f77293m = cVar;
        cVar.a(e(), intent);
        uf.c cVar2 = this.f77284d;
        File file = this.f77282b;
        c cVar3 = this.f77293m;
        cVar2.e(file, cVar3.f77322p, cVar3.f77323q);
        if (this.f77294n) {
            return;
        }
        ShareTinkerLog.w("Tinker.Tinker", "tinker load fail!", new Object[0]);
    }

    public boolean o() {
        return ShareTinkerInternals.isTinkerEnabledForDex(this.f77292l);
    }

    public boolean p() {
        return ShareTinkerInternals.isTinkerEnabledForNativeLib(this.f77292l);
    }

    public boolean q() {
        return ShareTinkerInternals.isTinkerEnabledForResource(this.f77292l);
    }

    public boolean r() {
        return this.f77289i;
    }

    public boolean s() {
        return this.f77290j;
    }

    public boolean t() {
        return ShareTinkerInternals.isTinkerEnabled(this.f77292l);
    }

    public boolean u() {
        return this.f77294n;
    }

    public void v() {
        this.f77292l = 0;
    }

    public void w(boolean z10) {
        this.f77294n = z10;
    }
}
