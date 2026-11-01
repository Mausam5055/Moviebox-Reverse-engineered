package com.mbridge.msdk.playercommon.exoplayer2.source;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public final class SinglePeriodTimeline extends Timeline {
    private static final Object UID = new Object();
    private final boolean isDynamic;
    private final boolean isSeekable;
    private final long periodDurationUs;
    private final long presentationStartTimeMs;

    @Nullable
    private final Object tag;
    private final long windowDefaultStartPositionUs;
    private final long windowDurationUs;
    private final long windowPositionInPeriodUs;
    private final long windowStartTimeMs;

    public SinglePeriodTimeline(long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, @Nullable Object obj) {
        this.presentationStartTimeMs = j11;
        this.windowStartTimeMs = j12;
        this.periodDurationUs = j13;
        this.windowDurationUs = j14;
        this.windowPositionInPeriodUs = j15;
        this.windowDefaultStartPositionUs = j16;
        this.isSeekable = z10;
        this.isDynamic = z11;
        this.tag = obj;
    }

    public SinglePeriodTimeline(long j11, long j12, long j13, long j14, boolean z10, boolean z11, @Nullable Object obj) {
        this(C.TIME_UNSET, C.TIME_UNSET, j11, j12, j13, j14, z10, z11, obj);
    }

    public SinglePeriodTimeline(long j11, boolean z10, boolean z11) {
        this(j11, z10, z11, null);
    }

    public SinglePeriodTimeline(long j11, boolean z10, boolean z11, @Nullable Object obj) {
        this(j11, j11, 0L, 0L, z10, z11, obj);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public int getIndexOfPeriod(Object obj) {
        return UID.equals(obj) ? 0 : -1;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public Timeline.Period getPeriod(int i11, Timeline.Period period, boolean z10) {
        Assertions.checkIndex(i11, 0, 1);
        return period.set(null, z10 ? UID : null, 0, this.periodDurationUs, -this.windowPositionInPeriodUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public int getPeriodCount() {
        return 1;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0031 A[PHI: r1
  0x0031: PHI (r1v4 long) = (r1v3 long), (r1v3 long), (r1v7 long) binds: [B:8:0x0015, B:10:0x001b, B:15:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public Timeline.Window getWindow(int i11, Timeline.Window window, boolean z10, long j11) {
        long j12;
        Assertions.checkIndex(i11, 0, 1);
        Object obj = z10 ? this.tag : null;
        long j13 = this.windowDefaultStartPositionUs;
        boolean z11 = this.isDynamic;
        if (!z11 || j11 == 0) {
            j12 = j13;
        } else {
            long j14 = this.windowDurationUs;
            if (j14 != C.TIME_UNSET) {
                j13 += j11;
                if (j13 <= j14) {
                    j12 = j13;
                }
            }
            j12 = -9223372036854775807L;
        }
        return window.set(obj, this.presentationStartTimeMs, this.windowStartTimeMs, this.isSeekable, z11, j12, this.windowDurationUs, 0, 0, this.windowPositionInPeriodUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public int getWindowCount() {
        return 1;
    }
}
