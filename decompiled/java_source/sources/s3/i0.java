package s3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f74977a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f74980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f74982f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p0 f74978b = new p0(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f74983g = C.TIME_UNSET;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f74984h = C.TIME_UNSET;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f74985i = C.TIME_UNSET;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74979c = new androidx.media3.common.util.j0();

    i0(int i11) {
        this.f74977a = i11;
    }

    private int a(l2.s sVar) {
        this.f74979c.T(a1.f10355f);
        this.f74980d = true;
        sVar.resetPeekPosition();
        return 0;
    }

    private int f(l2.s sVar, l2.l0 l0Var, int i11) {
        int iMin = (int) Math.min(this.f74977a, sVar.getLength());
        long j11 = 0;
        if (sVar.getPosition() != j11) {
            l0Var.f68620a = j11;
            return 1;
        }
        this.f74979c.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f74979c.e(), 0, iMin);
        this.f74983g = g(this.f74979c, i11);
        this.f74981e = true;
        return 0;
    }

    private long g(androidx.media3.common.util.j0 j0Var, int i11) {
        int iG = j0Var.g();
        for (int iF = j0Var.f(); iF < iG; iF++) {
            if (j0Var.e()[iF] == 71) {
                long jC = m0.c(j0Var, iF, i11);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private int h(l2.s sVar, l2.l0 l0Var, int i11) {
        long length = sVar.getLength();
        int iMin = (int) Math.min(this.f74977a, length);
        long j11 = length - ((long) iMin);
        if (sVar.getPosition() != j11) {
            l0Var.f68620a = j11;
            return 1;
        }
        this.f74979c.S(iMin);
        sVar.resetPeekPosition();
        sVar.peekFully(this.f74979c.e(), 0, iMin);
        this.f74984h = i(this.f74979c, i11);
        this.f74982f = true;
        return 0;
    }

    private long i(androidx.media3.common.util.j0 j0Var, int i11) {
        int iF = j0Var.f();
        int iG = j0Var.g();
        for (int i12 = iG - 188; i12 >= iF; i12--) {
            if (m0.b(j0Var.e(), iF, iG, i12)) {
                long jC = m0.c(j0Var, i12, i11);
                if (jC != C.TIME_UNSET) {
                    return jC;
                }
            }
        }
        return C.TIME_UNSET;
    }

    public long b() {
        return this.f74985i;
    }

    public p0 c() {
        return this.f74978b;
    }

    public boolean d() {
        return this.f74980d;
    }

    public int e(l2.s sVar, l2.l0 l0Var, int i11) {
        if (i11 <= 0) {
            return a(sVar);
        }
        if (!this.f74982f) {
            return h(sVar, l0Var, i11);
        }
        if (this.f74984h == C.TIME_UNSET) {
            return a(sVar);
        }
        if (!this.f74981e) {
            return f(sVar, l0Var, i11);
        }
        long j11 = this.f74983g;
        if (j11 == C.TIME_UNSET) {
            return a(sVar);
        }
        this.f74985i = this.f74978b.c(this.f74984h) - this.f74978b.b(j11);
        return a(sVar);
    }
}
