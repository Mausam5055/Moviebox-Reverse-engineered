package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.MpegAudioHeader;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
final class ConstantBitrateSeeker implements Mp3Extractor.Seeker {
    private static final int BITS_PER_BYTE = 8;
    private final int bitrate;
    private final long dataSize;
    private final long durationUs;
    private final long firstFramePosition;
    private final int frameSize;

    public ConstantBitrateSeeker(long j11, long j12, MpegAudioHeader mpegAudioHeader) {
        this.firstFramePosition = j12;
        this.frameSize = mpegAudioHeader.frameSize;
        this.bitrate = mpegAudioHeader.bitrate;
        if (j11 == -1) {
            this.dataSize = -1L;
            this.durationUs = C.TIME_UNSET;
        } else {
            this.dataSize = j11 - j12;
            this.durationUs = getTimeUs(j11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j11) {
        long j12 = this.dataSize;
        if (j12 == -1) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.firstFramePosition));
        }
        long j13 = (((long) this.bitrate) * j11) / 8000000;
        long j14 = this.frameSize;
        long jConstrainValue = Util.constrainValue((j13 / j14) * j14, 0L, j12 - j14);
        long j15 = this.firstFramePosition + jConstrainValue;
        long timeUs = getTimeUs(j15);
        SeekPoint seekPoint = new SeekPoint(timeUs, j15);
        if (timeUs < j11) {
            long j16 = this.dataSize;
            long j17 = this.frameSize;
            if (jConstrainValue != j16 - j17) {
                long j18 = j15 + j17;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUs(j18), j18));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j11) {
        return (Math.max(0L, j11 - this.firstFramePosition) * 8000000) / ((long) this.bitrate);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.dataSize != -1;
    }
}
