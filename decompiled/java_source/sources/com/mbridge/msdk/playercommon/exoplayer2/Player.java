package com.mbridge.msdk.playercommon.exoplayer2;

import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.text.TextOutput;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.video.VideoListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public interface Player {
    public static final int DISCONTINUITY_REASON_AD_INSERTION = 3;
    public static final int DISCONTINUITY_REASON_INTERNAL = 4;
    public static final int DISCONTINUITY_REASON_PERIOD_TRANSITION = 0;
    public static final int DISCONTINUITY_REASON_SEEK = 1;
    public static final int DISCONTINUITY_REASON_SEEK_ADJUSTMENT = 2;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_OFF = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int STATE_BUFFERING = 2;
    public static final int STATE_ENDED = 4;
    public static final int STATE_IDLE = 1;
    public static final int STATE_READY = 3;
    public static final int TIMELINE_CHANGE_REASON_DYNAMIC = 2;
    public static final int TIMELINE_CHANGE_REASON_PREPARED = 0;
    public static final int TIMELINE_CHANGE_REASON_RESET = 1;

    public static abstract class DefaultEventListener implements EventListener {
        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onLoadingChanged(boolean z10) {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onPlayerStateChanged(boolean z10, int i11) {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onPositionDiscontinuity(int i11) {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onRepeatModeChanged(int i11) {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onSeekProcessed() {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onShuffleModeEnabledChanged(boolean z10) {
        }

        @Deprecated
        public void onTimelineChanged(Timeline timeline, @Nullable Object obj) {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i11) {
            onTimelineChanged(timeline, obj);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
        public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DiscontinuityReason {
    }

    public interface EventListener {
        void onLoadingChanged(boolean z10);

        void onPlaybackParametersChanged(PlaybackParameters playbackParameters);

        void onPlayerError(ExoPlaybackException exoPlaybackException);

        void onPlayerStateChanged(boolean z10, int i11);

        void onPositionDiscontinuity(int i11);

        void onRepeatModeChanged(int i11);

        void onSeekProcessed();

        void onShuffleModeEnabledChanged(boolean z10);

        void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i11);

        void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    public interface TextComponent {
        void addTextOutput(TextOutput textOutput);

        void removeTextOutput(TextOutput textOutput);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TimelineChangeReason {
    }

    public interface VideoComponent {
        void addVideoListener(VideoListener videoListener);

        void clearVideoSurface();

        void clearVideoSurface(Surface surface);

        void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder);

        void clearVideoSurfaceView(SurfaceView surfaceView);

        void clearVideoTextureView(TextureView textureView);

        int getVideoScalingMode();

        void removeVideoListener(VideoListener videoListener);

        void setVideoScalingMode(int i11);

        void setVideoSurface(Surface surface);

        void setVideoSurfaceHolder(SurfaceHolder surfaceHolder);

        void setVideoSurfaceView(SurfaceView surfaceView);

        void setVideoTextureView(TextureView textureView);
    }

    void addListener(EventListener eventListener);

    int getBufferedPercentage();

    long getBufferedPosition();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    @Nullable
    Object getCurrentManifest();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    @Nullable
    Object getCurrentTag();

    Timeline getCurrentTimeline();

    TrackGroupArray getCurrentTrackGroups();

    TrackSelectionArray getCurrentTrackSelections();

    int getCurrentWindowIndex();

    long getDuration();

    int getNextWindowIndex();

    boolean getPlayWhenReady();

    @Nullable
    ExoPlaybackException getPlaybackError();

    PlaybackParameters getPlaybackParameters();

    int getPlaybackState();

    int getPreviousWindowIndex();

    int getRendererCount();

    int getRendererType(int i11);

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    @Nullable
    TextComponent getTextComponent();

    @Nullable
    VideoComponent getVideoComponent();

    boolean isCurrentWindowDynamic();

    boolean isCurrentWindowSeekable();

    boolean isLoading();

    boolean isPlayingAd();

    void release();

    void removeListener(EventListener eventListener);

    void seekTo(int i11, long j11);

    void seekTo(long j11);

    void seekToDefaultPosition();

    void seekToDefaultPosition(int i11);

    void setPlayWhenReady(boolean z10);

    void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters);

    void setRepeatMode(int i11);

    void setShuffleModeEnabled(boolean z10);

    void stop();

    void stop(boolean z10);
}
