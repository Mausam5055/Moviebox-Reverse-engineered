package e3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.i0;
import l2.m0;
import l2.n0;

/* JADX INFO: loaded from: classes2.dex */
final class j implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f61543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f61544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f61545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f61546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f61547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f61548f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long[] f61549g;

    private j(long j11, int i11, long j12, int i12) {
        this(j11, i11, j12, i12, -1L, null);
    }

    private j(long j11, int i11, long j12, int i12, long j13, long[] jArr) {
        this.f61543a = j11;
        this.f61544b = i11;
        this.f61545c = j12;
        this.f61546d = i12;
        this.f61547e = j13;
        this.f61549g = jArr;
        this.f61548f = j13 != -1 ? j11 + j13 : -1L;
    }

    public static j b(i iVar, long j11) {
        long[] jArr;
        long jA = iVar.a();
        if (jA == C.TIME_UNSET) {
            return null;
        }
        long j12 = iVar.f61539c;
        if (j12 == -1 || (jArr = iVar.f61542f) == null) {
            i0.a aVar = iVar.f61537a;
            return new j(j11, aVar.f68608c, jA, aVar.f68611f);
        }
        i0.a aVar2 = iVar.f61537a;
        return new j(j11, aVar2.f68608c, jA, aVar2.f68611f, j12, jArr);
    }

    private long c(int i11) {
        return (this.f61545c * ((long) i11)) / 100;
    }

    @Override // e3.g
    public long a() {
        return this.f61548f;
    }

    @Override // e3.g
    public int g() {
        return this.f61546d;
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f61545c;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        if (!isSeekable()) {
            return new m0.a(new n0(0L, this.f61543a + ((long) this.f61544b)));
        }
        long jQ = a1.q(j11, 0L, this.f61545c);
        double d11 = (jQ * 100.0d) / this.f61545c;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i11 = (int) d11;
                long[] jArr = (long[]) androidx.media3.common.util.a.i(this.f61549g);
                double d13 = jArr[i11];
                d12 = d13 + ((d11 - ((double) i11)) * ((i11 == 99 ? 256.0d : jArr[i11 + 1]) - d13));
            }
        }
        return new m0.a(new n0(jQ, this.f61543a + a1.q(Math.round((d12 / 256.0d) * this.f61547e), this.f61544b, this.f61547e - 1)));
    }

    @Override // e3.g
    public long getTimeUs(long j11) {
        long j12 = j11 - this.f61543a;
        if (!isSeekable() || j12 <= this.f61544b) {
            return 0L;
        }
        long[] jArr = (long[]) androidx.media3.common.util.a.i(this.f61549g);
        double d11 = (j12 * 256.0d) / this.f61547e;
        int iH = a1.h(jArr, (long) d11, true, true);
        long jC = c(iH);
        long j13 = jArr[iH];
        int i11 = iH + 1;
        long jC2 = c(i11);
        long j14 = iH == 99 ? 256L : jArr[i11];
        return jC + Math.round((j13 == j14 ? 0.0d : (d11 - j13) / (j14 - j13)) * (jC2 - jC));
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return this.f61549g != null;
    }
}
