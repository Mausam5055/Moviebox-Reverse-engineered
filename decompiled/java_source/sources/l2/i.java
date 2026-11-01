package l2;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public class i implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f68592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f68593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f68594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f68595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f68596e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f68597f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f68598g;

    public i(long j11, long j12, int i11, int i12, boolean z10) {
        this.f68592a = j11;
        this.f68593b = j12;
        this.f68594c = i12 == -1 ? 1 : i12;
        this.f68596e = i11;
        this.f68598g = z10;
        if (j11 == -1) {
            this.f68595d = -1L;
            this.f68597f = C.TIME_UNSET;
        } else {
            this.f68595d = j11 - j12;
            this.f68597f = d(j11, j12, i11);
        }
    }

    private long b(long j11) {
        long j12 = (j11 * ((long) this.f68596e)) / 8000000;
        int i11 = this.f68594c;
        long jMin = (j12 / ((long) i11)) * ((long) i11);
        long j13 = this.f68595d;
        if (j13 != -1) {
            jMin = Math.min(jMin, j13 - ((long) i11));
        }
        return this.f68593b + Math.max(jMin, 0L);
    }

    private static long d(long j11, long j12, int i11) {
        return (Math.max(0L, j11 - j12) * 8000000) / ((long) i11);
    }

    public long c(long j11) {
        return d(j11, this.f68593b, this.f68596e);
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f68597f;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        if (this.f68595d == -1 && !this.f68598g) {
            return new m0.a(new n0(0L, this.f68593b));
        }
        long jB = b(j11);
        long jC = c(jB);
        n0 n0Var = new n0(jC, jB);
        if (this.f68595d != -1 && jC < j11) {
            int i11 = this.f68594c;
            if (((long) i11) + jB < this.f68592a) {
                long j12 = jB + ((long) i11);
                return new m0.a(n0Var, new n0(c(j12), j12));
            }
        }
        return new m0.a(n0Var);
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return this.f68595d != -1 || this.f68598g;
    }
}
