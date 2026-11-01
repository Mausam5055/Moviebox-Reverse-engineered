package q9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class i implements m {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final byte[] f73289v = {73, 68, 51};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f73290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.c0 f73291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f73293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f73294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g9.e0 f73295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g9.e0 f73296g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f73297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f73298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73299j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f73300k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f73301l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f73302m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f73303n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f73304o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f73305p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f73306q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f73307r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f73308s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private g9.e0 f73309t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f73310u;

    public i(boolean z10) {
        this(z10, null);
    }

    public i(boolean z10, String str) {
        this.f73291b = new com.google.android.exoplayer2.util.c0(new byte[7]);
        this.f73292c = new com.google.android.exoplayer2.util.d0(Arrays.copyOf(f73289v, 10));
        q();
        this.f73302m = -1;
        this.f73303n = -1;
        this.f73306q = C.TIME_UNSET;
        this.f73308s = C.TIME_UNSET;
        this.f73290a = z10;
        this.f73293d = str;
    }

    private void d() {
        com.google.android.exoplayer2.util.a.e(this.f73295f);
        p0.j(this.f73309t);
        p0.j(this.f73296g);
    }

    private void e(com.google.android.exoplayer2.util.d0 d0Var) {
        if (d0Var.a() == 0) {
            return;
        }
        this.f73291b.f27560a[0] = d0Var.d()[d0Var.e()];
        this.f73291b.p(2);
        int iH = this.f73291b.h(4);
        int i11 = this.f73303n;
        if (i11 != -1 && iH != i11) {
            o();
            return;
        }
        if (!this.f73301l) {
            this.f73301l = true;
            this.f73302m = this.f73304o;
            this.f73303n = iH;
        }
        r();
    }

    private boolean f(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        d0Var.P(i11 + 1);
        if (!u(d0Var, this.f73291b.f27560a, 1)) {
            return false;
        }
        this.f73291b.p(4);
        int iH = this.f73291b.h(1);
        int i12 = this.f73302m;
        if (i12 != -1 && iH != i12) {
            return false;
        }
        if (this.f73303n != -1) {
            if (!u(d0Var, this.f73291b.f27560a, 1)) {
                return true;
            }
            this.f73291b.p(2);
            if (this.f73291b.h(4) != this.f73303n) {
                return false;
            }
            d0Var.P(i11 + 2);
        }
        if (!u(d0Var, this.f73291b.f27560a, 4)) {
            return true;
        }
        this.f73291b.p(14);
        int iH2 = this.f73291b.h(13);
        if (iH2 < 7) {
            return false;
        }
        byte[] bArrD = d0Var.d();
        int iF = d0Var.f();
        int i13 = i11 + iH2;
        if (i13 >= iF) {
            return true;
        }
        byte b11 = bArrD[i13];
        if (b11 == -1) {
            int i14 = i13 + 1;
            if (i14 == iF) {
                return true;
            }
            return j((byte) -1, bArrD[i14]) && ((bArrD[i14] & 8) >> 3) == iH;
        }
        if (b11 != 73) {
            return false;
        }
        int i15 = i13 + 1;
        if (i15 == iF) {
            return true;
        }
        if (bArrD[i15] != 68) {
            return false;
        }
        int i16 = i13 + 2;
        return i16 == iF || bArrD[i16] == 51;
    }

    private boolean g(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i11) {
        int iMin = Math.min(d0Var.a(), i11 - this.f73298i);
        d0Var.j(bArr, this.f73298i, iMin);
        int i12 = this.f73298i + iMin;
        this.f73298i = i12;
        return i12 == i11;
    }

    private void h(com.google.android.exoplayer2.util.d0 d0Var) {
        byte[] bArrD = d0Var.d();
        int iE = d0Var.e();
        int iF = d0Var.f();
        while (iE < iF) {
            int i11 = iE + 1;
            byte b11 = bArrD[iE];
            int i12 = b11 & 255;
            if (this.f73299j == 512 && j((byte) -1, (byte) i12) && (this.f73301l || f(d0Var, iE - 1))) {
                this.f73304o = (b11 & 8) >> 3;
                this.f73300k = (b11 & 1) == 0;
                if (this.f73301l) {
                    r();
                } else {
                    p();
                }
                d0Var.P(i11);
                return;
            }
            int i13 = this.f73299j;
            int i14 = i12 | i13;
            if (i14 == 329) {
                this.f73299j = 768;
            } else if (i14 == 511) {
                this.f73299j = 512;
            } else if (i14 == 836) {
                this.f73299j = 1024;
            } else if (i14 == 1075) {
                s();
                d0Var.P(i11);
                return;
            } else if (i13 != 256) {
                this.f73299j = 256;
            }
            iE = i11;
        }
        d0Var.P(iE);
    }

    private boolean j(byte b11, byte b12) {
        return k(((b11 & 255) << 8) | (b12 & 255));
    }

    public static boolean k(int i11) {
        return (i11 & 65526) == 65520;
    }

    private void l() {
        this.f73291b.p(0);
        if (this.f73305p) {
            this.f73291b.r(10);
        } else {
            int i11 = 2;
            int iH = this.f73291b.h(2) + 1;
            if (iH != 2) {
                com.google.android.exoplayer2.util.s.i("AdtsReader", "Detected audio object type: " + iH + ", but assuming AAC LC.");
            } else {
                i11 = iH;
            }
            this.f73291b.r(5);
            byte[] bArrB = com.google.android.exoplayer2.audio.a.b(i11, this.f73303n, this.f73291b.h(3));
            com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(bArrB);
            o1 o1VarE = new o1.b().S(this.f73294e).e0(MimeTypes.AUDIO_AAC).I(bVarF.f24600c).H(bVarF.f24599b).f0(bVarF.f24598a).T(Collections.singletonList(bArrB)).V(this.f73293d).E();
            this.f73306q = 1024000000 / ((long) o1VarE.f25510z);
            this.f73295f.e(o1VarE);
            this.f73305p = true;
        }
        this.f73291b.r(4);
        int iH2 = this.f73291b.h(13);
        int i12 = iH2 - 7;
        if (this.f73300k) {
            i12 = iH2 - 9;
        }
        t(this.f73295f, this.f73306q, 0, i12);
    }

    private void m() {
        this.f73296g.c(this.f73292c, 10);
        this.f73292c.P(6);
        t(this.f73296g, 0L, 10, this.f73292c.C() + 10);
    }

    private void n(com.google.android.exoplayer2.util.d0 d0Var) {
        int iMin = Math.min(d0Var.a(), this.f73307r - this.f73298i);
        this.f73309t.c(d0Var, iMin);
        int i11 = this.f73298i + iMin;
        this.f73298i = i11;
        int i12 = this.f73307r;
        if (i11 == i12) {
            long j11 = this.f73308s;
            if (j11 != C.TIME_UNSET) {
                this.f73309t.d(j11, 1, i12, 0, null);
                this.f73308s += this.f73310u;
            }
            q();
        }
    }

    private void o() {
        this.f73301l = false;
        q();
    }

    private void p() {
        this.f73297h = 1;
        this.f73298i = 0;
    }

    private void q() {
        this.f73297h = 0;
        this.f73298i = 0;
        this.f73299j = 256;
    }

    private void r() {
        this.f73297h = 3;
        this.f73298i = 0;
    }

    private void s() {
        this.f73297h = 2;
        this.f73298i = f73289v.length;
        this.f73307r = 0;
        this.f73292c.P(0);
    }

    private void t(g9.e0 e0Var, long j11, int i11, int i12) {
        this.f73297h = 4;
        this.f73298i = i11;
        this.f73309t = e0Var;
        this.f73310u = j11;
        this.f73307r = i12;
    }

    private boolean u(com.google.android.exoplayer2.util.d0 d0Var, byte[] bArr, int i11) {
        if (d0Var.a() < i11) {
            return false;
        }
        d0Var.j(bArr, 0, i11);
        return true;
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        d();
        while (d0Var.a() > 0) {
            int i11 = this.f73297h;
            if (i11 == 0) {
                h(d0Var);
            } else if (i11 == 1) {
                e(d0Var);
            } else if (i11 != 2) {
                if (i11 == 3) {
                    if (g(d0Var, this.f73291b.f27560a, this.f73300k ? 7 : 5)) {
                        l();
                    }
                } else {
                    if (i11 != 4) {
                        throw new IllegalStateException();
                    }
                    n(d0Var);
                }
            } else if (g(d0Var, this.f73292c.d(), 10)) {
                m();
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if (j11 != C.TIME_UNSET) {
            this.f73308s = j11;
        }
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        this.f73294e = dVar.b();
        g9.e0 e0VarTrack = nVar.track(dVar.c(), 1);
        this.f73295f = e0VarTrack;
        this.f73309t = e0VarTrack;
        if (!this.f73290a) {
            this.f73296g = new g9.k();
            return;
        }
        dVar.a();
        g9.e0 e0VarTrack2 = nVar.track(dVar.c(), 5);
        this.f73296g = e0VarTrack2;
        e0VarTrack2.e(new o1.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
    }

    public long i() {
        return this.f73306q;
    }

    @Override // q9.m
    public void packetFinished() {
    }

    @Override // q9.m
    public void seek() {
        this.f73308s = C.TIME_UNSET;
        o();
    }
}
