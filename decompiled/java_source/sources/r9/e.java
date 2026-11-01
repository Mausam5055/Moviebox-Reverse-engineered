package r9;

import com.google.android.exoplayer2.util.p0;
import g9.b0;
import g9.c0;

/* JADX INFO: loaded from: classes4.dex */
final class e implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f74225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f74226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f74227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f74228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f74229e;

    public e(c cVar, int i11, long j11, long j12) {
        this.f74225a = cVar;
        this.f74226b = i11;
        this.f74227c = j11;
        long j13 = (j12 - j11) / ((long) cVar.f74220e);
        this.f74228d = j13;
        this.f74229e = b(j13);
    }

    private long b(long j11) {
        return p0.N0(j11 * ((long) this.f74226b), 1000000L, this.f74225a.f74218c);
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f74229e;
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        long jR = p0.r((((long) this.f74225a.f74218c) * j11) / (((long) this.f74226b) * 1000000), 0L, this.f74228d - 1);
        long j12 = this.f74227c + (((long) this.f74225a.f74220e) * jR);
        long jB = b(jR);
        c0 c0Var = new c0(jB, j12);
        if (jB >= j11 || jR == this.f74228d - 1) {
            return new b0.a(c0Var);
        }
        long j13 = jR + 1;
        return new b0.a(c0Var, new c0(b(j13), this.f74227c + (((long) this.f74225a.f74220e) * j13)));
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return true;
    }
}
