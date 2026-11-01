package s3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements m {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final byte[] f74953x = {73, 68, 51};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f74954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.i0 f74955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f74957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f74958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f74959f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f74960g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private s0 f74961h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private s0 f74962i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f74963j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f74964k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f74965l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f74966m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f74967n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f74968o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f74969p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f74970q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f74971r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f74972s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f74973t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f74974u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private s0 f74975v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f74976w;

    public i(boolean z10, String str) {
        this(z10, null, 0, str);
    }

    public i(boolean z10, String str, int i11, String str2) {
        this.f74955b = new androidx.media3.common.util.i0(new byte[7]);
        this.f74956c = new androidx.media3.common.util.j0(Arrays.copyOf(f74953x, 10));
        this.f74968o = -1;
        this.f74969p = -1;
        this.f74972s = C.TIME_UNSET;
        this.f74974u = C.TIME_UNSET;
        this.f74954a = z10;
        this.f74957d = str;
        this.f74958e = i11;
        this.f74959f = str2;
        r();
    }

    private void e() {
        androidx.media3.common.util.a.e(this.f74961h);
        a1.i(this.f74975v);
        a1.i(this.f74962i);
    }

    private void f(androidx.media3.common.util.j0 j0Var) {
        if (j0Var.a() == 0) {
            return;
        }
        this.f74955b.f10388a[0] = j0Var.e()[j0Var.f()];
        this.f74955b.p(2);
        int iH = this.f74955b.h(4);
        int i11 = this.f74969p;
        if (i11 != -1 && iH != i11) {
            p();
            return;
        }
        if (!this.f74967n) {
            this.f74967n = true;
            this.f74968o = this.f74970q;
            this.f74969p = iH;
        }
        s();
    }

    private boolean g(androidx.media3.common.util.j0 j0Var, int i11) {
        j0Var.W(i11 + 1);
        if (!v(j0Var, this.f74955b.f10388a, 1)) {
            return false;
        }
        this.f74955b.p(4);
        int iH = this.f74955b.h(1);
        int i12 = this.f74968o;
        if (i12 != -1 && iH != i12) {
            return false;
        }
        if (this.f74969p != -1) {
            if (!v(j0Var, this.f74955b.f10388a, 1)) {
                return true;
            }
            this.f74955b.p(2);
            if (this.f74955b.h(4) != this.f74969p) {
                return false;
            }
            j0Var.W(i11 + 2);
        }
        if (!v(j0Var, this.f74955b.f10388a, 4)) {
            return true;
        }
        this.f74955b.p(14);
        int iH2 = this.f74955b.h(13);
        if (iH2 < 7) {
            return false;
        }
        byte[] bArrE = j0Var.e();
        int iG = j0Var.g();
        int i13 = i11 + iH2;
        if (i13 >= iG) {
            return true;
        }
        byte b11 = bArrE[i13];
        if (b11 == -1) {
            int i14 = i13 + 1;
            if (i14 == iG) {
                return true;
            }
            return k((byte) -1, bArrE[i14]) && ((bArrE[i14] & 8) >> 3) == iH;
        }
        if (b11 != 73) {
            return false;
        }
        int i15 = i13 + 1;
        if (i15 == iG) {
            return true;
        }
        if (bArrE[i15] != 68) {
            return false;
        }
        int i16 = i13 + 2;
        return i16 == iG || bArrE[i16] == 51;
    }

    private boolean h(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i11) {
        int iMin = Math.min(j0Var.a(), i11 - this.f74964k);
        j0Var.l(bArr, this.f74964k, iMin);
        int i12 = this.f74964k + iMin;
        this.f74964k = i12;
        return i12 == i11;
    }

    private void i(androidx.media3.common.util.j0 j0Var) {
        byte[] bArrE = j0Var.e();
        int iF = j0Var.f();
        int iG = j0Var.g();
        while (iF < iG) {
            int i11 = iF + 1;
            byte b11 = bArrE[iF];
            int i12 = b11 & 255;
            if (this.f74965l == 512 && k((byte) -1, (byte) i12) && (this.f74967n || g(j0Var, iF - 1))) {
                this.f74970q = (b11 & 8) >> 3;
                this.f74966m = (b11 & 1) == 0;
                if (this.f74967n) {
                    s();
                } else {
                    q();
                }
                j0Var.W(i11);
                return;
            }
            int i13 = this.f74965l;
            int i14 = i12 | i13;
            if (i14 == 329) {
                this.f74965l = 768;
            } else if (i14 == 511) {
                this.f74965l = 512;
            } else if (i14 == 836) {
                this.f74965l = 1024;
            } else if (i14 == 1075) {
                t();
                j0Var.W(i11);
                return;
            } else if (i13 != 256) {
                this.f74965l = 256;
            }
            iF = i11;
        }
        j0Var.W(iF);
    }

    private boolean k(byte b11, byte b12) {
        return l(((b11 & 255) << 8) | (b12 & 255));
    }

    public static boolean l(int i11) {
        return (i11 & 65526) == 65520;
    }

    private void m() {
        this.f74955b.p(0);
        if (this.f74971r) {
            this.f74955b.r(10);
        } else {
            int i11 = 2;
            int iH = this.f74955b.h(2) + 1;
            if (iH != 2) {
                androidx.media3.common.util.u.h("AdtsReader", "Detected audio object type: " + iH + ", but assuming AAC LC.");
            } else {
                i11 = iH;
            }
            this.f74955b.r(5);
            byte[] bArrA = l2.a.a(i11, this.f74969p, this.f74955b.h(3));
            l2.a.b bVarE = l2.a.e(bArrA);
            androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(this.f74960g).U(this.f74959f).u0(MimeTypes.AUDIO_AAC).S(bVarE.f68485c).R(bVarE.f68484b).v0(bVarE.f68483a).g0(Collections.singletonList(bArrA)).j0(this.f74957d).s0(this.f74958e).N();
            this.f74972s = 1024000000 / ((long) rVarN.F);
            this.f74961h.c(rVarN);
            this.f74971r = true;
        }
        this.f74955b.r(4);
        int iH2 = this.f74955b.h(13);
        int i12 = iH2 - 7;
        if (this.f74966m) {
            i12 = iH2 - 9;
        }
        u(this.f74961h, this.f74972s, 0, i12);
    }

    private void n() {
        this.f74962i.b(this.f74956c, 10);
        this.f74956c.W(6);
        u(this.f74962i, 0L, 10, this.f74956c.G() + 10);
    }

    private void o(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), this.f74973t - this.f74964k);
        this.f74975v.b(j0Var, iMin);
        int i11 = this.f74964k + iMin;
        this.f74964k = i11;
        if (i11 == this.f74973t) {
            androidx.media3.common.util.a.g(this.f74974u != C.TIME_UNSET);
            this.f74975v.d(this.f74974u, 1, this.f74973t, 0, null);
            this.f74974u += this.f74976w;
            r();
        }
    }

    private void p() {
        this.f74967n = false;
        r();
    }

    private void q() {
        this.f74963j = 1;
        this.f74964k = 0;
    }

    private void r() {
        this.f74963j = 0;
        this.f74964k = 0;
        this.f74965l = 256;
    }

    private void s() {
        this.f74963j = 3;
        this.f74964k = 0;
    }

    private void t() {
        this.f74963j = 2;
        this.f74964k = f74953x.length;
        this.f74973t = 0;
        this.f74956c.W(0);
    }

    private void u(s0 s0Var, long j11, int i11, int i12) {
        this.f74963j = 4;
        this.f74964k = i11;
        this.f74975v = s0Var;
        this.f74976w = j11;
        this.f74973t = i12;
    }

    private boolean v(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i11) {
        if (j0Var.a() < i11) {
            return false;
        }
        j0Var.l(bArr, 0, i11);
        return true;
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        e();
        while (j0Var.a() > 0) {
            int i11 = this.f74963j;
            if (i11 == 0) {
                i(j0Var);
            } else if (i11 == 1) {
                f(j0Var);
            } else if (i11 != 2) {
                if (i11 == 3) {
                    if (h(j0Var, this.f74955b.f10388a, this.f74966m ? 7 : 5)) {
                        m();
                    }
                } else {
                    if (i11 != 4) {
                        throw new IllegalStateException();
                    }
                    o(j0Var);
                }
            } else if (h(j0Var, this.f74956c.e(), 10)) {
                n();
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f74974u = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f74960g = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 1);
        this.f74961h = s0VarTrack;
        this.f74975v = s0VarTrack;
        if (!this.f74954a) {
            this.f74962i = new l2.n();
            return;
        }
        dVar.a();
        s0 s0VarTrack2 = tVar.track(dVar.c(), 5);
        this.f74962i = s0VarTrack2;
        s0VarTrack2.c(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f74959f).u0(MimeTypes.APPLICATION_ID3).N());
    }

    public long j() {
        return this.f74972s;
    }

    @Override // s3.m
    public void seek() {
        this.f74974u = C.TIME_UNSET;
        p();
    }
}
