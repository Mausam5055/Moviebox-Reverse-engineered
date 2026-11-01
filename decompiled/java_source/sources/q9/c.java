package q9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.c0 f73199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f73201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f73202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g9.e0 f73203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f73204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73205g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f73206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f73207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private o1 f73208j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f73209k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f73210l;

    public c() {
        this(null);
    }

    public c(String str) {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(new byte[128]);
        this.f73199a = c0Var;
        this.f73200b = new com.google.android.exoplayer2.util.d0(c0Var.f27560a);
        this.f73204f = 0;
        this.f73210l = C.TIME_UNSET;
        this.f73201c = str;
    }

    private boolean d(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i11) {
        int iMin = Math.min(d0Var.a(), i11 - this.f73205g);
        d0Var.j(bArr, this.f73205g, iMin);
        int i12 = this.f73205g + iMin;
        this.f73205g = i12;
        return i12 == i11;
    }

    private void e() {
        this.f73199a.p(0);
        com.google.android.exoplayer2.audio.b.C0364b c0364bE = com.google.android.exoplayer2.audio.b.e(this.f73199a);
        o1 o1Var = this.f73208j;
        if (o1Var == null || c0364bE.f24611d != o1Var.f25509y || c0364bE.f24610c != o1Var.f25510z || !p0.c(c0364bE.f24608a, o1Var.f25496l)) {
            o1 o1VarE = new o1.b().S(this.f73202d).e0(c0364bE.f24608a).H(c0364bE.f24611d).f0(c0364bE.f24610c).V(this.f73201c).E();
            this.f73208j = o1VarE;
            this.f73203e.e(o1VarE);
        }
        this.f73209k = c0364bE.f24612e;
        this.f73207i = (((long) c0364bE.f24613f) * 1000000) / ((long) this.f73208j.f25510z);
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var) {
        while (true) {
            if (d0Var.a() <= 0) {
                return false;
            }
            if (this.f73206h) {
                int iD = d0Var.D();
                if (iD == 119) {
                    this.f73206h = false;
                    return true;
                }
                this.f73206h = iD == 11;
            } else {
                this.f73206h = d0Var.D() == 11;
            }
        }
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f73203e);
        while (d0Var.a() > 0) {
            int i11 = this.f73204f;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        int iMin = Math.min(d0Var.a(), this.f73209k - this.f73205g);
                        this.f73203e.c(d0Var, iMin);
                        int i12 = this.f73205g + iMin;
                        this.f73205g = i12;
                        int i13 = this.f73209k;
                        if (i12 == i13) {
                            long j11 = this.f73210l;
                            if (j11 != C.TIME_UNSET) {
                                this.f73203e.d(j11, 1, i13, 0, null);
                                this.f73210l += this.f73207i;
                            }
                            this.f73204f = 0;
                        }
                    }
                } else if (d(d0Var, this.f73200b.d(), 128)) {
                    e();
                    this.f73200b.P(0);
                    this.f73203e.c(this.f73200b, 128);
                    this.f73204f = 2;
                }
            } else if (f(d0Var)) {
                this.f73204f = 1;
                this.f73200b.d()[0] = 11;
                this.f73200b.d()[1] = 119;
                this.f73205g = 2;
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73210l = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73202d = dVar.b();
        this.f73203e = nVar.track(dVar.c(), 1);
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73204f = 0;
        this.f73205g = 0;
        this.f73206h = false;
        this.f73210l = C.TIME_UNSET;
    }
}
