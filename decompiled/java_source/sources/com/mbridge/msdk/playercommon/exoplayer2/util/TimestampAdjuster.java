package com.mbridge.msdk.playercommon.exoplayer2.util;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes5.dex */
public final class TimestampAdjuster {
    public static final long DO_NOT_OFFSET = Long.MAX_VALUE;
    private static final long MAX_PTS_PLUS_ONE = 8589934592L;
    private long firstSampleTimestampUs;
    private volatile long lastSampleTimestampUs = C.TIME_UNSET;
    private long timestampOffsetUs;

    public TimestampAdjuster(long j11) {
        setFirstSampleTimestampUs(j11);
    }

    public static long ptsToUs(long j11) {
        return (j11 * 1000000) / 90000;
    }

    public static long usToPts(long j11) {
        return (j11 * 90000) / 1000000;
    }

    public long adjustSampleTimestamp(long j11) {
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.lastSampleTimestampUs != C.TIME_UNSET) {
            this.lastSampleTimestampUs = j11;
        } else {
            long j12 = this.firstSampleTimestampUs;
            if (j12 != Long.MAX_VALUE) {
                this.timestampOffsetUs = j12 - j11;
            }
            synchronized (this) {
                this.lastSampleTimestampUs = j11;
                notifyAll();
            }
        }
        return j11 + this.timestampOffsetUs;
    }

    public long adjustTsTimestamp(long j11) {
        if (j11 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.lastSampleTimestampUs != C.TIME_UNSET) {
            long jUsToPts = usToPts(this.lastSampleTimestampUs);
            long j12 = (TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE + jUsToPts) / MAX_PTS_PLUS_ONE;
            long j13 = ((j12 - 1) * MAX_PTS_PLUS_ONE) + j11;
            j11 += j12 * MAX_PTS_PLUS_ONE;
            if (Math.abs(j13 - jUsToPts) < Math.abs(j11 - jUsToPts)) {
                j11 = j13;
            }
        }
        return adjustSampleTimestamp(ptsToUs(j11));
    }

    public long getFirstSampleTimestampUs() {
        return this.firstSampleTimestampUs;
    }

    public long getLastAdjustedTimestampUs() {
        if (this.lastSampleTimestampUs != C.TIME_UNSET) {
            return this.timestampOffsetUs + this.lastSampleTimestampUs;
        }
        long j11 = this.firstSampleTimestampUs;
        return j11 != Long.MAX_VALUE ? j11 : C.TIME_UNSET;
    }

    public long getTimestampOffsetUs() {
        if (this.firstSampleTimestampUs == Long.MAX_VALUE) {
            return 0L;
        }
        return this.lastSampleTimestampUs == C.TIME_UNSET ? C.TIME_UNSET : this.timestampOffsetUs;
    }

    public void reset() {
        this.lastSampleTimestampUs = C.TIME_UNSET;
    }

    public synchronized void setFirstSampleTimestampUs(long j11) {
        Assertions.checkState(this.lastSampleTimestampUs == C.TIME_UNSET);
        this.firstSampleTimestampUs = j11;
    }

    public synchronized void waitUntilInitialized() throws InterruptedException {
        while (this.lastSampleTimestampUs == C.TIME_UNSET) {
            wait();
        }
    }
}
