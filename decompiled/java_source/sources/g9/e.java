package g9;

import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public class e implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f63383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f63384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f63385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f63386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f63387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f63388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f63389g;

    public e(long j11, long j12, int i11, int i12, boolean z10) {
        this.f63383a = j11;
        this.f63384b = j12;
        this.f63385c = i12 == -1 ? 1 : i12;
        this.f63387e = i11;
        this.f63389g = z10;
        if (j11 == -1) {
            this.f63386d = -1L;
            this.f63388f = C.TIME_UNSET;
        } else {
            this.f63386d = j11 - j12;
            this.f63388f = d(j11, j12, i11);
        }
    }

    private long b(long j11) {
        long j12 = (j11 * ((long) this.f63387e)) / 8000000;
        int i11 = this.f63385c;
        long jMin = (j12 / ((long) i11)) * ((long) i11);
        long j13 = this.f63386d;
        if (j13 != -1) {
            jMin = Math.min(jMin, j13 - ((long) i11));
        }
        return this.f63384b + Math.max(jMin, 0L);
    }

    private static long d(long j11, long j12, int i11) {
        return (Math.max(0L, j11 - j12) * 8000000) / ((long) i11);
    }

    public long c(long j11) {
        return d(j11, this.f63384b, this.f63387e);
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f63388f;
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        if (this.f63386d == -1 && !this.f63389g) {
            return new b0.a(new c0(0L, this.f63384b));
        }
        long jB = b(j11);
        long jC = c(jB);
        c0 c0Var = new c0(jC, jB);
        if (this.f63386d != -1 && jC < j11) {
            int i11 = this.f63385c;
            if (((long) i11) + jB < this.f63383a) {
                long j12 = jB + ((long) i11);
                return new b0.a(c0Var, new c0(c(j12), j12));
            }
        }
        return new b0.a(c0Var);
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return this.f63386d != -1 || this.f63389g;
    }
}
