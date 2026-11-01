package z1;

import a2.i;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.h;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f79162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f79163b;

    public g(h hVar, long j11) {
        this.f79162a = hVar;
        this.f79163b = j11;
    }

    @Override // z1.e
    public long a(long j11, long j12) {
        return this.f79162a.f68586d[(int) j11];
    }

    @Override // z1.e
    public long b(long j11, long j12) {
        return 0L;
    }

    @Override // z1.e
    public long c(long j11, long j12) {
        return C.TIME_UNSET;
    }

    @Override // z1.e
    public i d(long j11) {
        h hVar = this.f79162a;
        int i11 = (int) j11;
        return new i(null, hVar.f68585c[i11], hVar.f68584b[i11]);
    }

    @Override // z1.e
    public long e(long j11, long j12) {
        return this.f79162a.b(j11 + this.f79163b);
    }

    @Override // z1.e
    public long f(long j11) {
        return this.f79162a.f68583a;
    }

    @Override // z1.e
    public boolean g() {
        return true;
    }

    @Override // z1.e
    public long getTimeUs(long j11) {
        return this.f79162a.f68587e[(int) j11] - this.f79163b;
    }

    @Override // z1.e
    public long h() {
        return 0L;
    }

    @Override // z1.e
    public long i(long j11, long j12) {
        return this.f79162a.f68583a;
    }
}
