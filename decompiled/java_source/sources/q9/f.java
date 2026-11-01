package q9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.c0 f73227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f73229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f73230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g9.e0 f73231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f73232f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73233g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f73234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f73235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f73236j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private o1 f73237k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f73238l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f73239m;

    public f() {
        this(null);
    }

    public f(String str) {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(new byte[16]);
        this.f73227a = c0Var;
        this.f73228b = new com.google.android.exoplayer2.util.d0(c0Var.f27560a);
        this.f73232f = 0;
        this.f73233g = 0;
        this.f73234h = false;
        this.f73235i = false;
        this.f73239m = C.TIME_UNSET;
        this.f73229c = str;
    }

    private boolean d(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i11) {
        int iMin = Math.min(d0Var.a(), i11 - this.f73233g);
        d0Var.j(bArr, this.f73233g, iMin);
        int i12 = this.f73233g + iMin;
        this.f73233g = i12;
        return i12 == i11;
    }

    private void e() {
        this.f73227a.p(0);
        com.google.android.exoplayer2.audio.c.b bVarD = com.google.android.exoplayer2.audio.c.d(this.f73227a);
        o1 o1Var = this.f73237k;
        if (o1Var == null || bVarD.f24631c != o1Var.f25509y || bVarD.f24630b != o1Var.f25510z || !"audio/ac4".equals(o1Var.f25496l)) {
            o1 o1VarE = new o1.b().S(this.f73230d).e0("audio/ac4").H(bVarD.f24631c).f0(bVarD.f24630b).V(this.f73229c).E();
            this.f73237k = o1VarE;
            this.f73231e.e(o1VarE);
        }
        this.f73238l = bVarD.f24632d;
        this.f73236j = (((long) bVarD.f24633e) * 1000000) / ((long) this.f73237k.f25510z);
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var) {
        while (true) {
            if (d0Var.a() <= 0) {
                return false;
            }
            if (this.f73234h) {
                int iD = d0Var.D();
                this.f73234h = iD == 172;
                if (iD == 64 || iD == 65) {
                    this.f73235i = iD == 65;
                    return true;
                }
            } else {
                this.f73234h = d0Var.D() == 172;
            }
        }
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f73231e);
        while (d0Var.a() > 0) {
            int i11 = this.f73232f;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        int iMin = Math.min(d0Var.a(), this.f73238l - this.f73233g);
                        this.f73231e.c(d0Var, iMin);
                        int i12 = this.f73233g + iMin;
                        this.f73233g = i12;
                        int i13 = this.f73238l;
                        if (i12 == i13) {
                            long j11 = this.f73239m;
                            if (j11 != C.TIME_UNSET) {
                                this.f73231e.d(j11, 1, i13, 0, null);
                                this.f73239m += this.f73236j;
                            }
                            this.f73232f = 0;
                        }
                    }
                } else if (d(d0Var, this.f73228b.d(), 16)) {
                    e();
                    this.f73228b.P(0);
                    this.f73231e.c(this.f73228b, 16);
                    this.f73232f = 2;
                }
            } else if (f(d0Var)) {
                this.f73232f = 1;
                this.f73228b.d()[0] = -84;
                this.f73228b.d()[1] = (byte) (this.f73235i ? 65 : 64);
                this.f73233g = 2;
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73239m = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73230d = dVar.b();
        this.f73231e = nVar.track(dVar.c(), 1);
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73232f = 0;
        this.f73233g = 0;
        this.f73234h = false;
        this.f73235i = false;
        this.f73239m = C.TIME_UNSET;
    }
}
