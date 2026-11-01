package t3;

import androidx.media3.common.util.a1;
import l2.m0;
import l2.n0;

/* JADX INFO: loaded from: classes2.dex */
final class e implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f76054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f76055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f76056c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f76057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f76058e;

    public e(c cVar, int i11, long j11, long j12) {
        this.f76054a = cVar;
        this.f76055b = i11;
        this.f76056c = j11;
        long j13 = (j12 - j11) / ((long) cVar.f76049e);
        this.f76057d = j13;
        this.f76058e = b(j13);
    }

    private long b(long j11) {
        return a1.e1(j11 * ((long) this.f76055b), 1000000L, this.f76054a.f76047c);
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f76058e;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        long jQ = a1.q((((long) this.f76054a.f76047c) * j11) / (((long) this.f76055b) * 1000000), 0L, this.f76057d - 1);
        long j12 = this.f76056c + (((long) this.f76054a.f76049e) * jQ);
        long jB = b(jQ);
        n0 n0Var = new n0(jB, j12);
        if (jB >= j11 || jQ == this.f76057d - 1) {
            return new m0.a(n0Var);
        }
        long j13 = jQ + 1;
        return new m0.a(n0Var, new n0(b(j13), this.f76056c + (((long) this.f76054a.f76049e) * j13)));
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return true;
    }
}
