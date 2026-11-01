package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.MpegAudioHeader;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
final class XingSeeker implements Mp3Extractor.Seeker {
    private static final String TAG = "XingSeeker";
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;
    private final long[] tableOfContents;
    private final int xingFrameSize;

    private XingSeeker(long j11, int i11, long j12) {
        this(j11, i11, j12, -1L, null);
    }

    private XingSeeker(long j11, int i11, long j12, long j13, long[] jArr) {
        this.dataStartPosition = j11;
        this.xingFrameSize = i11;
        this.durationUs = j12;
        this.dataSize = j13;
        this.tableOfContents = jArr;
    }

    public static XingSeeker create(long j11, long j12, MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray) {
        int unsignedIntToInt;
        int i11 = mpegAudioHeader.samplesPerFrame;
        int i12 = mpegAudioHeader.sampleRate;
        int i13 = parsableByteArray.readInt();
        if ((i13 & 1) != 1 || (unsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) == 0) {
            return null;
        }
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(unsignedIntToInt, ((long) i11) * 1000000, i12);
        if ((i13 & 6) != 6) {
            return new XingSeeker(j12, mpegAudioHeader.frameSize, jScaleLargeTimestamp);
        }
        long unsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[100];
        for (int i14 = 0; i14 < 100; i14++) {
            jArr[i14] = parsableByteArray.readUnsignedByte();
        }
        if (j11 != -1) {
            long j13 = j12 + unsignedIntToInt2;
            if (j11 != j13) {
                Log.w(TAG, "XING data size mismatch: " + j11 + ", " + j13);
            }
        }
        return new XingSeeker(j12, mpegAudioHeader.frameSize, jScaleLargeTimestamp, unsignedIntToInt2, jArr);
    }

    private long getTimeUsForTableIndex(int i11) {
        return (this.durationUs * ((long) i11)) / 100;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j11) {
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + ((long) this.xingFrameSize)));
        }
        long jConstrainValue = Util.constrainValue(j11, 0L, this.durationUs);
        double d11 = (jConstrainValue * 100.0d) / this.durationUs;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i11 = (int) d11;
                long[] jArr = this.tableOfContents;
                double d13 = jArr[i11];
                d12 = d13 + ((d11 - ((double) i11)) * ((i11 == 99 ? 256.0d : jArr[i11 + 1]) - d13));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(jConstrainValue, this.dataStartPosition + Util.constrainValue(Math.round((d12 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j11) {
        long j12 = j11 - this.dataStartPosition;
        if (!isSeekable() || j12 <= this.xingFrameSize) {
            return 0L;
        }
        double d11 = (j12 * 256.0d) / this.dataSize;
        int iBinarySearchFloor = Util.binarySearchFloor(this.tableOfContents, (long) d11, true, true);
        long timeUsForTableIndex = getTimeUsForTableIndex(iBinarySearchFloor);
        long j13 = this.tableOfContents[iBinarySearchFloor];
        int i11 = iBinarySearchFloor + 1;
        long timeUsForTableIndex2 = getTimeUsForTableIndex(i11);
        long j14 = iBinarySearchFloor == 99 ? 256L : this.tableOfContents[i11];
        return timeUsForTableIndex + Math.round((j13 == j14 ? 0.0d : (d11 - j13) / (j14 - j13)) * (timeUsForTableIndex2 - timeUsForTableIndex));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }
}
