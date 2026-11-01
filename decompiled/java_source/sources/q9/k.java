package q9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public final class k implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f73326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f73327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g9.e0 f73328d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f73330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73331g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f73332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o1 f73333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73334j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73325a = new com.google.android.exoplayer2.util.d0(new byte[18]);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73329e = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f73335k = C.TIME_UNSET;

    public k(String str) {
        this.f73326b = str;
    }

    private boolean d(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i11) {
        int iMin = Math.min(d0Var.a(), i11 - this.f73330f);
        d0Var.j(bArr, this.f73330f, iMin);
        int i12 = this.f73330f + iMin;
        this.f73330f = i12;
        return i12 == i11;
    }

    private void e() {
        byte[] bArrD = this.f73325a.d();
        if (this.f73333i == null) {
            o1 o1VarG = com.google.android.exoplayer2.audio.y.g(bArrD, this.f73327c, this.f73326b, null);
            this.f73333i = o1VarG;
            this.f73328d.e(o1VarG);
        }
        this.f73334j = com.google.android.exoplayer2.audio.y.a(bArrD);
        this.f73332h = (int) ((((long) com.google.android.exoplayer2.audio.y.f(bArrD)) * 1000000) / ((long) this.f73333i.f25510z));
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var) {
        while (d0Var.a() > 0) {
            int i11 = this.f73331g << 8;
            this.f73331g = i11;
            int iD = i11 | d0Var.D();
            this.f73331g = iD;
            if (com.google.android.exoplayer2.audio.y.d(iD)) {
                byte[] bArrD = this.f73325a.d();
                int i12 = this.f73331g;
                bArrD[0] = (byte) ((i12 >> 24) & 255);
                bArrD[1] = (byte) ((i12 >> 16) & 255);
                bArrD[2] = (byte) ((i12 >> 8) & 255);
                bArrD[3] = (byte) (i12 & 255);
                this.f73330f = 4;
                this.f73331g = 0;
                return true;
            }
        }
        return false;
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f73328d);
        while (d0Var.a() > 0) {
            int i11 = this.f73329e;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(d0Var.a(), this.f73334j - this.f73330f);
                    this.f73328d.c(d0Var, iMin);
                    int i12 = this.f73330f + iMin;
                    this.f73330f = i12;
                    int i13 = this.f73334j;
                    if (i12 == i13) {
                        long j11 = this.f73335k;
                        if (j11 != C.TIME_UNSET) {
                            this.f73328d.d(j11, 1, i13, 0, null);
                            this.f73335k += this.f73332h;
                        }
                        this.f73329e = 0;
                    }
                } else if (d(d0Var, this.f73325a.d(), 18)) {
                    e();
                    this.f73325a.P(0);
                    this.f73328d.c(this.f73325a, 18);
                    this.f73329e = 2;
                }
            } else if (f(d0Var)) {
                this.f73329e = 1;
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73335k = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73327c = dVar.b();
        this.f73328d = nVar.track(dVar.c(), 1);
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73329e = 0;
        this.f73330f = 0;
        this.f73331g = 0;
        this.f73335k = C.TIME_UNSET;
    }
}
