package com.mbridge.msdk.playercommon.exoplayer2;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
final class MediaPeriodQueue {
    private static final int MAXIMUM_BUFFER_AHEAD_PERIODS = 100;
    private int length;
    private MediaPeriodHolder loading;
    private long nextWindowSequenceNumber;
    private Object oldFrontPeriodUid;
    private long oldFrontPeriodWindowSequenceNumber;
    private MediaPeriodHolder playing;
    private MediaPeriodHolder reading;
    private int repeatMode;
    private boolean shuffleModeEnabled;
    private Timeline timeline;
    private final Timeline.Period period = new Timeline.Period();
    private final Timeline.Window window = new Timeline.Window();

    private boolean canKeepMediaPeriodHolder(MediaPeriodHolder mediaPeriodHolder, MediaPeriodInfo mediaPeriodInfo) {
        MediaPeriodInfo mediaPeriodInfo2 = mediaPeriodHolder.info;
        return mediaPeriodInfo2.startPositionUs == mediaPeriodInfo.startPositionUs && mediaPeriodInfo2.endPositionUs == mediaPeriodInfo.endPositionUs && mediaPeriodInfo2.f36776id.equals(mediaPeriodInfo.f36776id);
    }

    private MediaPeriodInfo getFirstMediaPeriodInfo(PlaybackInfo playbackInfo) {
        return getMediaPeriodInfo(playbackInfo.periodId, playbackInfo.contentPositionUs, playbackInfo.startPositionUs);
    }

