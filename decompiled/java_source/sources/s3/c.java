package s3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.util.i0 f74872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f74874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f74875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f74876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f74877f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s0 f74878g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f74879h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74880i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f74881j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f74882k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.media3.common.r f74883l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f74884m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f74885n;

    public c(String str) {
        this(null, 0, str);
    }

    public c(String str, int i11, String str2) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(new byte[128]);
        this.f74872a = i0Var;
        this.f74873b = new androidx.media3.common.util.j0(i0Var.f10388a);
        this.f74879h = 0;
        this.f74885n = C.TIME_UNSET;
        this.f74874c = str;
        this.f74875d = i11;
        this.f74876e = str2;
    }

    private boolean e(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i11) {
        int iMin = Math.min(j0Var.a(), i11 - this.f74880i);
        j0Var.l(bArr, this.f74880i, iMin);
        int i12 = this.f74880i + iMin;
        this.f74880i = i12;
        return i12 == i11;
    }

    private void f() {
        this.f74872a.p(0);
        l2.b.C0823b c0823bF = l2.b.f(this.f74872a);
        androidx.media3.common.r rVar = this.f74883l;
        if (rVar == null || c0823bF.f68497d != rVar.E || c0823bF.f68496c != rVar.F || !Objects.equals(c0823bF.f68494a, rVar.f10161o)) {
            androidx.media3.common.r.b bVarP0 = new androidx.media3.common.r.b().f0(this.f74877f).U(this.f74876e).u0(c0823bF.f68494a).R(c0823bF.f68497d).v0(c0823bF.f68496c).j0(this.f74874c).s0(this.f74875d).p0(c0823bF.f68500g);
            if (MimeTypes.AUDIO_AC3.equals(c0823bF.f68494a)) {
                bVarP0.Q(c0823bF.f68500g);
            }
            androidx.media3.common.r rVarN = bVarP0.N();
            this.f74883l = rVarN;
            this.f74878g.c(rVarN);
        }
        this.f74884m = c0823bF.f68498e;
        this.f74882k = (((long) c0823bF.f68499f) * 1000000) / ((long) this.f74883l.F);
    }

    private boolean g(androidx.media3.common.util.j0 j0Var) {
        while (true) {
            if (j0Var.a() <= 0) {
                return false;
            }
            if (this.f74881j) {
                int iH = j0Var.H();
                if (iH == 119) {
                    this.f74881j = false;
                    return true;
                }
                this.f74881j = iH == 11;
            } else {
                this.f74881j = j0Var.H() == 11;
            }
        }
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f74878g);
        while (j0Var.a() > 0) {
            int i11 = this.f74879h;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        int iMin = Math.min(j0Var.a(), this.f74884m - this.f74880i);
                        this.f74878g.b(j0Var, iMin);
                        int i12 = this.f74880i + iMin;
                        this.f74880i = i12;
                        if (i12 == this.f74884m) {
                            androidx.media3.common.util.a.g(this.f74885n != C.TIME_UNSET);
                            this.f74878g.d(this.f74885n, 1, this.f74884m, 0, null);
                            this.f74885n += this.f74882k;
                            this.f74879h = 0;
                        }
                    }
                } else if (e(j0Var, this.f74873b.e(), 128)) {
                    f();
                    this.f74873b.W(0);
                    this.f74878g.b(this.f74873b, 128);
                    this.f74879h = 2;
                }
            } else if (g(j0Var)) {
                this.f74879h = 1;
                this.f74873b.e()[0] = 11;
                this.f74873b.e()[1] = 119;
                this.f74880i = 2;
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f74885n = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f74877f = dVar.b();
        this.f74878g = tVar.track(dVar.c(), 1);
    }

    @Override // s3.m
    public void seek() {
        this.f74879h = 0;
        this.f74880i = 0;
        this.f74881j = false;
        this.f74885n = C.TIME_UNSET;
    }
}
