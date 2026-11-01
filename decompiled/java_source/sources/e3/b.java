package e3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.math.RoundingMode;
import l2.h0;
import l2.m0;

/* JADX INFO: loaded from: classes2.dex */
final class b implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f61503a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f61504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h0 f61505c;

    public b(long j11, long j12, long j13) {
        this.f61505c = new h0(new long[]{j12}, new long[]{0}, j11);
        this.f61503a = j13;
        int i11 = -2147483647;
        if (j11 == C.TIME_UNSET) {
            this.f61504b = -2147483647;
            return;
        }
        long jG1 = a1.g1(j12 - j13, 8L, j11, RoundingMode.HALF_UP);
        if (jG1 > 0 && jG1 <= 2147483647L) {
            i11 = (int) jG1;
        }
        this.f61504b = i11;
    }

    @Override // e3.g
    public long a() {
        return this.f61503a;
    }

    public boolean b(long j11) {
        return this.f61505c.c(j11, 100000L);
    }

    public void c(long j11, long j12) {
        if (b(j11)) {
            return;
        }
        this.f61505c.b(j11, j12);
    }

    void d(long j11) {
        this.f61505c.d(j11);
    }

    @Override // e3.g
    public int g() {
        return this.f61504b;
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f61505c.getDurationUs();
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        return this.f61505c.getSeekPoints(j11);
    }

    @Override // e3.g
    public long getTimeUs(long j11) {
        return this.f61505c.getTimeUs(j11);
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return this.f61505c.isSeekable();
    }
}