    @Nullable
    private MediaPeriodInfo getFollowingMediaPeriodInfo(MediaPeriodHolder mediaPeriodHolder, long j11) {
        int i11;
        long j12;
        long j13;
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        if (mediaPeriodInfo.isLastInTimelinePeriod) {
            int nextPeriodIndex = this.timeline.getNextPeriodIndex(mediaPeriodInfo.f36776id.periodIndex, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            if (nextPeriodIndex == -1) {
                return null;
            }
            int i12 = this.timeline.getPeriod(nextPeriodIndex, this.period, true).windowIndex;
            Object obj = this.period.uid;
            long j14 = mediaPeriodInfo.f36776id.windowSequenceNumber;
            long j15 = 0;
            if (this.timeline.getWindow(i12, this.window).firstPeriodIndex == nextPeriodIndex) {
                Pair<Integer, Long> periodPosition = this.timeline.getPeriodPosition(this.window, this.period, i12, C.TIME_UNSET, Math.max(0L, (mediaPeriodHolder.getRendererOffset() + mediaPeriodInfo.durationUs) - j11));
                if (periodPosition == null) {
                    return null;
                }
                int iIntValue = ((Integer) periodPosition.first).intValue();
                long jLongValue = ((Long) periodPosition.second).longValue();
                MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder.next;
                if (mediaPeriodHolder2 == null || !mediaPeriodHolder2.uid.equals(obj)) {
                    j13 = this.nextWindowSequenceNumber;
                    this.nextWindowSequenceNumber = 1 + j13;
                } else {
                    j13 = mediaPeriodHolder.next.info.f36776id.windowSequenceNumber;
                }
                j15 = jLongValue;
                j12 = j13;
                i11 = iIntValue;
            } else {
                i11 = nextPeriodIndex;
                j12 = j14;
            }
            long j16 = j15;
            return getMediaPeriodInfo(resolveMediaPeriodIdForAds(i11, j16, j12), j16, j15);
        }
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f36776id;
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        if (mediaPeriodId.isAd()) {
            int i13 = mediaPeriodId.adGroupIndex;
            int adCountInAdGroup = this.period.getAdCountInAdGroup(i13);
            if (adCountInAdGroup == -1) {
                return null;
            }
            int nextAdIndexToPlay = this.period.getNextAdIndexToPlay(i13, mediaPeriodId.adIndexInAdGroup);
            if (nextAdIndexToPlay >= adCountInAdGroup) {
                return getMediaPeriodInfoForContent(mediaPeriodId.periodIndex, mediaPeriodInfo.contentPositionUs, mediaPeriodId.windowSequenceNumber);
            }
            if (this.period.isAdAvailable(i13, nextAdIndexToPlay)) {
                return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, i13, nextAdIndexToPlay, mediaPeriodInfo.contentPositionUs, mediaPeriodId.windowSequenceNumber);
            }
            return null;
        }
        long j17 = mediaPeriodInfo.endPositionUs;
        if (j17 != Long.MIN_VALUE) {
            int adGroupIndexForPositionUs = this.period.getAdGroupIndexForPositionUs(j17);
            if (adGroupIndexForPositionUs == -1) {
                return getMediaPeriodInfoForContent(mediaPeriodId.periodIndex, mediaPeriodInfo.endPositionUs, mediaPeriodId.windowSequenceNumber);
            }
            int firstAdIndexToPlay = this.period.getFirstAdIndexToPlay(adGroupIndexForPositionUs);
            if (this.period.isAdAvailable(adGroupIndexForPositionUs, firstAdIndexToPlay)) {
                return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, adGroupIndexForPositionUs, firstAdIndexToPlay, mediaPeriodInfo.endPositionUs, mediaPeriodId.windowSequenceNumber);
            }
            return null;
        }
        int adGroupCount = this.period.getAdGroupCount();
        if (adGroupCount == 0) {
            return null;
        }
        int i14 = adGroupCount - 1;
        if (this.period.getAdGroupTimeUs(i14) != Long.MIN_VALUE || this.period.hasPlayedAdGroup(i14)) {
            return null;
        }
        int firstAdIndexToPlay2 = this.period.getFirstAdIndexToPlay(i14);
        if (!this.period.isAdAvailable(i14, firstAdIndexToPlay2)) {
            return null;
        }
        return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, i14, firstAdIndexToPlay2, this.period.getDurationUs(), mediaPeriodId.windowSequenceNumber);
    }

    private MediaPeriodInfo getMediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, long j11, long j12) {
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        if (!mediaPeriodId.isAd()) {
            return getMediaPeriodInfoForContent(mediaPeriodId.periodIndex, j12, mediaPeriodId.windowSequenceNumber);
        }
        if (this.period.isAdAvailable(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup)) {
            return getMediaPeriodInfoForAd(mediaPeriodId.periodIndex, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j11, mediaPeriodId.windowSequenceNumber);
        }
        return null;
    }

    private MediaPeriodInfo getMediaPeriodInfoForAd(int i11, int i12, int i13, long j11, long j12) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(i11, i12, i13, j12);
        boolean zIsLastInPeriod = isLastInPeriod(mediaPeriodId, Long.MIN_VALUE);
        boolean zIsLastInTimeline = isLastInTimeline(mediaPeriodId, zIsLastInPeriod);
        return new MediaPeriodInfo(mediaPeriodId, i13 == this.period.getFirstAdIndexToPlay(i12) ? this.period.getAdResumePositionUs() : 0L, Long.MIN_VALUE, j11, this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period).getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup), zIsLastInPeriod, zIsLastInTimeline);
    }

    private MediaPeriodInfo getMediaPeriodInfoForContent(int i11, long j11, long j12) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(i11, j12);
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        int adGroupIndexAfterPositionUs = this.period.getAdGroupIndexAfterPositionUs(j11);
        long adGroupTimeUs = adGroupIndexAfterPositionUs == -1 ? Long.MIN_VALUE : this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
        boolean zIsLastInPeriod = isLastInPeriod(mediaPeriodId, adGroupTimeUs);
        return new MediaPeriodInfo(mediaPeriodId, j11, adGroupTimeUs, C.TIME_UNSET, adGroupTimeUs == Long.MIN_VALUE ? this.period.getDurationUs() : adGroupTimeUs, zIsLastInPeriod, isLastInTimeline(mediaPeriodId, zIsLastInPeriod));
    }

    private MediaPeriodInfo getUpdatedMediaPeriodInfo(MediaPeriodInfo mediaPeriodInfo, MediaSource.MediaPeriodId mediaPeriodId) {
        long j11;
        long durationUs;
        long j12 = mediaPeriodInfo.startPositionUs;
        long j13 = mediaPeriodInfo.endPositionUs;
        boolean zIsLastInPeriod = isLastInPeriod(mediaPeriodId, j13);
        boolean zIsLastInTimeline = isLastInTimeline(mediaPeriodId, zIsLastInPeriod);
        this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        if (!mediaPeriodId.isAd()) {
            if (j13 == Long.MIN_VALUE) {
                durationUs = this.period.getDurationUs();
            } else {
                j11 = j13;
            }
            return new MediaPeriodInfo(mediaPeriodId, j12, j13, mediaPeriodInfo.contentPositionUs, j11, zIsLastInPeriod, zIsLastInTimeline);
        }
        durationUs = this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        j11 = durationUs;
        return new MediaPeriodInfo(mediaPeriodId, j12, j13, mediaPeriodInfo.contentPositionUs, j11, zIsLastInPeriod, zIsLastInTimeline);
    }

    private boolean isLastInPeriod(MediaSource.MediaPeriodId mediaPeriodId, long j11) {
        int adGroupCount = this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period).getAdGroupCount();
        if (adGroupCount == 0) {
            return true;
        }
        int i11 = adGroupCount - 1;
        boolean zIsAd = mediaPeriodId.isAd();
        if (this.period.getAdGroupTimeUs(i11) != Long.MIN_VALUE) {
            return !zIsAd && j11 == Long.MIN_VALUE;
        }
        int adCountInAdGroup = this.period.getAdCountInAdGroup(i11);
        if (adCountInAdGroup == -1) {
            return false;
        }
        if (zIsAd && mediaPeriodId.adGroupIndex == i11 && mediaPeriodId.adIndexInAdGroup == adCountInAdGroup - 1) {
            return true;
        }
        return !zIsAd && this.period.getFirstAdIndexToPlay(i11) == adCountInAdGroup;
    }

    private boolean isLastInTimeline(MediaSource.MediaPeriodId mediaPeriodId, boolean z10) {
        return !this.timeline.getWindow(this.timeline.getPeriod(mediaPeriodId.periodIndex, this.period).windowIndex, this.window).isDynamic && this.timeline.isLastPeriod(mediaPeriodId.periodIndex, this.period, this.window, this.repeatMode, this.shuffleModeEnabled) && z10;
    }

    private MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(int i11, long j11, long j12) {
        this.timeline.getPeriod(i11, this.period);
        int adGroupIndexForPositionUs = this.period.getAdGroupIndexForPositionUs(j11);
        return adGroupIndexForPositionUs == -1 ? new MediaSource.MediaPeriodId(i11, j12) : new MediaSource.MediaPeriodId(i11, adGroupIndexForPositionUs, this.period.getFirstAdIndexToPlay(adGroupIndexForPositionUs), j12);
    }

    private long resolvePeriodIndexToWindowSequenceNumber(int i11) {
        int indexOfPeriod;
        Object obj = this.timeline.getPeriod(i11, this.period, true).uid;
        int i12 = this.period.windowIndex;
        Object obj2 = this.oldFrontPeriodUid;
        if (obj2 != null && (indexOfPeriod = this.timeline.getIndexOfPeriod(obj2)) != -1 && this.timeline.getPeriod(indexOfPeriod, this.period).windowIndex == i12) {
            return this.oldFrontPeriodWindowSequenceNumber;
        }
        for (MediaPeriodHolder frontPeriod = getFrontPeriod(); frontPeriod != null; frontPeriod = frontPeriod.next) {
            if (frontPeriod.uid.equals(obj)) {
                return frontPeriod.info.f36776id.windowSequenceNumber;
            }
        }
        for (MediaPeriodHolder frontPeriod2 = getFrontPeriod(); frontPeriod2 != null; frontPeriod2 = frontPeriod2.next) {
            int indexOfPeriod2 = this.timeline.getIndexOfPeriod(frontPeriod2.uid);
            if (indexOfPeriod2 != -1 && this.timeline.getPeriod(indexOfPeriod2, this.period).windowIndex == i12) {
                return frontPeriod2.info.f36776id.windowSequenceNumber;
            }
        }
        long j11 = this.nextWindowSequenceNumber;
        this.nextWindowSequenceNumber = 1 + j11;
        return j11;
    }

    private boolean updateForPlaybackModeChange() {
        MediaPeriodHolder mediaPeriodHolder;
        MediaPeriodHolder frontPeriod = getFrontPeriod();
        if (frontPeriod == null) {
            return true;
        }
        while (true) {
            int nextPeriodIndex = this.timeline.getNextPeriodIndex(frontPeriod.info.f36776id.periodIndex, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            while (true) {
                mediaPeriodHolder = frontPeriod.next;
                if (mediaPeriodHolder == null || frontPeriod.info.isLastInTimelinePeriod) {
                    break;
                }
                frontPeriod = mediaPeriodHolder;
            }
            if (nextPeriodIndex == -1 || mediaPeriodHolder == null || mediaPeriodHolder.info.f36776id.periodIndex != nextPeriodIndex) {
                break;
            }
            frontPeriod = mediaPeriodHolder;
        }
        boolean zRemoveAfter = removeAfter(frontPeriod);
        MediaPeriodInfo mediaPeriodInfo = frontPeriod.info;
        frontPeriod.info = getUpdatedMediaPeriodInfo(mediaPeriodInfo, mediaPeriodInfo.f36776id);
        return (zRemoveAfter && hasPlayingPeriod()) ? false : true;
    }

    public MediaPeriodHolder advancePlayingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.playing;
        if (mediaPeriodHolder != null) {
            if (mediaPeriodHolder == this.reading) {
                this.reading = mediaPeriodHolder.next;
            }
            mediaPeriodHolder.release();
            int i11 = this.length - 1;
            this.length = i11;
            if (i11 == 0) {
                this.loading = null;
                MediaPeriodHolder mediaPeriodHolder2 = this.playing;
                this.oldFrontPeriodUid = mediaPeriodHolder2.uid;
                this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolder2.info.f36776id.windowSequenceNumber;
            }
            this.playing = this.playing.next;
        } else {
            MediaPeriodHolder mediaPeriodHolder3 = this.loading;
            this.playing = mediaPeriodHolder3;
            this.reading = mediaPeriodHolder3;
        }
        return this.playing;
    }

    public MediaPeriodHolder advanceReadingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.reading;
        Assertions.checkState((mediaPeriodHolder == null || mediaPeriodHolder.next == null) ? false : true);
        MediaPeriodHolder mediaPeriodHolder2 = this.reading.next;
        this.reading = mediaPeriodHolder2;
        return mediaPeriodHolder2;
    }

    public void clear(boolean z10) {
        MediaPeriodHolder frontPeriod = getFrontPeriod();
        if (frontPeriod != null) {
            this.oldFrontPeriodUid = z10 ? frontPeriod.uid : null;
            this.oldFrontPeriodWindowSequenceNumber = frontPeriod.info.f36776id.windowSequenceNumber;
            frontPeriod.release();
            removeAfter(frontPeriod);
        } else if (!z10) {
            this.oldFrontPeriodUid = null;
        }
        this.playing = null;
        this.loading = null;
        this.reading = null;
        this.length = 0;
    }

    public MediaPeriod enqueueNextMediaPeriod(RendererCapabilities[] rendererCapabilitiesArr, TrackSelector trackSelector, Allocator allocator, MediaSource mediaSource, Object obj, MediaPeriodInfo mediaPeriodInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        MediaPeriodHolder mediaPeriodHolder2 = new MediaPeriodHolder(rendererCapabilitiesArr, mediaPeriodHolder == null ? mediaPeriodInfo.startPositionUs : mediaPeriodHolder.getRendererOffset() + this.loading.info.durationUs, trackSelector, allocator, mediaSource, obj, mediaPeriodInfo);
        if (this.loading != null) {
            Assertions.checkState(hasPlayingPeriod());
            this.loading.next = mediaPeriodHolder2;
        }
        this.oldFrontPeriodUid = null;
        this.loading = mediaPeriodHolder2;
        this.length++;
        return mediaPeriodHolder2.mediaPeriod;
    }

    public MediaPeriodHolder getFrontPeriod() {
        return hasPlayingPeriod() ? this.playing : this.loading;
    }

    public MediaPeriodHolder getLoadingPeriod() {
        return this.loading;
    }

    @Nullable
    public MediaPeriodInfo getNextMediaPeriodInfo(long j11, PlaybackInfo playbackInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null ? getFirstMediaPeriodInfo(playbackInfo) : getFollowingMediaPeriodInfo(mediaPeriodHolder, j11);
    }

    public MediaPeriodHolder getPlayingPeriod() {
        return this.playing;
    }

    public MediaPeriodHolder getReadingPeriod() {
        return this.reading;
    }

    public MediaPeriodInfo getUpdatedMediaPeriodInfo(MediaPeriodInfo mediaPeriodInfo, int i11) {
        return getUpdatedMediaPeriodInfo(mediaPeriodInfo, mediaPeriodInfo.f36776id.copyWithPeriodIndex(i11));
    }

    public boolean hasPlayingPeriod() {
        return this.playing != null;
    }

    public boolean isLoading(MediaPeriod mediaPeriod) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder != null && mediaPeriodHolder.mediaPeriod == mediaPeriod;
    }

    public void reevaluateBuffer(long j11) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            mediaPeriodHolder.reevaluateBuffer(j11);
        }
    }

    public boolean removeAfter(MediaPeriodHolder mediaPeriodHolder) {
        boolean z10 = false;
        Assertions.checkState(mediaPeriodHolder != null);
        this.loading = mediaPeriodHolder;
        while (true) {
            mediaPeriodHolder = mediaPeriodHolder.next;
            if (mediaPeriodHolder == null) {
                this.loading.next = null;
                return z10;
            }
            if (mediaPeriodHolder == this.reading) {
                this.reading = this.playing;
                z10 = true;
            }
            mediaPeriodHolder.release();
            this.length--;
        }
    }

    public MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(int i11, long j11) {
        return resolveMediaPeriodIdForAds(i11, j11, resolvePeriodIndexToWindowSequenceNumber(i11));
    }

    public void setTimeline(Timeline timeline) {
        this.timeline = timeline;
    }

    public boolean shouldLoadNextMediaPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null || (!mediaPeriodHolder.info.isFinal && mediaPeriodHolder.isFullyBuffered() && this.loading.info.durationUs != C.TIME_UNSET && this.length < 100);
    }

    public boolean updateQueuedPeriods(MediaSource.MediaPeriodId mediaPeriodId, long j11) {
        boolean zRemoveAfter;
        int i11 = mediaPeriodId.periodIndex;
        MediaPeriodHolder mediaPeriodHolder = null;
        int nextPeriodIndex = i11;
        for (MediaPeriodHolder frontPeriod = getFrontPeriod(); frontPeriod != null; frontPeriod = frontPeriod.next) {
            if (mediaPeriodHolder != null) {
                if (nextPeriodIndex == -1 || !frontPeriod.uid.equals(this.timeline.getPeriod(nextPeriodIndex, this.period, true).uid)) {
                    zRemoveAfter = removeAfter(mediaPeriodHolder);
                } else {
                    MediaPeriodInfo followingMediaPeriodInfo = getFollowingMediaPeriodInfo(mediaPeriodHolder, j11);
                    if (followingMediaPeriodInfo == null) {
                        zRemoveAfter = removeAfter(mediaPeriodHolder);
                    } else {
                        frontPeriod.info = getUpdatedMediaPeriodInfo(frontPeriod.info, nextPeriodIndex);
                        if (!canKeepMediaPeriodHolder(frontPeriod, followingMediaPeriodInfo)) {
                            zRemoveAfter = removeAfter(mediaPeriodHolder);
                        }
                    }
                }
                return true ^ zRemoveAfter;
            }
            frontPeriod.info = getUpdatedMediaPeriodInfo(frontPeriod.info, nextPeriodIndex);
            if (frontPeriod.info.isLastInTimelinePeriod) {
                nextPeriodIndex = this.timeline.getNextPeriodIndex(nextPeriodIndex, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            }
            mediaPeriodHolder = frontPeriod;
        }
        return true;
    }

    public boolean updateRepeatMode(int i11) {
        this.repeatMode = i11;
        return updateForPlaybackModeChange();
    }

    public boolean updateShuffleModeEnabled(boolean z10) {
        this.shuffleModeEnabled = z10;
        return updateForPlaybackModeChange();
    }
}
