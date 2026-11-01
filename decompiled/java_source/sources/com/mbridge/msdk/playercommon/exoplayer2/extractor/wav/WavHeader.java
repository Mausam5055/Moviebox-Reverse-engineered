package com.mbridge.msdk.playercommon.exoplayer2.extractor.wav;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
final class WavHeader implements SeekMap {
    private final int averageBytesPerSecond;
    private final int bitsPerSample;
    private final int blockAlignment;
    private long dataSize;
    private long dataStartPosition;
    private final int encoding;
    private final int numChannels;
    private final int sampleRateHz;

    public WavHeader(int i11, int i12, int i13, int i14, int i15, int i16) {
        this.numChannels = i11;
        this.sampleRateHz = i12;
        this.averageBytesPerSecond = i13;
        this.blockAlignment = i14;
        this.bitsPerSample = i15;
        this.encoding = i16;
    }

    public int getBitrate() {
        return this.sampleRateHz * this.bitsPerSample * this.numChannels;
    }

    public int getBytesPerFrame() {
        return this.blockAlignment;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return ((this.dataSize / ((long) this.blockAlignment)) * 1000000) / ((long) this.sampleRateHz);
    }

    public int getEncoding() {
        return this.encoding;
    }

    public int getNumChannels() {
        return this.numChannels;
    }

    public int getSampleRateHz() {
        return this.sampleRateHz;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j11) {
        long j12 = (((long) this.averageBytesPerSecond) * j11) / 1000000;
        long j13 = this.blockAlignment;
        long jConstrainValue = Util.constrainValue((j12 / j13) * j13, 0L, this.dataSize - j13);
        long j14 = this.dataStartPosition + jConstrainValue;
        long timeUs = getTimeUs(j14);
        SeekPoint seekPoint = new SeekPoint(timeUs, j14);
        if (timeUs < j11) {
            long j15 = this.dataSize;
            long j16 = this.blockAlignment;
            if (jConstrainValue != j15 - j16) {
                long j17 = j14 + j16;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUs(j17), j17));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUs(long j11) {
        return (Math.max(0L, j11 - this.dataStartPosition) * 1000000) / ((long) this.averageBytesPerSecond);
    }

    public boolean hasDataBounds() {
        return (this.dataStartPosition == 0 || this.dataSize == 0) ? false : true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public void setDataBounds(long j11, long j12) {
        this.dataStartPosition = j11;
        this.dataSize = j12;
    }
}
