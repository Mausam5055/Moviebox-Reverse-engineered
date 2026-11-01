package q9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class s implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f73474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.c0 f73476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g9.e0 f73477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f73478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o1 f73479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73480g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f73481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f73482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f73484k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f73485l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f73486m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f73487n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f73488o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f73489p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f73490q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f73491r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f73492s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f73493t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f73494u;

    public s(String str) {
        this.f73474a = str;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(1024);
        this.f73475b = d0Var;
        this.f73476c = new com.google.android.exoplayer2.util.c0(d0Var.d());
        this.f73484k = C.TIME_UNSET;
    }

    private static long d(com.google.android.exoplayer2.util.c0 c0Var) {
        return c0Var.h((c0Var.h(2) + 1) * 8);
    }

    private void e(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        if (!c0Var.g()) {
            this.f73485l = true;
            j(c0Var);
        } else if (!this.f73485l) {
            return;
        }
        if (this.f73486m != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (this.f73487n != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        i(c0Var, h(c0Var));
        if (this.f73489p) {
            c0Var.r((int) this.f73490q);
        }
    }

    private int f(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        int iB = c0Var.b();
        com.google.android.exoplayer2.audio.a.b bVarE = com.google.android.exoplayer2.audio.a.e(c0Var, true);
        this.f73494u = bVarE.f24600c;
        this.f73491r = bVarE.f24598a;
        this.f73493t = bVarE.f24599b;
        return iB - c0Var.b();
    }

    private void g(com.google.android.exoplayer2.util.c0 c0Var) {
        int iH = c0Var.h(3);
        this.f73488o = iH;
        if (iH == 0) {
            c0Var.r(8);
            return;
        }
        if (iH == 1) {
            c0Var.r(9);
            return;
        }
        if (iH == 3 || iH == 4 || iH == 5) {
            c0Var.r(6);
        } else {
            if (iH != 6 && iH != 7) {
                throw new IllegalStateException();
            }
            c0Var.r(1);
        }
    }

    private int h(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        int iH;
        if (this.f73488o != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        int i11 = 0;
        do {
            iH = c0Var.h(8);
            i11 += iH;
        } while (iH == 255);
        return i11;
    }

    private void i(com.google.android.exoplayer2.util.c0 c0Var, int i11) {
        int iE = c0Var.e();
        if ((iE & 7) == 0) {
            this.f73475b.P(iE >> 3);
        } else {
            c0Var.i(this.f73475b.d(), 0, i11 * 8);
            this.f73475b.P(0);
        }
        this.f73477d.c(this.f73475b, i11);
        long j11 = this.f73484k;
        if (j11 != C.TIME_UNSET) {
            this.f73477d.d(j11, 1, i11, 0, null);
            this.f73484k += this.f73492s;
        }
    }

    private void j(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        boolean zG;
        int iH = c0Var.h(1);
        int iH2 = iH == 1 ? c0Var.h(1) : 0;
        this.f73486m = iH2;
        if (iH2 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 1) {
            d(c0Var);
        }
        if (!c0Var.g()) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        this.f73487n = c0Var.h(6);
        int iH3 = c0Var.h(4);
        int iH4 = c0Var.h(3);
        if (iH3 != 0 || iH4 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 0) {
            int iE = c0Var.e();
            int iF = f(c0Var);
            c0Var.p(iE);
            byte[] bArr = new byte[(iF + 7) / 8];
            c0Var.i(bArr, 0, iF);
            o1 o1VarE = new o1.b().S(this.f73478e).e0(MimeTypes.AUDIO_AAC).I(this.f73494u).H(this.f73493t).f0(this.f73491r).T(Collections.singletonList(bArr)).V(this.f73474a).E();
            if (!o1VarE.equals(this.f73479f)) {
                this.f73479f = o1VarE;
                this.f73492s = 1024000000 / ((long) o1VarE.f25510z);
                this.f73477d.e(o1VarE);
            }
        } else {
            c0Var.r(((int) d(c0Var)) - f(c0Var));
        }
        g(c0Var);
        boolean zG2 = c0Var.g();
        this.f73489p = zG2;
        this.f73490q = 0L;
        if (zG2) {
            if (iH == 1) {
                this.f73490q = d(c0Var);
            } else {
                do {
                    zG = c0Var.g();
                    this.f73490q = (this.f73490q << 8) + ((long) c0Var.h(8));
                } while (zG);
            }
        }
        if (c0Var.g()) {
            c0Var.r(8);
        }
    }

    private void k(int i11) {
        this.f73475b.L(i11);
        this.f73476c.n(this.f73475b.d());
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f73477d);
        while (d0Var.a() > 0) {
            int i11 = this.f73480g;
            if (i11 != 0) {
                if (i11 == 1) {
                    int iD = d0Var.D();
                    if ((iD & 224) == 224) {
                        this.f73483j = iD;
                        this.f73480g = 2;
                    } else if (iD != 86) {
                        this.f73480g = 0;
                    }
                } else if (i11 == 2) {
                    int iD2 = ((this.f73483j & (-225)) << 8) | d0Var.D();
                    this.f73482i = iD2;
                    if (iD2 > this.f73475b.d().length) {
                        k(this.f73482i);
                    }
                    this.f73481h = 0;
                    this.f73480g = 3;
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(d0Var.a(), this.f73482i - this.f73481h);
                    d0Var.j(this.f73476c.f27560a, this.f73481h, iMin);
                    int i12 = this.f73481h + iMin;
                    this.f73481h = i12;
                    if (i12 == this.f73482i) {
                        this.f73476c.p(0);
                        e(this.f73476c);
                        this.f73480g = 0;
                    }
                }
            } else if (d0Var.D() == 86) {
                this.f73480g = 1;
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73484k = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73477d = nVar.track(dVar.c(), 1);
        this.f73478e = dVar.b();
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73480g = 0;
        this.f73484k = C.TIME_UNSET;
        this.f73485l = false;
    }
}
