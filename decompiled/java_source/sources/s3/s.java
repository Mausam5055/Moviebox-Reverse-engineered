package s3;

import androidx.media3.common.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class s implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f75194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f75195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.common.util.i0 f75197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s0 f75198f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f75199g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.media3.common.r f75200h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f75201i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f75202j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f75203k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f75204l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f75205m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f75206n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f75207o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f75208p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f75209q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f75210r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f75211s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f75212t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f75213u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f75214v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f75215w;

    public s(String str, int i11, String str2) {
        this.f75193a = str;
        this.f75194b = i11;
        this.f75195c = str2;
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(1024);
        this.f75196d = j0Var;
        this.f75197e = new androidx.media3.common.util.i0(j0Var.e());
        this.f75205m = C.TIME_UNSET;
    }

    private static long e(androidx.media3.common.util.i0 i0Var) {
        return i0Var.h((i0Var.h(2) + 1) * 8);
    }

    private void f(androidx.media3.common.util.i0 i0Var) throws ParserException {
        if (!i0Var.g()) {
            this.f75206n = true;
            k(i0Var);
        } else if (!this.f75206n) {
            return;
        }
        if (this.f75207o != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (this.f75208p != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        j(i0Var, i(i0Var));
        if (this.f75210r) {
            i0Var.r((int) this.f75211s);
        }
    }

    private int g(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iB = i0Var.b();
        l2.a.b bVarD = l2.a.d(i0Var, true);
        this.f75215w = bVarD.f68485c;
        this.f75212t = bVarD.f68483a;
        this.f75214v = bVarD.f68484b;
        return iB - i0Var.b();
    }

    private void h(androidx.media3.common.util.i0 i0Var) {
        int iH = i0Var.h(3);
        this.f75209q = iH;
        if (iH == 0) {
            i0Var.r(8);
            return;
        }
        if (iH == 1) {
            i0Var.r(9);
            return;
        }
        if (iH == 3 || iH == 4 || iH == 5) {
            i0Var.r(6);
        } else {
            if (iH != 6 && iH != 7) {
                throw new IllegalStateException();
            }
            i0Var.r(1);
        }
    }

    private int i(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iH;
        if (this.f75209q != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        int i11 = 0;
        do {
            iH = i0Var.h(8);
            i11 += iH;
        } while (iH == 255);
        return i11;
    }

    private void j(androidx.media3.common.util.i0 i0Var, int i11) {
        int iE = i0Var.e();
        if ((iE & 7) == 0) {
            this.f75196d.W(iE >> 3);
        } else {
            i0Var.i(this.f75196d.e(), 0, i11 * 8);
            this.f75196d.W(0);
        }
        this.f75198f.b(this.f75196d, i11);
        androidx.media3.common.util.a.g(this.f75205m != C.TIME_UNSET);
        this.f75198f.d(this.f75205m, 1, i11, 0, null);
        this.f75205m += this.f75213u;
    }

    private void k(androidx.media3.common.util.i0 i0Var) throws ParserException {
        boolean zG;
        int iH = i0Var.h(1);
        int iH2 = iH == 1 ? i0Var.h(1) : 0;
        this.f75207o = iH2;
        if (iH2 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 1) {
            e(i0Var);
        }
        if (!i0Var.g()) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        this.f75208p = i0Var.h(6);
        int iH3 = i0Var.h(4);
        int iH4 = i0Var.h(3);
        if (iH3 != 0 || iH4 != 0) {
            throw ParserException.createForMalformedContainer(null, null);
        }
        if (iH == 0) {
            int iE = i0Var.e();
            int iG = g(i0Var);
            i0Var.p(iE);
            byte[] bArr = new byte[(iG + 7) / 8];
            i0Var.i(bArr, 0, iG);
            androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(this.f75199g).U(this.f75195c).u0(MimeTypes.AUDIO_AAC).S(this.f75215w).R(this.f75214v).v0(this.f75212t).g0(Collections.singletonList(bArr)).j0(this.f75193a).s0(this.f75194b).N();
            if (!rVarN.equals(this.f75200h)) {
                this.f75200h = rVarN;
                this.f75213u = 1024000000 / ((long) rVarN.F);
                this.f75198f.c(rVarN);
            }
        } else {
            i0Var.r(((int) e(i0Var)) - g(i0Var));
        }
        h(i0Var);
        boolean zG2 = i0Var.g();
        this.f75210r = zG2;
        this.f75211s = 0L;
        if (zG2) {
            if (iH == 1) {
                this.f75211s = e(i0Var);
            } else {
                do {
                    zG = i0Var.g();
                    this.f75211s = (this.f75211s << 8) + ((long) i0Var.h(8));
                } while (zG);
            }
        }
        if (i0Var.g()) {
            i0Var.r(8);
        }
    }

    private void l(int i11) {
        this.f75196d.S(i11);
        this.f75197e.n(this.f75196d.e());
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f75198f);
        while (j0Var.a() > 0) {
            int i11 = this.f75201i;
            if (i11 != 0) {
                if (i11 == 1) {
                    int iH = j0Var.H();
                    if ((iH & 224) == 224) {
                        this.f75204l = iH;
                        this.f75201i = 2;
                    } else if (iH != 86) {
                        this.f75201i = 0;
                    }
                } else if (i11 == 2) {
                    int iH2 = ((this.f75204l & (-225)) << 8) | j0Var.H();
                    this.f75203k = iH2;
                    if (iH2 > this.f75196d.e().length) {
                        l(this.f75203k);
                    }
                    this.f75202j = 0;
                    this.f75201i = 3;
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(j0Var.a(), this.f75203k - this.f75202j);
                    j0Var.l(this.f75197e.f10388a, this.f75202j, iMin);
                    int i12 = this.f75202j + iMin;
                    this.f75202j = i12;
                    if (i12 == this.f75203k) {
                        this.f75197e.p(0);
                        f(this.f75197e);
                        this.f75201i = 0;
                    }
                }
            } else if (j0Var.H() == 86) {
                this.f75201i = 1;
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75205m = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f75198f = tVar.track(dVar.c(), 1);
        this.f75199g = dVar.b();
    }

    @Override // s3.m
    public void seek() {
        this.f75201i = 0;
        this.f75205m = C.TIME_UNSET;
        this.f75206n = false;
    }
}
