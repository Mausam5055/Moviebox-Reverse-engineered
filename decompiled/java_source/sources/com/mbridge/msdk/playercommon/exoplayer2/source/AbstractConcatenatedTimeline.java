package com.mbridge.msdk.playercommon.exoplayer2.source;

import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractConcatenatedTimeline extends Timeline {
    private final int childCount;
    private final boolean isAtomic;
    private final ShuffleOrder shuffleOrder;

    public AbstractConcatenatedTimeline(boolean z10, ShuffleOrder shuffleOrder) {
        this.isAtomic = z10;
        this.shuffleOrder = shuffleOrder;
        this.childCount = shuffleOrder.getLength();
    }

    private int getNextChildIndex(int i11, boolean z10) {
        if (z10) {
            return this.shuffleOrder.getNextIndex(i11);
        }
        if (i11 < this.childCount - 1) {
            return i11 + 1;
        }
        return -1;
    }

    private int getPreviousChildIndex(int i11, boolean z10) {
        if (z10) {
            return this.shuffleOrder.getPreviousIndex(i11);
        }
        if (i11 > 0) {
            return i11 - 1;
        }
        return -1;
    }

    protected abstract int getChildIndexByChildUid(Object obj);

    protected abstract int getChildIndexByPeriodIndex(int i11);

    protected abstract int getChildIndexByWindowIndex(int i11);

    protected abstract Object getChildUidByChildIndex(int i11);

    protected abstract int getFirstPeriodIndexByChildIndex(int i11);

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public int getFirstWindowIndex(boolean z10) {
        if (this.childCount == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z10 = false;
        }
        int firstIndex = z10 ? this.shuffleOrder.getFirstIndex() : 0;
        while (getTimelineByChildIndex(firstIndex).isEmpty()) {
            firstIndex = getNextChildIndex(firstIndex, z10);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return getFirstWindowIndexByChildIndex(firstIndex) + getTimelineByChildIndex(firstIndex).getFirstWindowIndex(z10);
    }

    protected abstract int getFirstWindowIndexByChildIndex(int i11);

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public final int getIndexOfPeriod(Object obj) {
        int indexOfPeriod;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int childIndexByChildUid = getChildIndexByChildUid(obj2);
        if (childIndexByChildUid == -1 || (indexOfPeriod = getTimelineByChildIndex(childIndexByChildUid).getIndexOfPeriod(obj3)) == -1) {
            return -1;
        }
        return getFirstPeriodIndexByChildIndex(childIndexByChildUid) + indexOfPeriod;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public int getLastWindowIndex(boolean z10) {
        int i11 = this.childCount;
        if (i11 == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z10 = false;
        }
        int lastIndex = z10 ? this.shuffleOrder.getLastIndex() : i11 - 1;
        while (getTimelineByChildIndex(lastIndex).isEmpty()) {
            lastIndex = getPreviousChildIndex(lastIndex, z10);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return getFirstWindowIndexByChildIndex(lastIndex) + getTimelineByChildIndex(lastIndex).getLastWindowIndex(z10);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public int getNextWindowIndex(int i11, int i12, boolean z10) {
        if (this.isAtomic) {
            if (i12 == 1) {
                i12 = 2;
            }
            z10 = false;
        }
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i11);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        int nextWindowIndex = getTimelineByChildIndex(childIndexByWindowIndex).getNextWindowIndex(i11 - firstWindowIndexByChildIndex, i12 != 2 ? i12 : 0, z10);
        if (nextWindowIndex != -1) {
            return firstWindowIndexByChildIndex + nextWindowIndex;
        }
        int nextChildIndex = getNextChildIndex(childIndexByWindowIndex, z10);
        while (nextChildIndex != -1 && getTimelineByChildIndex(nextChildIndex).isEmpty()) {
            nextChildIndex = getNextChildIndex(nextChildIndex, z10);
        }
        if (nextChildIndex != -1) {
            return getFirstWindowIndexByChildIndex(nextChildIndex) + getTimelineByChildIndex(nextChildIndex).getFirstWindowIndex(z10);
        }
        if (i12 == 2) {
            return getFirstWindowIndex(z10);
        }
        return -1;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public final Timeline.Period getPeriod(int i11, Timeline.Period period, boolean z10) {
        int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i11);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByPeriodIndex);
        getTimelineByChildIndex(childIndexByPeriodIndex).getPeriod(i11 - getFirstPeriodIndexByChildIndex(childIndexByPeriodIndex), period, z10);
        period.windowIndex += firstWindowIndexByChildIndex;
        if (z10) {
            period.uid = Pair.create(getChildUidByChildIndex(childIndexByPeriodIndex), period.uid);
        }
        return period;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public int getPreviousWindowIndex(int i11, int i12, boolean z10) {
        if (this.isAtomic) {
            if (i12 == 1) {
                i12 = 2;
            }
            z10 = false;
        }
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i11);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        int previousWindowIndex = getTimelineByChildIndex(childIndexByWindowIndex).getPreviousWindowIndex(i11 - firstWindowIndexByChildIndex, i12 != 2 ? i12 : 0, z10);
        if (previousWindowIndex != -1) {
            return firstWindowIndexByChildIndex + previousWindowIndex;
        }
        int previousChildIndex = getPreviousChildIndex(childIndexByWindowIndex, z10);
        while (previousChildIndex != -1 && getTimelineByChildIndex(previousChildIndex).isEmpty()) {
            previousChildIndex = getPreviousChildIndex(previousChildIndex, z10);
        }
        if (previousChildIndex != -1) {
            return getFirstWindowIndexByChildIndex(previousChildIndex) + getTimelineByChildIndex(previousChildIndex).getLastWindowIndex(z10);
        }
        if (i12 == 2) {
            return getLastWindowIndex(z10);
        }
        return -1;
    }

    protected abstract Timeline getTimelineByChildIndex(int i11);

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Timeline
    public final Timeline.Window getWindow(int i11, Timeline.Window window, boolean z10, long j11) {
        int childIndexByWindowIndex = getChildIndexByWindowIndex(i11);
        int firstWindowIndexByChildIndex = getFirstWindowIndexByChildIndex(childIndexByWindowIndex);
        int firstPeriodIndexByChildIndex = getFirstPeriodIndexByChildIndex(childIndexByWindowIndex);
        getTimelineByChildIndex(childIndexByWindowIndex).getWindow(i11 - firstWindowIndexByChildIndex, window, z10, j11);
        window.firstPeriodIndex += firstPeriodIndexByChildIndex;
        window.lastPeriodIndex += firstPeriodIndexByChildIndex;
        return window;
    }
}
