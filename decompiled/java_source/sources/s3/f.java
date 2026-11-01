package s3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.common.util.i0 f74916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f74918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f74919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f74920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f74921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s0 f74922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f74923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74924i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f74925j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f74926k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f74927l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private androidx.media3.common.r f74928m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f74929n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f74930o;

    public f(String str) {
        this(null, 0, str);
    }

    public f(String str, int i11, String str2) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(new byte[16]);
        this.f74916a = i0Var;
        this.f74917b = new androidx.media3.common.util.j0(i0Var.f10388a);
        this.f74923h = 0;
        this.f74924i = 0;
        this.f74925j = false;
        this.f74926k = false;
        this.f74930o = C.TIME_UNSET;
        this.f74918c = str;
        this.f74919d = i11;
        this.f74920e = str2;
    }

    private boolean e(androidx.media3.common.util.j0 j0Var, byte[] bArr, int i11) {
        int iMin = Math.min(j0Var.a(), i11 - this.f74924i);
        j0Var.l(bArr, this.f74924i, iMin);
        int i12 = this.f74924i + iMin;
        this.f74924i = i12;
        return i12 == i11;
    }

    private void f() {
        this.f74916a.p(0);
        l2.c.C0824c c0824cF = l2.c.f(this.f74916a);
        androidx.media3.common.r rVar = this.f74928m;
        if (rVar == null || c0824cF.f68524c != rVar.E || c0824cF.f68523b != rVar.F || !"audio/ac4".equals(rVar.f10161o)) {
            androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(this.f74921f).U(this.f74920e).u0("audio/ac4").R(c0824cF.f68524c).v0(c0824cF.f68523b).j0(this.f74918c).s0(this.f74919d).N();
            this.f74928m = rVarN;
            this.f74922g.c(rVarN);
        }
        this.f74929n = c0824cF.f68525d;
        this.f74927l = (((long) c0824cF.f68526e) * 1000000) / ((long) this.f74928m.F);
    }

    private boolean g(androidx.media3.common.util.j0 j0Var) {
        while (true) {
            if (j0Var.a() <= 0) {
                return false;
            }
            if (this.f74925j) {
                int iH = j0Var.H();
                this.f74925j = iH == 172;
                if (iH == 64 || iH == 65) {
                    this.f74926k = iH == 65;
                    return true;
                }
            } else {
                this.f74925j = j0Var.H() == 172;
            }
        }
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f74922g);
        while (j0Var.a() > 0) {
            int i11 = this.f74923h;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        int iMin = Math.min(j0Var.a(), this.f74929n - this.f74924i);
                        this.f74922g.b(j0Var, iMin);
                        int i12 = this.f74924i + iMin;
                        this.f74924i = i12;
                        if (i12 == this.f74929n) {
                            androidx.media3.common.util.a.g(this.f74930o != C.TIME_UNSET);
                            this.f74922g.d(this.f74930o, 1, this.f74929n, 0, null);
                            this.f74930o += this.f74927l;
                            this.f74923h = 0;
                        }
                    }
                } else if (e(j0Var, this.f74917b.e(), 16)) {
                    f();
                    this.f74917b.W(0);
                    this.f74922g.b(this.f74917b, 16);
                    this.f74923h = 2;
                }
            } else if (g(j0Var)) {
                this.f74923h = 1;
                this.f74917b.e()[0] = -84;
                this.f74917b.e()[1] = (byte) (this.f74926k ? 65 : 64);
                this.f74924i = 2;
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        this.f74930o = j11;
    }

    @Override // s3.m
    public void c(boolean z10) {
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        this.f74921f = dVar.b();
        this.f74922g = tVar.track(dVar.c(), 1);
    }

    @Override // s3.m
    public void seek() {
        this.f74923h = 0;
        this.f74924i = 0;
        this.f74925j = false;
        this.f74926k = false;
        this.f74930o = C.TIME_UNSET;
    }
}
