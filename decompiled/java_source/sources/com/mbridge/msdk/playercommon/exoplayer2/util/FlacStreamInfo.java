package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class FlacStreamInfo {
    public final int bitsPerSample;
    public final int channels;
    public final int maxBlockSize;
    public final int maxFrameSize;
    public final int minBlockSize;
    public final int minFrameSize;
    public final int sampleRate;
    public final long totalSamples;

    public FlacStreamInfo(int i11, int i12, int i13, int i14, int i15, int i16, int i17, long j11) {
        this.minBlockSize = i11;
        this.maxBlockSize = i12;
        this.minFrameSize = i13;
        this.maxFrameSize = i14;
        this.sampleRate = i15;
        this.channels = i16;
        this.bitsPerSample = i17;
        this.totalSamples = j11;
    }

    public FlacStreamInfo(byte[] bArr, int i11) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.setPosition(i11 * 8);
        this.minBlockSize = parsableBitArray.readBits(16);
        this.maxBlockSize = parsableBitArray.readBits(16);
        this.minFrameSize = parsableBitArray.readBits(24);
        this.maxFrameSize = parsableBitArray.readBits(24);
        this.sampleRate = parsableBitArray.readBits(20);
        this.channels = parsableBitArray.readBits(3) + 1;
        this.bitsPerSample = parsableBitArray.readBits(5) + 1;
        this.totalSamples = ((((long) parsableBitArray.readBits(4)) & 15) << 32) | (((long) parsableBitArray.readBits(32)) & 4294967295L);
    }

    public int bitRate() {
        return this.bitsPerSample * this.sampleRate;
    }

    public long durationUs() {
        return (this.totalSamples * 1000000) / ((long) this.sampleRate);
    }

    public long getApproxBytesPerFrame() {
        long j11;
        long j12;
        int i11 = this.maxFrameSize;
        if (i11 > 0) {
            j11 = (((long) i11) + ((long) this.minFrameSize)) / 2;
            j12 = 1;
        } else {
            int i12 = this.minBlockSize;
            j11 = ((((i12 != this.maxBlockSize || i12 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i12) * ((long) this.channels)) * ((long) this.bitsPerSample)) / 8;
            j12 = 64;
        }
        return j11 + j12;
    }

    public long getSampleIndex(long j11) {
        return Util.constrainValue((j11 * ((long) this.sampleRate)) / 1000000, 0L, this.totalSamples - 1);
    }

    public int maxDecodedFrameSize() {
        return this.maxBlockSize * this.channels * (this.bitsPerSample / 8);
    }
}
