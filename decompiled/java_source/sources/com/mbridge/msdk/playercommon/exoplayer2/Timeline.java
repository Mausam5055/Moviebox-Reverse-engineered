package com.mbridge.msdk.playercommon.exoplayer2;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.ads.AdPlaybackState;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Timeline {
    public static final Timeline EMPTY = new Timeline() { // from class: com.mbridge.msdk.playercommon.exoplayer2.Timeline.1
        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            return -1;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public Period getPeriod(int i11, Period period, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getPeriodCount() {
            return 0;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public Window getWindow(int i11, Window window, boolean z10, long j11) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
        public int getWindowCount() {
            return 0;
        }
    };

    public static final class Period {
        private AdPlaybackState adPlaybackState;
        public long durationUs;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public Object f36777id;
        private long positionInWindowUs;
        public Object uid;
        public int windowIndex;

        public int getAdCountInAdGroup(int i11) {
            return this.adPlaybackState.adGroups[i11].count;
        }

        public long getAdDurationUs(int i11, int i12) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.adGroups[i11];
            return adGroup.count != -1 ? adGroup.durationsUs[i12] : C.TIME_UNSET;
        }

        public int getAdGroupCount() {
            return this.adPlaybackState.adGroupCount;
        }

        public int getAdGroupIndexAfterPositionUs(long j11) {
            return this.adPlaybackState.getAdGroupIndexAfterPositionUs(j11);
        }

        public int getAdGroupIndexForPositionUs(long j11) {
            return this.adPlaybackState.getAdGroupIndexForPositionUs(j11);
        }

        public long getAdGroupTimeUs(int i11) {
            return this.adPlaybackState.adGroupTimesUs[i11];
        }

        public long getAdResumePositionUs() {
            return this.adPlaybackState.adResumePositionUs;
        }

        public long getDurationMs() {
            return C.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public int getFirstAdIndexToPlay(int i11) {
            return this.adPlaybackState.adGroups[i11].getFirstAdIndexToPlay();
        }

        public int getNextAdIndexToPlay(int i11, int i12) {
            return this.adPlaybackState.adGroups[i11].getNextAdIndexToPlay(i12);
        }

        public long getPositionInWindowMs() {
            return C.usToMs(this.positionInWindowUs);
        }

        public long getPositionInWindowUs() {
            return this.positionInWindowUs;
        }

        public boolean hasPlayedAdGroup(int i11) {
            return !this.adPlaybackState.adGroups[i11].hasUnplayedAds();
        }

        public boolean isAdAvailable(int i11, int i12) {
            AdPlaybackState.AdGroup adGroup = this.adPlaybackState.adGroups[i11];
            return (adGroup.count == -1 || adGroup.states[i12] == 0) ? false : true;
        }

        public Period set(Object obj, Object obj2, int i11, long j11, long j12) {
            return set(obj, obj2, i11, j11, j12, AdPlaybackState.NONE);
        }

        public Period set(Object obj, Object obj2, int i11, long j11, long j12, AdPlaybackState adPlaybackState) {
            this.f36777id = obj;
            this.uid = obj2;
            this.windowIndex = i11;
            this.durationUs = j11;
            this.positionInWindowUs = j12;
            this.adPlaybackState = adPlaybackState;
            return this;
        }
    }

    public static final class Window {
        public long defaultPositionUs;
        public long durationUs;
        public int firstPeriodIndex;
        public boolean isDynamic;
        public boolean isSeekable;
        public int lastPeriodIndex;
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;

        @Nullable
        public Object tag;
        public long windowStartTimeMs;

        public long getDefaultPositionMs() {
            return C.usToMs(this.defaultPositionUs);
        }

        public long getDefaultPositionUs() {
            return this.defaultPositionUs;
        }

        public long getDurationMs() {
            return C.usToMs(this.durationUs);
        }

        public long getDurationUs() {
            return this.durationUs;
        }

        public long getPositionInFirstPeriodMs() {
            return C.usToMs(this.positionInFirstPeriodUs);
        }

        public long getPositionInFirstPeriodUs() {
            return this.positionInFirstPeriodUs;
        }

        public Window set(@Nullable Object obj, long j11, long j12, boolean z10, boolean z11, long j13, long j14, int i11, int i12, long j15) {
            this.tag = obj;
            this.presentationStartTimeMs = j11;
            this.windowStartTimeMs = j12;
            this.isSeekable = z10;
            this.isDynamic = z11;
            this.defaultPositionUs = j13;
            this.durationUs = j14;
            this.firstPeriodIndex = i11;
            this.lastPeriodIndex = i12;
            this.positionInFirstPeriodUs = j15;
            return this;
        }
    }

    public int getFirstWindowIndex(boolean z10) {
        return isEmpty() ? -1 : 0;
    }

    public abstract int getIndexOfPeriod(Object obj);

    public int getLastWindowIndex(boolean z10) {
        if (isEmpty()) {
            return -1;
        }
        return getWindowCount() - 1;
    }

    public final int getNextPeriodIndex(int i11, Period period, Window window, int i12, boolean z10) {
        int i13 = getPeriod(i11, period).windowIndex;
        if (getWindow(i13, window).lastPeriodIndex != i11) {
            return i11 + 1;
        }
        int nextWindowIndex = getNextWindowIndex(i13, i12, z10);
        if (nextWindowIndex == -1) {
            return -1;
        }
        return getWindow(nextWindowIndex, window).firstPeriodIndex;
    }

    public int getNextWindowIndex(int i11, int i12, boolean z10) {
        if (i12 == 0) {
            if (i11 == getLastWindowIndex(z10)) {
                return -1;
            }
            return i11 + 1;
        }
        if (i12 == 1) {
            return i11;
        }
        if (i12 == 2) {
            return i11 == getLastWindowIndex(z10) ? getFirstWindowIndex(z10) : i11 + 1;
        }
        throw new IllegalStateException();
    }

    public final Period getPeriod(int i11, Period period) {
        return getPeriod(i11, period, false);
    }

    public abstract Period getPeriod(int i11, Period period, boolean z10);

    public abstract int getPeriodCount();

    public final Pair<Integer, Long> getPeriodPosition(Window window, Period period, int i11, long j11) {
        return getPeriodPosition(window, period, i11, j11, 0L);
    }

    public final Pair<Integer, Long> getPeriodPosition(Window window, Period period, int i11, long j11, long j12) {
        Assertions.checkIndex(i11, 0, getWindowCount());
        getWindow(i11, window, false, j12);
        if (j11 == C.TIME_UNSET) {
            j11 = window.getDefaultPositionUs();
            if (j11 == C.TIME_UNSET) {
                return null;
            }
        }
        int i12 = window.firstPeriodIndex;
        long positionInFirstPeriodUs = window.getPositionInFirstPeriodUs() + j11;
        long durationUs = getPeriod(i12, period).getDurationUs();
        while (durationUs != C.TIME_UNSET && positionInFirstPeriodUs >= durationUs && i12 < window.lastPeriodIndex) {
            positionInFirstPeriodUs -= durationUs;
            i12++;
            durationUs = getPeriod(i12, period).getDurationUs();
        }
        return Pair.create(Integer.valueOf(i12), Long.valueOf(positionInFirstPeriodUs));
    }

    public int getPreviousWindowIndex(int i11, int i12, boolean z10) {
        if (i12 == 0) {
            if (i11 == getFirstWindowIndex(z10)) {
                return -1;
            }
            return i11 - 1;
        }
        if (i12 == 1) {
            return i11;
        }
        if (i12 == 2) {
            return i11 == getFirstWindowIndex(z10) ? getLastWindowIndex(z10) : i11 - 1;
        }
        throw new IllegalStateException();
    }

    public final Window getWindow(int i11, Window window) {
        return getWindow(i11, window, false);
    }

    public final Window getWindow(int i11, Window window, boolean z10) {
        return getWindow(i11, window, z10, 0L);
    }

    public abstract Window getWindow(int i11, Window window, boolean z10, long j11);

    public abstract int getWindowCount();

    public final boolean isEmpty() {
        return getWindowCount() == 0;
    }

    public final boolean isLastPeriod(int i11, Period period, Window window, int i12, boolean z10) {
        return getNextPeriodIndex(i11, period, window, i12, z10) == -1;
    }
}
