package com.mbridge.msdk.playercommon.exoplayer2.analytics;

import android.net.NetworkInfo;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.Player;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderCounters;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DefaultDrmSessionEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataOutput;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.BandwidthMeter;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Clock;
import com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes5.dex */
public class AnalyticsCollector implements Player.EventListener, MetadataOutput, AudioRendererEventListener, VideoRendererEventListener, MediaSourceEventListener, BandwidthMeter.EventListener, DefaultDrmSessionEventListener {
    private final Clock clock;

    @Nullable
    private Player player;
    private final CopyOnWriteArraySet<AnalyticsListener> listeners = new CopyOnWriteArraySet<>();
    private final MediaPeriodQueueTracker mediaPeriodQueueTracker = new MediaPeriodQueueTracker();
    private final Timeline.Window window = new Timeline.Window();

    public static class Factory {
        public AnalyticsCollector createAnalyticsCollector(@Nullable Player player, Clock clock) {
            return new AnalyticsCollector(player, clock);
        }
    }

    private static final class MediaPeriodQueueTracker {
        private boolean isSeeking;
        private WindowAndMediaPeriodId lastReportedPlayingMediaPeriod;
        private WindowAndMediaPeriodId readingMediaPeriod;
        private final ArrayList<WindowAndMediaPeriodId> activeMediaPeriods = new ArrayList<>();
        private final Timeline.Period period = new Timeline.Period();
        private Timeline timeline = Timeline.EMPTY;

        private void updateLastReportedPlayingMediaPeriod() {
            if (this.activeMediaPeriods.isEmpty()) {
                return;
            }
            this.lastReportedPlayingMediaPeriod = this.activeMediaPeriods.get(0);
        }

        private WindowAndMediaPeriodId updateMediaPeriodToNewTimeline(WindowAndMediaPeriodId windowAndMediaPeriodId, Timeline timeline) {
            int indexOfPeriod;
            return (timeline.isEmpty() || this.timeline.isEmpty() || (indexOfPeriod = timeline.getIndexOfPeriod(this.timeline.getPeriod(windowAndMediaPeriodId.mediaPeriodId.periodIndex, this.period, true).uid)) == -1) ? windowAndMediaPeriodId : new WindowAndMediaPeriodId(timeline.getPeriod(indexOfPeriod, this.period).windowIndex, windowAndMediaPeriodId.mediaPeriodId.copyWithPeriodIndex(indexOfPeriod));
        }

        @Nullable
        public WindowAndMediaPeriodId getLastReportedPlayingMediaPeriod() {
            return this.lastReportedPlayingMediaPeriod;
        }

        @Nullable
        public WindowAndMediaPeriodId getLoadingMediaPeriod() {
            if (this.activeMediaPeriods.isEmpty()) {
                return null;
            }
            ArrayList<WindowAndMediaPeriodId> arrayList = this.activeMediaPeriods;
            return arrayList.get(arrayList.size() - 1);
        }

        @Nullable
        public WindowAndMediaPeriodId getPlayingMediaPeriod() {
            if (this.activeMediaPeriods.isEmpty() || this.timeline.isEmpty() || this.isSeeking) {
                return null;
            }
            return this.activeMediaPeriods.get(0);
        }

        @Nullable
        public WindowAndMediaPeriodId getReadingMediaPeriod() {
            return this.readingMediaPeriod;
        }

        public boolean isSeeking() {
            return this.isSeeking;
        }

        public void onMediaPeriodCreated(int i11, MediaSource.MediaPeriodId mediaPeriodId) {
            this.activeMediaPeriods.add(new WindowAndMediaPeriodId(i11, mediaPeriodId));
            if (this.activeMediaPeriods.size() != 1 || this.timeline.isEmpty()) {
                return;
            }
            updateLastReportedPlayingMediaPeriod();
        }

        public void onMediaPeriodReleased(int i11, MediaSource.MediaPeriodId mediaPeriodId) {
            WindowAndMediaPeriodId windowAndMediaPeriodId = new WindowAndMediaPeriodId(i11, mediaPeriodId);
            this.activeMediaPeriods.remove(windowAndMediaPeriodId);
            if (windowAndMediaPeriodId.equals(this.readingMediaPeriod)) {
                this.readingMediaPeriod = this.activeMediaPeriods.isEmpty() ? null : this.activeMediaPeriods.get(0);
            }
        }

