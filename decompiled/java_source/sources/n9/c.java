package n9;

import android.util.Pair;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.b0;
import g9.c0;

/* JADX INFO: loaded from: classes4.dex */
final class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f70256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f70257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f70258c;

    private c(long[] jArr, long[] jArr2, long j11) {
        this.f70256a = jArr;
        this.f70257b = jArr2;
        this.f70258c = j11 == C.TIME_UNSET ? p0.B0(jArr2[jArr2.length - 1]) : j11;
    }

    public static c b(long j11, MlltFrame mlltFrame, long j12) {
        int length = mlltFrame.bytesDeviations.length;
        int i11 = length + 1;
        long[] jArr = new long[i11];
        long[] jArr2 = new long[i11];
        jArr[0] = j11;
        long j13 = 0;
        jArr2[0] = 0;
        for (int i12 = 1; i12 <= length; i12++) {
            int i13 = i12 - 1;
            j11 += (long) (mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i13]);
            j13 += (long) (mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i13]);
            jArr[i12] = j11;
            jArr2[i12] = j13;
        }
        return new c(jArr, jArr2, j12);
    }

    private static Pair c(long j11, long[] jArr, long[] jArr2) {
        int i11 = p0.i(jArr, j11, true, true);
        long j12 = jArr[i11];
        long j13 = jArr2[i11];
        int i12 = i11 + 1;
        if (i12 == jArr.length) {
            return Pair.create(Long.valueOf(j12), Long.valueOf(j13));
        }
        long j14 = jArr[i12];
        return Pair.create(Long.valueOf(j11), Long.valueOf(((long) ((j14 == j12 ? 0.0d : (j11 - j12) / (j14 - j12)) * (jArr2[i12] - j13))) + j13));
    }

    @Override // n9.g
    public long a() {
        return -1L;
    }

    @Override // g9.b0
    public long getDurationUs() {
        return this.f70258c;
    }

    @Override // g9.b0
    public b0.a getSeekPoints(long j11) {
        Pair pairC = c(p0.e1(p0.r(j11, 0L, this.f70258c)), this.f70257b, this.f70256a);
        return new b0.a(new c0(p0.B0(((Long) pairC.first).longValue()), ((Long) pairC.second).longValue()));
    }

    @Override // n9.g
    public long getTimeUs(long j11) {
        return p0.B0(((Long) c(j11, this.f70256a, this.f70257b).second).longValue());
    }

    @Override // g9.b0
    public boolean isSeekable() {
        return true;
    }
}
