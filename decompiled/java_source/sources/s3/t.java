package s3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l2.i0.a f75217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f75218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f75219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f75220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s0 f75221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f75222g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f75223h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f75224i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f75225j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f75226k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f75227l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f75228m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f75229n;

    public t(String str) {
        this(null, 0, str);
    }

    public t(String str, int i11, String str2) {
        this.f75223h = 0;
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(4);
        this.f75216a = j0Var;
        j0Var.e()[0] = -1;
        this.f75217b = new l2.i0.a();
        this.f75229n = C.TIME_UNSET;
        this.f75218c = str;
        this.f75219d = i11;
        this.f75220e = str2;
    }

    private void e(androidx.media3.common.util.j0 j0Var) {
        byte[] bArrE = j0Var.e();
        int iG = j0Var.g();
        for (int iF = j0Var.f(); iF < iG; iF++) {
            byte b11 = bArrE[iF];
            boolean z10 = (b11 & 255) == 255;
            boolean z11 = this.f75226k && (b11 & 224) == 224;
            this.f75226k = z10;
            if (z11) {
                j0Var.W(iF + 1);
                this.f75226k = false;
                this.f75216a.e()[1] = bArrE[iF];
                this.f75224i = 2;
                this.f75223h = 1;
                return;
            }
        }
        j0Var.W(iG);
    }

    private void f(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), this.f75228m - this.f75224i);
        this.f75221f.b(j0Var, iMin);
        int i11 = this.f75224i + iMin;
        this.f75224i = i11;
        if (i11 < this.f75228m) {
            return;
        }
        androidx.media3.common.util.a.g(this.f75229n != C.TIME_UNSET);
        this.f75221f.d(this.f75229n, 1, this.f75228m, 0, null);
        this.f75229n += this.f75227l;
        this.f75224i = 0;
        this.f75223h = 0;
    }

    private void g(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), 4 - this.f75224i);
        j0Var.l(this.f75216a.e(), this.f75224i, iMin);
        int i11 = this.f75224i + iMin;
        this.f75224i = i11;
        if (i11 < 4) {
            return;
        }
        this.f75216a.W(0);
        if (!this.f75217b.a(this.f75216a.q())) {
            this.f75224i = 0;
            this.f75223h = 1;
            return;
        }
        l2.i0.a aVar = this.f75217b;
        this.f75228m = aVar.f68608c;
        if (!this.f75225j) {
            this.f75227l = (((long) aVar.f68612g) * 1000000) / ((long) aVar.f68609d);
            this.f75221f.c(new androidx.media3.common.r.b().f0(this.f75222g).U(this.f75220e).u0(this.f75217b.f68607b).k0(4096).R(this.f75217b.f68610e).v0(this.f75217b.f68609d).j0(this.f75218c).s0(this.f75219d).N());
            this.f75225j = true;
        }
        this.f75216a.W(0);
        this.f75221f.b(this.f75216a, 4);
        this.f75223h = 2;
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f75221f);
        while (j0Var.a() > 0) {
            int i11 = this.f75223h;
            if (i11 == 0) {
                e(j0Var);
            } else if (i11 == 1) {
                g(j0Var);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException();
                }
                f(j0Var);
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75229n = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f75222g = dVar.b();
        this.f75221f = tVar.track(dVar.c(), 1);
    }

    @Override // s3.m
    public void seek() {
        this.f75223h = 0;
        this.f75224i = 0;
        this.f75226k = false;
        this.f75229n = C.TIME_UNSET;
    }
}