        public void onPositionDiscontinuity(int i11) {
            updateLastReportedPlayingMediaPeriod();
        }

        public void onReadingStarted(int i11, MediaSource.MediaPeriodId mediaPeriodId) {
            this.readingMediaPeriod = new WindowAndMediaPeriodId(i11, mediaPeriodId);
        }

        public void onSeekProcessed() {
            this.isSeeking = false;
            updateLastReportedPlayingMediaPeriod();
        }

        public void onSeekStarted() {
            this.isSeeking = true;
        }

        public void onTimelineChanged(Timeline timeline) {
            for (int i11 = 0; i11 < this.activeMediaPeriods.size(); i11++) {
                ArrayList<WindowAndMediaPeriodId> arrayList = this.activeMediaPeriods;
                arrayList.set(i11, updateMediaPeriodToNewTimeline(arrayList.get(i11), timeline));
            }
            WindowAndMediaPeriodId windowAndMediaPeriodId = this.readingMediaPeriod;
            if (windowAndMediaPeriodId != null) {
                this.readingMediaPeriod = updateMediaPeriodToNewTimeline(windowAndMediaPeriodId, timeline);
            }
            this.timeline = timeline;
            updateLastReportedPlayingMediaPeriod();
        }

        @Nullable
        public MediaSource.MediaPeriodId tryResolveWindowIndex(int i11) {
            Timeline timeline = this.timeline;
            if (timeline == null) {
                return null;
            }
            int periodCount = timeline.getPeriodCount();
            MediaSource.MediaPeriodId mediaPeriodId = null;
            for (int i12 = 0; i12 < this.activeMediaPeriods.size(); i12++) {
                WindowAndMediaPeriodId windowAndMediaPeriodId = this.activeMediaPeriods.get(i12);
                int i13 = windowAndMediaPeriodId.mediaPeriodId.periodIndex;
                if (i13 < periodCount && this.timeline.getPeriod(i13, this.period).windowIndex == i11) {
                    if (mediaPeriodId != null) {
                        return null;
                    }
                    mediaPeriodId = windowAndMediaPeriodId.mediaPeriodId;
                }
            }
            return mediaPeriodId;
        }
    }

    private static final class WindowAndMediaPeriodId {
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        public WindowAndMediaPeriodId(int i11, MediaSource.MediaPeriodId mediaPeriodId) {
            this.windowIndex = i11;
            this.mediaPeriodId = mediaPeriodId;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || WindowAndMediaPeriodId.class != obj.getClass()) {
                return false;
            }
            WindowAndMediaPeriodId windowAndMediaPeriodId = (WindowAndMediaPeriodId) obj;
            return this.windowIndex == windowAndMediaPeriodId.windowIndex && this.mediaPeriodId.equals(windowAndMediaPeriodId.mediaPeriodId);
        }

