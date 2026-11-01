package w9;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import x9.i;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g9.d f77605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f77606b;

    public g(g9.d dVar, long j11) {
        this.f77605a = dVar;
        this.f77606b = j11;
    }

    @Override // w9.e
    public long a(long j11, long j12) {
        return this.f77605a.f63380d[(int) j11];
    }

    @Override // w9.e
    public long b(long j11, long j12) {
        return 0L;
    }

    @Override // w9.e
    public long c(long j11, long j12) {
        return C.TIME_UNSET;
    }

    @Override // w9.e
    public i d(long j11) {
        g9.d dVar = this.f77605a;
        int i11 = (int) j11;
        return new i(null, dVar.f63379c[i11], dVar.f63378b[i11]);
    }

    @Override // w9.e
    public long e(long j11, long j12) {
        return this.f77605a.b(j11 + this.f77606b);
    }

    @Override // w9.e
    public long f(long j11) {
        return this.f77605a.f63377a;
    }

    @Override // w9.e
    public boolean g() {
        return true;
    }

    @Override // w9.e
    public long getTimeUs(long j11) {
        return this.f77605a.f63381e[(int) j11] - this.f77606b;
    }

    @Override // w9.e
    public long h() {
        return 0L;
    }

    @Override // w9.e
    public long i(long j11, long j12) {
        return this.f77605a.f63377a;
    }
}
