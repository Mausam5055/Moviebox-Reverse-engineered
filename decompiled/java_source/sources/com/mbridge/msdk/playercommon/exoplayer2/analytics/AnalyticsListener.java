package com.mbridge.msdk.playercommon.exoplayer2.analytics;

import android.net.NetworkInfo;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderCounters;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface AnalyticsListener {

    public static final class EventTime {
        public final long currentPlaybackPositionMs;
        public final long eventPlaybackPositionMs;

        @Nullable
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final long realtimeMs;
        public final Timeline timeline;
        public final long totalBufferedDurationMs;
        public final int windowIndex;

        public EventTime(long j11, Timeline timeline, int i11, @Nullable MediaSource.MediaPeriodId mediaPeriodId, long j12, long j13, long j14) {
            this.realtimeMs = j11;
            this.timeline = timeline;
            this.windowIndex = i11;
            this.mediaPeriodId = mediaPeriodId;
            this.eventPlaybackPositionMs = j12;
            this.currentPlaybackPositionMs = j13;
            this.totalBufferedDurationMs = j14;
        }
    }

    void onAudioSessionId(EventTime eventTime, int i11);

    void onAudioUnderrun(EventTime eventTime, int i11, long j11, long j12);

    void onBandwidthEstimate(EventTime eventTime, int i11, long j11, long j12);

    void onDecoderDisabled(EventTime eventTime, int i11, DecoderCounters decoderCounters);

    void onDecoderEnabled(EventTime eventTime, int i11, DecoderCounters decoderCounters);

    void onDecoderInitialized(EventTime eventTime, int i11, String str, long j11);

    void onDecoderInputFormatChanged(EventTime eventTime, int i11, Format format);

    void onDownstreamFormatChanged(EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData);

    void onDrmKeysLoaded(EventTime eventTime);

    void onDrmKeysRemoved(EventTime eventTime);

    void onDrmKeysRestored(EventTime eventTime);

    void onDrmSessionManagerError(EventTime eventTime, Exception exc);

    void onDroppedVideoFrames(EventTime eventTime, int i11, long j11);

    void onLoadCanceled(EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData);

    void onLoadCompleted(EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData);

    void onLoadError(EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z10);

    void onLoadStarted(EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData);

    void onLoadingChanged(EventTime eventTime, boolean z10);

    void onMediaPeriodCreated(EventTime eventTime);

    void onMediaPeriodReleased(EventTime eventTime);

    void onMetadata(EventTime eventTime, Metadata metadata);

    void onNetworkTypeChanged(EventTime eventTime, @Nullable NetworkInfo networkInfo);

    void onPlaybackParametersChanged(EventTime eventTime, PlaybackParameters playbackParameters);

    void onPlayerError(EventTime eventTime, ExoPlaybackException exoPlaybackException);

    void onPlayerStateChanged(EventTime eventTime, boolean z10, int i11);

    void onPositionDiscontinuity(EventTime eventTime, int i11);

    void onReadingStarted(EventTime eventTime);

    void onRenderedFirstFrame(EventTime eventTime, Surface surface);

    void onRepeatModeChanged(EventTime eventTime, int i11);

    void onSeekProcessed(EventTime eventTime);

    void onSeekStarted(EventTime eventTime);

    void onShuffleModeChanged(EventTime eventTime, boolean z10);

    void onTimelineChanged(EventTime eventTime, int i11);

    void onTracksChanged(EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray);

    void onUpstreamDiscarded(EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData);

    void onVideoSizeChanged(EventTime eventTime, int i11, int i12, int i13, float f11);

    void onViewportSizeChange(EventTime eventTime, int i11, int i12);
}
