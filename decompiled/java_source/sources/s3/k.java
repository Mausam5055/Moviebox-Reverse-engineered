package s3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74988a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f74990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f74991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f74992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f74993f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s0 f74994g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f74997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f74998k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.media3.common.r f74999l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f75000m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f75001n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f74995h = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f75004q = C.TIME_UNSET;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f74989b = new AtomicInteger();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f75002o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f75003p = -1;

    public k(String str, int i11, int i12, String str2) {
        this.f74988a = new androidx.media3.common.util.j0(new byte[i12]);
        this.f74990c = str;
        this.f74991d = i11;
        this.f74992e = str2;
    }

    private boolean e(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i11) {
        int iMin = Math.min(j0Var.a(), i11 - this.f74996i);
        j0Var.l(bArr, this.f74996i, iMin);
        int i12 = this.f74996i + iMin;
        this.f74996i = i12;
        return i12 == i11;
    }

    private void f() {
        byte[] bArrE = this.f74988a.e();
        if (this.f74999l == null) {
            androidx.media3.common.r rVarH = l2.p.h(bArrE, this.f74993f, this.f74990c, this.f74991d, this.f74992e, null);
            this.f74999l = rVarH;
            this.f74994g.c(rVarH);
        }
        this.f75000m = l2.p.b(bArrE);
        this.f74998k = Ints.d(a1.d1(l2.p.g(bArrE), this.f74999l.F));
    }

    private void g() throws ParserException {
        l2.p.b bVarI = l2.p.i(this.f74988a.e());
        j(bVarI);
        this.f75000m = bVarI.f68674d;
        long j11 = bVarI.f68675e;
        if (j11 == C.TIME_UNSET) {
            j11 = 0;
        }
        this.f74998k = j11;
    }

    private void h() throws ParserException {
        l2.p.b bVarK = l2.p.k(this.f74988a.e(), this.f74989b);
        if (this.f75001n == 3) {
            j(bVarK);
        }
        this.f75000m = bVarK.f68674d;
        long j11 = bVarK.f68675e;
        if (j11 == C.TIME_UNSET) {
            j11 = 0;
        }
        this.f74998k = j11;
    }

    private boolean i(androidx.media3.common.util.j0 j0Var) {
        while (j0Var.a() > 0) {
            int i11 = this.f74997j << 8;
            this.f74997j = i11;
            int iH = i11 | j0Var.H();
            this.f74997j = iH;
            int iC = l2.p.c(iH);
            this.f75001n = iC;
            if (iC != 0) {
                byte[] bArrE = this.f74988a.e();
                int i12 = this.f74997j;
                bArrE[0] = (byte) ((i12 >> 24) & 255);
                bArrE[1] = (byte) ((i12 >> 16) & 255);
                bArrE[2] = (byte) ((i12 >> 8) & 255);
                bArrE[3] = (byte) (i12 & 255);
                this.f74996i = 4;
                this.f74997j = 0;
                return true;
            }
        }
        return false;
    }

    private void j(l2.p.b bVar) {
        int i11;
        int i12 = bVar.f68672b;
        if (i12 == -2147483647 || (i11 = bVar.f68673c) == -1) {
            return;
        }
        androidx.media3.common.r rVar = this.f74999l;
        if (rVar != null && i11 == rVar.E && i12 == rVar.F && Objects.equals(bVar.f68671a, rVar.f10161o)) {
            return;
        }
        androidx.media3.common.r rVar2 = this.f74999l;
        androidx.media3.common.r rVarN = (rVar2 == null ? new androidx.media3.common.r.b() : rVar2.b()).f0(this.f74993f).U(this.f74992e).u0(bVar.f68671a).R(bVar.f68673c).v0(bVar.f68672b).j0(this.f74990c).s0(this.f74991d).N();
        this.f74999l = rVarN;
        this.f74994g.c(rVarN);
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f74994g);
        while (j0Var.a() > 0) {
            switch (this.f74995h) {
                case 0:
                    if (i(j0Var)) {
                        int i11 = this.f75001n;
                        if (i11 == 3 || i11 == 4) {
                            this.f74995h = 4;
                        } else if (i11 != 1) {
                            this.f74995h = 2;
                        } else {
                            this.f74995h = 1;
                        }
                    }
                    break;
                case 1:
                    if (e(j0Var, this.f74988a.e(), 18)) {
                        f();
                        this.f74988a.W(0);
                        this.f74994g.b(this.f74988a, 18);
                        this.f74995h = 6;
                    }
                    break;
                case 2:
                    if (e(j0Var, this.f74988a.e(), 7)) {
                        this.f75002o = l2.p.j(this.f74988a.e());
                        this.f74995h = 3;
                    }
                    break;
                case 3:
                    if (e(j0Var, this.f74988a.e(), this.f75002o)) {
                        g();
                        this.f74988a.W(0);
                        this.f74994g.b(this.f74988a, this.f75002o);
                        this.f74995h = 6;
                    }
                    break;
                case 4:
                    if (e(j0Var, this.f74988a.e(), 6)) {
                        int iL = l2.p.l(this.f74988a.e());
                        this.f75003p = iL;
                        int i12 = this.f74996i;
                        if (i12 > iL) {
                            int i13 = i12 - iL;
                            this.f74996i = i12 - i13;
                            j0Var.W(j0Var.f() - i13);
                        }
                        this.f74995h = 5;
                    }
                    break;
                case 5:
                    if (e(j0Var, this.f74988a.e(), this.f75003p)) {
                        h();
                        this.f74988a.W(0);
                        this.f74994g.b(this.f74988a, this.f75003p);
                        this.f74995h = 6;
                    }
                    break;
                case 6:
                    int iMin = Math.min(j0Var.a(), this.f75000m - this.f74996i);
                    this.f74994g.b(j0Var, iMin);
                    int i14 = this.f74996i + iMin;
                    this.f74996i = i14;
                    if (i14 == this.f75000m) {
                        androidx.media3.common.util.a.g(this.f75004q != C.TIME_UNSET);
                        this.f74994g.d(this.f75004q, this.f75001n == 4 ? 0 : 1, this.f75000m, 0, null);
                        this.f75004q += this.f74998k;
                        this.f74995h = 0;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f75004q = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f74993f = dVar.b();
        this.f74994g = tVar.track(dVar.c(), 1);
    }

    @Override // s3.m
    public void seek() {
        this.f74995h = 0;
        this.f74996i = 0;
        this.f74997j = 0;
        this.f75004q = C.TIME_UNSET;
        this.f74989b.set(0);
    }
}
