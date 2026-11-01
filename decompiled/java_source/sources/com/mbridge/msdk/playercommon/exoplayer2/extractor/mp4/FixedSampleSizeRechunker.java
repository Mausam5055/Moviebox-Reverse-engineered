package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4;

import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
final class FixedSampleSizeRechunker {
    private static final int MAX_SAMPLE_SIZE = 8192;

    public static final class Results {
        public final long duration;
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;

        private Results(long[] jArr, int[] iArr, int i11, long[] jArr2, int[] iArr2, long j11) {
            this.offsets = jArr;
            this.sizes = iArr;
            this.maximumSize = i11;
            this.timestamps = jArr2;
            this.flags = iArr2;
            this.duration = j11;
        }
    }

    private FixedSampleSizeRechunker() {
    }

    public static Results rechunk(int i11, long[] jArr, int[] iArr, long j11) {
        int i12 = 8192 / i11;
        int iCeilDivide = 0;
        for (int i13 : iArr) {
            iCeilDivide += Util.ceilDivide(i13, i12);
        }
        long[] jArr2 = new long[iCeilDivide];
        int[] iArr2 = new int[iCeilDivide];
        long[] jArr3 = new long[iCeilDivide];
        int[] iArr3 = new int[iCeilDivide];
        int i14 = 0;
        int i15 = 0;
        int iMax = 0;
        for (int i16 = 0; i16 < iArr.length; i16++) {
            int i17 = iArr[i16];
            long j12 = jArr[i16];
            while (i17 > 0) {
                int iMin = Math.min(i12, i17);
                jArr2[i15] = j12;
                int i18 = i11 * iMin;
                iArr2[i15] = i18;
                iMax = Math.max(iMax, i18);
                jArr3[i15] = ((long) i14) * j11;
                iArr3[i15] = 1;
                j12 += (long) iArr2[i15];
                i14 += iMin;
                i17 -= iMin;
                i15++;
            }
        }
        return new Results(jArr2, iArr2, iMax, jArr3, iArr3, j11 * ((long) i14));
    }
}
