package q9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class t implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.b0.a f73496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f73497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g9.e0 f73498d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f73499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f73500f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73501g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f73502h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f73503i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f73504j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f73505k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f73506l;

    public t() {
        this(null);
    }

    public t(String str) {
        this.f73500f = 0;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(4);
        this.f73495a = d0Var;
        d0Var.d()[0] = -1;
        this.f73496b = new com.google.android.exoplayer2.audio.b0.a();
        this.f73506l = C.TIME_UNSET;
        this.f73497c = str;
    }

    private void d(com.google.android.exoplayer2.util.d0 d0Var) {
        byte[] bArrD = d0Var.d();
        int iF = d0Var.f();
        for (int iE = d0Var.e(); iE < iF; iE++) {
            byte b11 = bArrD[iE];
            boolean z10 = (b11 & 255) == 255;
            boolean z11 = this.f73503i && (b11 & 224) == 224;
            this.f73503i = z10;
            if (z11) {
                d0Var.P(iE + 1);
                this.f73503i = false;
                this.f73495a.d()[1] = bArrD[iE];
                this.f73501g = 2;
                this.f73500f = 1;
                return;
            }
        }
        d0Var.P(iF);
    }

    private void e(com.google.android.exoplayer2.util.d0 d0Var) {
        int iMin = Math.min(d0Var.a(), this.f73505k - this.f73501g);
        this.f73498d.c(d0Var, iMin);
        int i11 = this.f73501g + iMin;
        this.f73501g = i11;
        int i12 = this.f73505k;
        if (i11 < i12) {
            return;
        }
        long j11 = this.f73506l;
        if (j11 != C.TIME_UNSET) {
            this.f73498d.d(j11, 1, i12, 0, null);
            this.f73506l += this.f73504j;
        }
        this.f73501g = 0;
        this.f73500f = 0;
    }

    private void f(com.google.android.exoplayer2.util.d0 d0Var) {
        int iMin = Math.min(d0Var.a(), 4 - this.f73501g);
        d0Var.j(this.f73495a.d(), this.f73501g, iMin);
        int i11 = this.f73501g + iMin;
        this.f73501g = i11;
        if (i11 < 4) {
            return;
        }
        this.f73495a.P(0);
        if (!this.f73496b.a(this.f73495a.n())) {
            this.f73501g = 0;
            this.f73500f = 1;
            return;
        }
        com.google.android.exoplayer2.audio.b0.a aVar = this.f73496b;
        this.f73505k = aVar.f24623c;
        if (!this.f73502h) {
            this.f73504j = (((long) aVar.f24627g) * 1000000) / ((long) aVar.f24624d);
            this.f73498d.e(new o1.b().S(this.f73499e).e0(this.f73496b.f24622b).W(4096).H(this.f73496b.f24625e).f0(this.f73496b.f24624d).V(this.f73497c).E());
            this.f73502h = true;
        }
        this.f73495a.P(0);
        this.f73498d.c(this.f73495a, 4);
        this.f73500f = 2;
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f73498d);
        while (d0Var.a() > 0) {
            int i11 = this.f73500f;
            if (i11 == 0) {
                d(d0Var);
            } else if (i11 == 1) {
                f(d0Var);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException();
                }
                e(d0Var);
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73506l = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73499e = dVar.b();
        this.f73498d = nVar.track(dVar.c(), 1);
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73500f = 0;
        this.f73501g = 0;
        this.f73503i = false;
        this.f73506l = C.TIME_UNSET;
    }
}
