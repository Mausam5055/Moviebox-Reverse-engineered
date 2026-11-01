package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.MpegAudioHeader;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
final class VbriSeeker implements Mp3Extractor.Seeker {
    private static final String TAG = "VbriSeeker";
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    private VbriSeeker(long[] jArr, long[] jArr2, long j11) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j11;
    }

    public static VbriSeeker create(long j11, long j12, MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray) {
        int unsignedByte;
        parsableByteArray.skipBytes(10);
        int i11 = parsableByteArray.readInt();
        if (i11 <= 0) {
            return null;
        }
        int i12 = mpegAudioHeader.sampleRate;
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(i11, ((long) (i12 >= 32000 ? 1152 : 576)) * 1000000, i12);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        int unsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j13 = j12 + ((long) mpegAudioHeader.frameSize);
        long[] jArr = new long[unsignedShort];
        long[] jArr2 = new long[unsignedShort];
        int i13 = 0;
        long j14 = j12;
        while (i13 < unsignedShort) {
            long j15 = j13;
            long j16 = jScaleLargeTimestamp;
            jArr[i13] = (((long) i13) * jScaleLargeTimestamp) / ((long) unsignedShort);
            jArr2[i13] = Math.max(j14, j15);
            if (unsignedShort3 == 1) {
                unsignedByte = parsableByteArray.readUnsignedByte();
            } else if (unsignedShort3 == 2) {
                unsignedByte = parsableByteArray.readUnsignedShort();
            } else if (unsignedShort3 == 3) {
                unsignedByte = parsableByteArray.readUnsignedInt24();
            } else {
                if (unsignedShort3 != 4) {
                    return null;
                }
                unsignedByte = parsableByteArray.readUnsignedIntToInt();
            }
            j14 += (long) (unsignedByte * unsignedShort2);
            i13++;
            j13 = j15;
            jScaleLargeTimestamp = j16;
        }
        long j17 = jScaleLargeTimestamp;
        if (j11 != -1 && j11 != j14) {
            Log.w(TAG, "VBRI data size mismatch: " + j11 + ", " + j14);
        }
        return new VbriSeeker(jArr, jArr2, j17);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j11) {
        int iBinarySearchFloor = Util.binarySearchFloor(this.timesUs, j11, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[iBinarySearchFloor], this.positions[iBinarySearchFloor]);
        if (seekPoint.timeUs >= j11 || iBinarySearchFloor == this.timesUs.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i11 = iBinarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i11], this.positions[i11]));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j11) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j11, true, true)];
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