        public int hashCode() {
            return (this.windowIndex * 31) + this.mediaPeriodId.hashCode();
        }
    }

    protected AnalyticsCollector(@Nullable Player player, Clock clock) {
        this.player = player;
        this.clock = (Clock) Assertions.checkNotNull(clock);
    }

    private AnalyticsListener.EventTime generateEventTime(@Nullable WindowAndMediaPeriodId windowAndMediaPeriodId) {
        if (windowAndMediaPeriodId != null) {
            return generateEventTime(windowAndMediaPeriodId.windowIndex, windowAndMediaPeriodId.mediaPeriodId);
        }
        int currentWindowIndex = ((Player) Assertions.checkNotNull(this.player)).getCurrentWindowIndex();
        return generateEventTime(currentWindowIndex, this.mediaPeriodQueueTracker.tryResolveWindowIndex(currentWindowIndex));
    }

    private AnalyticsListener.EventTime generateLastReportedPlayingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getLastReportedPlayingMediaPeriod());
    }

    private AnalyticsListener.EventTime generateLoadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getLoadingMediaPeriod());
    }

    private AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getPlayingMediaPeriod());
    }

    private AnalyticsListener.EventTime generateReadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getReadingMediaPeriod());
    }

    public void addListener(AnalyticsListener analyticsListener) {
        this.listeners.add(analyticsListener);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    protected AnalyticsListener.EventTime generateEventTime(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        long defaultPositionMs;
        Assertions.checkNotNull(this.player);
        long jElapsedRealtime = this.clock.elapsedRealtime();
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (i11 == this.player.getCurrentWindowIndex()) {
            if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
                defaultPositionMs = this.player.getContentPosition();
            } else if (this.player.getCurrentAdGroupIndex() == mediaPeriodId.adGroupIndex && this.player.getCurrentAdIndexInAdGroup() == mediaPeriodId.adIndexInAdGroup) {
                defaultPositionMs = this.player.getCurrentPosition();
            } else {
                defaultPositionMs = 0;
            }
        } else if (i11 >= currentTimeline.getWindowCount() || (mediaPeriodId != null && mediaPeriodId.isAd())) {
            defaultPositionMs = 0;
        } else {
            defaultPositionMs = currentTimeline.getWindow(i11, this.window).getDefaultPositionMs();
        }
        return new AnalyticsListener.EventTime(jElapsedRealtime, currentTimeline, i11, mediaPeriodId, defaultPositionMs, this.player.getCurrentPosition(), this.player.getBufferedPosition() - this.player.getContentPosition());
    }

    protected Set<AnalyticsListener> getListeners() {
        return Collections.unmodifiableSet(this.listeners);
    }

    public final void notifyNetworkTypeChanged(@Nullable NetworkInfo networkInfo) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkTypeChanged(eventTimeGeneratePlayingMediaPeriodEventTime, networkInfo);
        }
    }

    public final void notifySeekStarted() {
        if (this.mediaPeriodQueueTracker.isSeeking()) {
            return;
        }
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        this.mediaPeriodQueueTracker.onSeekStarted();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onSeekStarted(eventTimeGeneratePlayingMediaPeriodEventTime);
        }
    }

    public final void notifyViewportSizeChanged(int i11, int i12) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onViewportSizeChange(eventTimeGeneratePlayingMediaPeriodEventTime, i11, i12);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDecoderInitialized(String str, long j11, long j12) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(eventTimeGenerateReadingMediaPeriodEventTime, 1, str, j12);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDisabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeGenerateLastReportedPlayingMediaPeriodEventTime = generateLastReportedPlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(eventTimeGenerateLastReportedPlayingMediaPeriodEventTime, 1, decoderCounters);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioEnabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(eventTimeGeneratePlayingMediaPeriodEventTime, 1, decoderCounters);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioInputFormatChanged(Format format) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(eventTimeGenerateReadingMediaPeriodEventTime, 1, format);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioSessionId(int i11) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAudioSessionId(eventTimeGenerateReadingMediaPeriodEventTime, i11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioSinkUnderrun(int i11, long j11, long j12) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAudioUnderrun(eventTimeGenerateReadingMediaPeriodEventTime, i11, j11, j12);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.BandwidthMeter.EventListener
    public final void onBandwidthSample(int i11, long j11, long j12) {
        AnalyticsListener.EventTime eventTimeGenerateLoadingMediaPeriodEventTime = generateLoadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onBandwidthEstimate(eventTimeGenerateLoadingMediaPeriodEventTime, i11, j11, j12);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onDownstreamFormatChanged(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDownstreamFormatChanged(eventTimeGenerateEventTime, mediaLoadData);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DefaultDrmSessionEventListener
    public final void onDrmKeysLoaded() {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysLoaded(eventTimeGenerateReadingMediaPeriodEventTime);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DefaultDrmSessionEventListener
    public final void onDrmKeysRemoved() {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRemoved(eventTimeGenerateReadingMediaPeriodEventTime);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DefaultDrmSessionEventListener
    public final void onDrmKeysRestored() {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRestored(eventTimeGenerateReadingMediaPeriodEventTime);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DefaultDrmSessionEventListener
    public final void onDrmSessionManagerError(Exception exc) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDrmSessionManagerError(eventTimeGenerateReadingMediaPeriodEventTime, exc);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener
    public final void onDroppedFrames(int i11, long j11) {
        AnalyticsListener.EventTime eventTimeGenerateLastReportedPlayingMediaPeriodEventTime = generateLastReportedPlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDroppedVideoFrames(eventTimeGenerateLastReportedPlayingMediaPeriodEventTime, i11, j11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onLoadCanceled(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadCanceled(eventTimeGenerateEventTime, loadEventInfo, mediaLoadData);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onLoadCompleted(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadCompleted(eventTimeGenerateEventTime, loadEventInfo, mediaLoadData);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onLoadError(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z10) {
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadError(eventTimeGenerateEventTime, loadEventInfo, mediaLoadData, iOException, z10);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onLoadStarted(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadStarted(eventTimeGenerateEventTime, loadEventInfo, mediaLoadData);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onLoadingChanged(boolean z10) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onLoadingChanged(eventTimeGeneratePlayingMediaPeriodEventTime, z10);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onMediaPeriodCreated(int i11, MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.onMediaPeriodCreated(i11, mediaPeriodId);
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodCreated(eventTimeGenerateEventTime);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onMediaPeriodReleased(int i11, MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.onMediaPeriodReleased(i11, mediaPeriodId);
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodReleased(eventTimeGenerateEventTime);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataOutput
    public final void onMetadata(Metadata metadata) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onMetadata(eventTimeGeneratePlayingMediaPeriodEventTime, metadata);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlaybackParametersChanged(eventTimeGeneratePlayingMediaPeriodEventTime, playbackParameters);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onPlayerError(ExoPlaybackException exoPlaybackException) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayerError(eventTimeGeneratePlayingMediaPeriodEventTime, exoPlaybackException);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onPlayerStateChanged(boolean z10, int i11) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPlayerStateChanged(eventTimeGeneratePlayingMediaPeriodEventTime, z10, i11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onPositionDiscontinuity(int i11) {
        this.mediaPeriodQueueTracker.onPositionDiscontinuity(i11);
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPositionDiscontinuity(eventTimeGeneratePlayingMediaPeriodEventTime, i11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onReadingStarted(int i11, MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.onReadingStarted(i11, mediaPeriodId);
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onReadingStarted(eventTimeGenerateEventTime);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener
    public final void onRenderedFirstFrame(Surface surface) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRenderedFirstFrame(eventTimeGenerateReadingMediaPeriodEventTime, surface);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onRepeatModeChanged(int i11) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRepeatModeChanged(eventTimeGeneratePlayingMediaPeriodEventTime, i11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onSeekProcessed() {
        if (this.mediaPeriodQueueTracker.isSeeking()) {
            this.mediaPeriodQueueTracker.onSeekProcessed();
            AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
            Iterator<AnalyticsListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onSeekProcessed(eventTimeGeneratePlayingMediaPeriodEventTime);
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onShuffleModeEnabledChanged(boolean z10) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onShuffleModeChanged(eventTimeGeneratePlayingMediaPeriodEventTime, z10);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i11) {
        this.mediaPeriodQueueTracker.onTimelineChanged(timeline);
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTimelineChanged(eventTimeGeneratePlayingMediaPeriodEventTime, i11);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public final void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTracksChanged(eventTimeGeneratePlayingMediaPeriodEventTime, trackGroupArray, trackSelectionArray);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener
    public final void onUpstreamDiscarded(int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeGenerateEventTime = generateEventTime(i11, mediaPeriodId);
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onUpstreamDiscarded(eventTimeGenerateEventTime, mediaLoadData);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDecoderInitialized(String str, long j11, long j12) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(eventTimeGenerateReadingMediaPeriodEventTime, 2, str, j12);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDisabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeGenerateLastReportedPlayingMediaPeriodEventTime = generateLastReportedPlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(eventTimeGenerateLastReportedPlayingMediaPeriodEventTime, 2, decoderCounters);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener
    public final void onVideoEnabled(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(eventTimeGeneratePlayingMediaPeriodEventTime, 2, decoderCounters);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener
    public final void onVideoInputFormatChanged(Format format) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(eventTimeGenerateReadingMediaPeriodEventTime, 2, format);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener
    public final void onVideoSizeChanged(int i11, int i12, int i13, float f11) {
        AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        Iterator<AnalyticsListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeChanged(eventTimeGenerateReadingMediaPeriodEventTime, i11, i12, i13, f11);
        }
    }

    public void removeListener(AnalyticsListener analyticsListener) {
        this.listeners.remove(analyticsListener);
    }

    public final void resetForNewMediaSource() {
        for (WindowAndMediaPeriodId windowAndMediaPeriodId : new ArrayList(this.mediaPeriodQueueTracker.activeMediaPeriods)) {
            onMediaPeriodReleased(windowAndMediaPeriodId.windowIndex, windowAndMediaPeriodId.mediaPeriodId);
        }
    }

    public void setPlayer(Player player) {
        Assertions.checkState(this.player == null);
        this.player = (Player) Assertions.checkNotNull(player);
    }
}
