package com.mbridge.msdk.playercommon.exoplayer2.source;

import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.FormatHolder;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderInputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
final class SampleMetadataQueue {
    private static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    private int absoluteFirstIndex;
    private int length;
    private int readPosition;
    private int relativeFirstIndex;
    private Format upstreamFormat;
    private int upstreamSourceId;
    private int capacity = 1000;
    private int[] sourceIds = new int[1000];
    private long[] offsets = new long[1000];
    private long[] timesUs = new long[1000];
    private int[] flags = new int[1000];
    private int[] sizes = new int[1000];
    private TrackOutput.CryptoData[] cryptoDatas = new TrackOutput.CryptoData[1000];
    private Format[] formats = new Format[1000];
    private long largestDiscardedTimestampUs = Long.MIN_VALUE;
    private long largestQueuedTimestampUs = Long.MIN_VALUE;
    private boolean upstreamFormatRequired = true;
    private boolean upstreamKeyframeRequired = true;

    public static final class SampleExtrasHolder {
        public TrackOutput.CryptoData cryptoData;
        public long offset;
        public int size;
    }

    private long discardSamples(int i11) {
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i11));
        int i12 = this.length - i11;
        this.length = i12;
        this.absoluteFirstIndex += i11;
        int i13 = this.relativeFirstIndex + i11;
        this.relativeFirstIndex = i13;
        int i14 = this.capacity;
        if (i13 >= i14) {
            this.relativeFirstIndex = i13 - i14;
        }
        int i15 = this.readPosition - i11;
        this.readPosition = i15;
        if (i15 < 0) {
            this.readPosition = 0;
        }
        if (i12 != 0) {
            return this.offsets[this.relativeFirstIndex];
        }
        int i16 = this.relativeFirstIndex;
        if (i16 != 0) {
            i14 = i16;
        }
        int i17 = i14 - 1;
        return this.offsets[i17] + ((long) this.sizes[i17]);
    }

    private int findSampleBefore(int i11, int i12, long j11, boolean z10) {
        int i13 = -1;
        for (int i14 = 0; i14 < i12 && this.timesUs[i11] <= j11; i14++) {
            if (!z10 || (this.flags[i11] & 1) != 0) {
                i13 = i14;
            }
            i11++;
            if (i11 == this.capacity) {
                i11 = 0;
            }
        }
        return i13;
    }

    private long getLargestTimestamp(int i11) {
        long jMax = Long.MIN_VALUE;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int relativeIndex = getRelativeIndex(i11 - 1);
        for (int i12 = 0; i12 < i11; i12++) {
            jMax = Math.max(jMax, this.timesUs[relativeIndex]);
            if ((this.flags[relativeIndex] & 1) != 0) {
                break;
            }
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        return jMax;
    }

    private int getRelativeIndex(int i11) {
        int i12 = this.relativeFirstIndex + i11;
        int i13 = this.capacity;
        return i12 < i13 ? i12 : i12 - i13;
    }

    public synchronized int advanceTo(long j11, boolean z10, boolean z11) {
        int relativeIndex = getRelativeIndex(this.readPosition);
        if (hasNextSample() && j11 >= this.timesUs[relativeIndex] && (j11 <= this.largestQueuedTimestampUs || z11)) {
            int iFindSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j11, z10);
            if (iFindSampleBefore == -1) {
                return -1;
            }
            this.readPosition += iFindSampleBefore;
            return iFindSampleBefore;
        }
        return -1;
    }

    public synchronized int advanceToEnd() {
        int i11;
        int i12 = this.length;
        i11 = i12 - this.readPosition;
        this.readPosition = i12;
        return i11;
    }

    public synchronized boolean attemptSplice(long j11) {
        if (this.length == 0) {
            return j11 > this.largestDiscardedTimestampUs;
        }
        if (Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.readPosition)) >= j11) {
            return false;
        }
        int i11 = this.length;
        int relativeIndex = getRelativeIndex(i11 - 1);
        while (i11 > this.readPosition && this.timesUs[relativeIndex] >= j11) {
            i11--;
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        discardUpstreamSamples(this.absoluteFirstIndex + i11);
        return true;
    }

    public synchronized void commitSample(long j11, int i11, long j12, int i12, TrackOutput.CryptoData cryptoData) {
        try {
            if (this.upstreamKeyframeRequired) {
                if ((i11 & 1) == 0) {
                    return;
                } else {
                    this.upstreamKeyframeRequired = false;
                }
            }
            Assertions.checkState(!this.upstreamFormatRequired);
            commitSampleTimestamp(j11);
            int relativeIndex = getRelativeIndex(this.length);
            this.timesUs[relativeIndex] = j11;
            long[] jArr = this.offsets;
            jArr[relativeIndex] = j12;
            this.sizes[relativeIndex] = i12;
            this.flags[relativeIndex] = i11;
            this.cryptoDatas[relativeIndex] = cryptoData;
            this.formats[relativeIndex] = this.upstreamFormat;
            this.sourceIds[relativeIndex] = this.upstreamSourceId;
            int i13 = this.length + 1;
            this.length = i13;
            int i14 = this.capacity;
            if (i13 == i14) {
                int i15 = i14 + 1000;
                int[] iArr = new int[i15];
                long[] jArr2 = new long[i15];
                long[] jArr3 = new long[i15];
                int[] iArr2 = new int[i15];
                int[] iArr3 = new int[i15];
                TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i15];
                Format[] formatArr = new Format[i15];
                int i16 = this.relativeFirstIndex;
                int i17 = i14 - i16;
                System.arraycopy(jArr, i16, jArr2, 0, i17);
                System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr3, 0, i17);
                System.arraycopy(this.flags, this.relativeFirstIndex, iArr2, 0, i17);
                System.arraycopy(this.sizes, this.relativeFirstIndex, iArr3, 0, i17);
                System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, cryptoDataArr, 0, i17);
                System.arraycopy(this.formats, this.relativeFirstIndex, formatArr, 0, i17);
                System.arraycopy(this.sourceIds, this.relativeFirstIndex, iArr, 0, i17);
                int i18 = this.relativeFirstIndex;
                System.arraycopy(this.offsets, 0, jArr2, i17, i18);
                System.arraycopy(this.timesUs, 0, jArr3, i17, i18);
                System.arraycopy(this.flags, 0, iArr2, i17, i18);
                System.arraycopy(this.sizes, 0, iArr3, i17, i18);
                System.arraycopy(this.cryptoDatas, 0, cryptoDataArr, i17, i18);
                System.arraycopy(this.formats, 0, formatArr, i17, i18);
                System.arraycopy(this.sourceIds, 0, iArr, i17, i18);
                this.offsets = jArr2;
                this.timesUs = jArr3;
                this.flags = iArr2;
                this.sizes = iArr3;
                this.cryptoDatas = cryptoDataArr;
                this.formats = formatArr;
                this.sourceIds = iArr;
                this.relativeFirstIndex = 0;
                this.length = this.capacity;
                this.capacity = i15;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void commitSampleTimestamp(long j11) {
        this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j11);
    }

    public synchronized long discardTo(long j11, boolean z10, boolean z11) {
        int i11;
        try {
            int i12 = this.length;
            if (i12 != 0) {
                long[] jArr = this.timesUs;
                int i13 = this.relativeFirstIndex;
                if (j11 >= jArr[i13]) {
                    if (z11 && (i11 = this.readPosition) != i12) {
                        i12 = i11 + 1;
                    }
                    int iFindSampleBefore = findSampleBefore(i13, i12, j11, z10);
                    if (iFindSampleBefore == -1) {
                        return -1L;
                    }
                    return discardSamples(iFindSampleBefore);
                }
            }
            return -1L;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized long discardToEnd() {
        int i11 = this.length;
        if (i11 == 0) {
            return -1L;
        }
        return discardSamples(i11);
    }

    public synchronized long discardToRead() {
        int i11 = this.readPosition;
        if (i11 == 0) {
            return -1L;
        }
        return discardSamples(i11);
    }

    public long discardUpstreamSamples(int i11) {
        int writeIndex = getWriteIndex() - i11;
        Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.length - this.readPosition);
        int i12 = this.length - writeIndex;
        this.length = i12;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i12));
        int i13 = this.length;
        if (i13 == 0) {
            return 0L;
        }
        int relativeIndex = getRelativeIndex(i13 - 1);
        return this.offsets[relativeIndex] + ((long) this.sizes[relativeIndex]);
    }

    public synchronized boolean format(Format format) {
        try {
            if (format == null) {
                this.upstreamFormatRequired = true;
                return false;
            }
            this.upstreamFormatRequired = false;
            if (Util.areEqual(format, this.upstreamFormat)) {
                return false;
            }
            this.upstreamFormat = format;
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public int getFirstIndex() {
        return this.absoluteFirstIndex;
    }

    public synchronized long getFirstTimestampUs() {
        return this.length == 0 ? Long.MIN_VALUE : this.timesUs[this.relativeFirstIndex];
    }

    public synchronized long getLargestQueuedTimestampUs() {
        return this.largestQueuedTimestampUs;
    }

    public int getReadIndex() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public synchronized Format getUpstreamFormat() {
        return this.upstreamFormatRequired ? null : this.upstreamFormat;
    }

    public int getWriteIndex() {
        return this.absoluteFirstIndex + this.length;
    }

    public synchronized boolean hasNextSample() {
        return this.readPosition != this.length;
    }

    public int peekSourceId() {
        return hasNextSample() ? this.sourceIds[getRelativeIndex(this.readPosition)] : this.upstreamSourceId;
    }

    public synchronized int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, Format format, SampleExtrasHolder sampleExtrasHolder) {
        if (!hasNextSample()) {
            if (z11) {
                decoderInputBuffer.setFlags(4);
                return -4;
            }
            Format format2 = this.upstreamFormat;
            if (format2 == null || (!z10 && format2 == format)) {
                return -3;
            }
            formatHolder.format = format2;
            return -5;
        }
        int relativeIndex = getRelativeIndex(this.readPosition);
        if (!z10 && this.formats[relativeIndex] == format) {
            if (decoderInputBuffer.isFlagsOnly()) {
                return -3;
            }
            decoderInputBuffer.timeUs = this.timesUs[relativeIndex];
            decoderInputBuffer.setFlags(this.flags[relativeIndex]);
            sampleExtrasHolder.size = this.sizes[relativeIndex];
            sampleExtrasHolder.offset = this.offsets[relativeIndex];
            sampleExtrasHolder.cryptoData = this.cryptoDatas[relativeIndex];
            this.readPosition++;
            return -4;
        }
        formatHolder.format = this.formats[relativeIndex];
        return -5;
    }

    public void reset(boolean z10) {
        this.length = 0;
        this.absoluteFirstIndex = 0;
        this.relativeFirstIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        if (z10) {
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
        }
    }

    public synchronized void rewind() {
        this.readPosition = 0;
    }

    public synchronized boolean setReadPosition(int i11) {
        int i12 = this.absoluteFirstIndex;
        if (i12 > i11 || i11 > this.length + i12) {
            return false;
        }
        this.readPosition = i11 - i12;
        return true;
    }

    public void sourceId(int i11) {
        this.upstreamSourceId = i11;
    }
}
