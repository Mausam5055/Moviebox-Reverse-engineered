package e3;

import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import l2.m0;
import l2.n0;
import z2.l;

/* JADX INFO: loaded from: classes2.dex */
final class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f61506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f61507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f61508c;

    private c(long[] jArr, long[] jArr2, long j11) {
        this.f61506a = jArr;
        this.f61507b = jArr2;
        this.f61508c = j11 == C.TIME_UNSET ? a1.R0(jArr2[jArr2.length - 1]) : j11;
    }

    public static c b(long j11, l lVar, long j12) {
        int length = lVar.f79200e.length;
        int i11 = length + 1;
        long[] jArr = new long[i11];
        long[] jArr2 = new long[i11];
        jArr[0] = j11;
        long j13 = 0;
        jArr2[0] = 0;
        for (int i12 = 1; i12 <= length; i12++) {
            int i13 = i12 - 1;
            j11 += (long) (lVar.f79198c + lVar.f79200e[i13]);
            j13 += (long) (lVar.f79199d + lVar.f79201f[i13]);
            jArr[i12] = j11;
            jArr2[i12] = j13;
        }
        return new c(jArr, jArr2, j12);
    }

    private static Pair c(long j11, long[] jArr, long[] jArr2) {
        int iH = a1.h(jArr, j11, true, true);
        long j12 = jArr[iH];
        long j13 = jArr2[iH];
        int i11 = iH + 1;
        if (i11 == jArr.length) {
            return Pair.create(Long.valueOf(j12), Long.valueOf(j13));
        }
        long j14 = jArr[i11];
        return Pair.create(Long.valueOf(j11), Long.valueOf(((long) ((j14 == j12 ? 0.0d : (j11 - j12) / (j14 - j12)) * (jArr2[i11] - j13))) + j13));
    }

    @Override // e3.g
    public long a() {
        return -1L;
    }

    @Override // e3.g
    public int g() {
        return -2147483647;
    }

    @Override // l2.m0
    public long getDurationUs() {
        return this.f61508c;
    }

    @Override // l2.m0
    public m0.a getSeekPoints(long j11) {
        Pair pairC = c(a1.y1(a1.q(j11, 0L, this.f61508c)), this.f61507b, this.f61506a);
        return new m0.a(new n0(a1.R0(((Long) pairC.first).longValue()), ((Long) pairC.second).longValue()));
    }

    @Override // e3.g
    public long getTimeUs(long j11) {
        return a1.R0(((Long) c(j11, this.f61506a, this.f61507b).second).longValue());
    }

    @Override // l2.m0
    public boolean isSeekable() {
        return true;
    }
}
