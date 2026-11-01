package s3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75230a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f75235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s0 f75236g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f75239j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f75241l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f75242m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f75244o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f75245p;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f75249t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f75251v;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75234e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75231b = new androidx.media3.common.util.j0(new byte[15], 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.i0 f75232c = new androidx.media3.common.util.i0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75233d = new androidx.media3.common.util.j0();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private v.b f75246q = new v.b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f75247r = -2147483647;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f75248s = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f75250u = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f75240k = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f75243n = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f75237h = -9.223372036854776E18d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private double f75238i = -9.223372036854776E18d;

    public u(String str) {
        this.f75230a = str;
    }

    private void e(androidx.media3.common.util.j0 j0Var, androidx.media3.common.util.j0 j0Var2, boolean z10) {
        int iF = j0Var.f();
        int iMin = Math.min(j0Var.a(), j0Var2.a());
        j0Var.l(j0Var2.e(), j0Var2.f(), iMin);
        j0Var2.X(iMin);
        if (z10) {
            j0Var.W(iF);
        }
    }

    private void f() {
        int i11;
        if (this.f75251v) {
            this.f75240k = false;
            i11 = 1;
        } else {
            i11 = 0;
        }
        double d11 = (((double) (this.f75248s - this.f75249t)) * 1000000.0d) / ((double) this.f75247r);
        long jRound = Math.round(this.f75237h);
        if (this.f75239j) {
            this.f75239j = false;
            this.f75237h = this.f75238i;
        } else {
            this.f75237h += d11;
        }
        this.f75236g.d(jRound, i11, this.f75245p, 0, null);
        this.f75251v = false;
        this.f75249t = 0;
        this.f75245p = 0;
    }

    private void g(androidx.media3.common.util.i0 i0Var) throws ParserException {
        v.c cVarH = v.h(i0Var);
        this.f75247r = cVarH.f75256b;
        this.f75248s = cVarH.f75257c;
        long j11 = this.f75250u;
        long j12 = this.f75246q.f75253b;
        if (j11 != j12) {
            this.f75250u = j12;
            String str = "mhm1";
            if (cVarH.f75255a != -1) {
                str = "mhm1" + String.format(".%02X", Integer.valueOf(cVarH.f75255a));
            }
            byte[] bArr = cVarH.f75258d;
            this.f75236g.c(new androidx.media3.common.r.b().f0(this.f75235f).U(this.f75230a).u0("audio/mhm1").v0(this.f75247r).S(str).g0((bArr == null || bArr.length <= 0) ? null : ImmutableList.of(a1.f10355f, bArr)).N());
        }
        this.f75251v = true;
    }

    private boolean h() throws ParserException {
        int iG = this.f75231b.g();
        this.f75232c.o(this.f75231b.e(), iG);
        boolean zG = v.g(this.f75232c, this.f75246q);
        if (zG) {
            this.f75244o = 0;
            this.f75245p += this.f75246q.f75254c + iG;
        }
        return zG;
    }

    private boolean i(int i11) {
        return i11 == 1 || i11 == 17;
    }

    private boolean j(androidx.media3.common.util.j0 j0Var) {
        int i11 = this.f75241l;
        if ((i11 & 2) == 0) {
            j0Var.W(j0Var.g());
            return false;
        }
        if ((i11 & 4) != 0) {
            return true;
        }
        while (j0Var.a() > 0) {
            int i12 = this.f75242m << 8;
            this.f75242m = i12;
            int iH = i12 | j0Var.H();
            this.f75242m = iH;
            if (v.e(iH)) {
                j0Var.W(j0Var.f() - 3);
                this.f75242m = 0;
                return true;
            }
        }
        return false;
    }

    private void k(androidx.media3.common.util.j0 j0Var) {
        int iMin = Math.min(j0Var.a(), this.f75246q.f75254c - this.f75244o);
        this.f75236g.b(j0Var, iMin);
        this.f75244o += iMin;
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f75236g);
        while (j0Var.a() > 0) {
            int i11 = this.f75234e;
            if (i11 != 0) {
                if (i11 == 1) {
                    e(j0Var, this.f75231b, false);
                    if (this.f75231b.a() != 0) {
                        this.f75243n = false;
                    } else if (h()) {
                        this.f75231b.W(0);
                        s0 s0Var = this.f75236g;
                        androidx.media3.common.util.j0 j0Var2 = this.f75231b;
                        s0Var.b(j0Var2, j0Var2.g());
                        this.f75231b.S(2);
                        this.f75233d.S(this.f75246q.f75254c);
                        this.f75243n = true;
                        this.f75234e = 2;
                    } else if (this.f75231b.g() < 15) {
                        androidx.media3.common.util.j0 j0Var3 = this.f75231b;
                        j0Var3.V(j0Var3.g() + 1);
                        this.f75243n = false;
                    }
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException();
                    }
                    if (i(this.f75246q.f75252a)) {
                        e(j0Var, this.f75233d, true);
                    }
                    k(j0Var);
                    int i12 = this.f75244o;
                    v.b bVar = this.f75246q;
                    if (i12 == bVar.f75254c) {
                        int i13 = bVar.f75252a;
                        if (i13 == 1) {
                            g(new androidx.media3.common.util.i0(this.f75233d.e()));
                        } else if (i13 == 17) {
                            this.f75249t = v.f(new androidx.media3.common.util.i0(this.f75233d.e()));
                        } else if (i13 == 2) {
                            f();
                        }
                        this.f75234e = 1;
                    }
                }
            } else if (j(j0Var)) {
                this.f75234e = 1;
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75241l = i11;
        if (!this.f75240k && (this.f75245p != 0 || !this.f75243n)) {
            this.f75239j = true;
        }
        if (j11 != C.TIME_UNSET) {
            if (this.f75239j) {
                this.f75238i = j11;
            } else {
                this.f75237h = j11;
            }
        }
    }

    @Override // s3.m
    public void c(boolean z10) {
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f75235f = dVar.b();
        this.f75236g = tVar.track(dVar.c(), 1);
    }

    @Override // s3.m
    public void seek() {
        this.f75234e = 0;
        this.f75242m = 0;
        this.f75231b.S(2);
        this.f75244o = 0;
        this.f75245p = 0;
        this.f75247r = -2147483647;
        this.f75248s = -1;
        this.f75249t = 0;
        this.f75250u = -1L;
        this.f75251v = false;
        this.f75239j = false;
        this.f75243n = true;
        this.f75240k = true;
        this.f75237h = -9.223372036854776E18d;
        this.f75238i = -9.223372036854776E18d;
    }
}
