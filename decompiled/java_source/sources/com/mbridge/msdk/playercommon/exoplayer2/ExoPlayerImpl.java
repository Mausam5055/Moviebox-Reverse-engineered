package com.mbridge.msdk.playercommon.exoplayer2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectorResult;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Clock;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes5.dex */
final class ExoPlayerImpl implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    private final TrackSelectorResult emptyTrackSelectorResult;
    private final Handler eventHandler;
    private boolean hasPendingPrepare;
    private boolean hasPendingSeek;
    private final ExoPlayerImplInternal internalPlayer;
    private final Handler internalPlayerHandler;
    private final CopyOnWriteArraySet<Player.EventListener> listeners;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private int pendingOperationAcks;
    private final ArrayDeque<PlaybackInfoUpdate> pendingPlaybackInfoUpdates;
    private final Timeline.Period period;
    private boolean playWhenReady;

    @Nullable
    private ExoPlaybackException playbackError;
    private PlaybackInfo playbackInfo;
    private PlaybackParameters playbackParameters;
    private final Renderer[] renderers;
    private int repeatMode;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;
    private final Timeline.Window window;

    private static final class PlaybackInfoUpdate {
        private final boolean isLoadingChanged;
        private final Set<Player.EventListener> listeners;
        private final boolean playWhenReady;
        private final PlaybackInfo playbackInfo;
        private final boolean playbackStateOrPlayWhenReadyChanged;
        private final boolean positionDiscontinuity;
        private final int positionDiscontinuityReason;
        private final boolean seekProcessed;
        private final int timelineChangeReason;
        private final boolean timelineOrManifestChanged;
        private final TrackSelector trackSelector;
        private final boolean trackSelectorResultChanged;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo, PlaybackInfo playbackInfo2, Set<Player.EventListener> set, TrackSelector trackSelector, boolean z10, int i11, int i12, boolean z11, boolean z12, boolean z13) {
            this.playbackInfo = playbackInfo;
            this.listeners = set;
            this.trackSelector = trackSelector;
            this.positionDiscontinuity = z10;
            this.positionDiscontinuityReason = i11;
            this.timelineChangeReason = i12;
            this.seekProcessed = z11;
            this.playWhenReady = z12;
            this.playbackStateOrPlayWhenReadyChanged = z13 || playbackInfo2.playbackState != playbackInfo.playbackState;
            this.timelineOrManifestChanged = (playbackInfo2.timeline == playbackInfo.timeline && playbackInfo2.manifest == playbackInfo.manifest) ? false : true;
            this.isLoadingChanged = playbackInfo2.isLoading != playbackInfo.isLoading;
            this.trackSelectorResultChanged = playbackInfo2.trackSelectorResult != playbackInfo.trackSelectorResult;
        }

        public void notifyListeners() {
            if (this.timelineOrManifestChanged || this.timelineChangeReason == 0) {
                for (Player.EventListener eventListener : this.listeners) {
                    PlaybackInfo playbackInfo = this.playbackInfo;
                    eventListener.onTimelineChanged(playbackInfo.timeline, playbackInfo.manifest, this.timelineChangeReason);
                }
            }
            if (this.positionDiscontinuity) {
                Iterator<Player.EventListener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().onPositionDiscontinuity(this.positionDiscontinuityReason);
                }
            }
            if (this.trackSelectorResultChanged) {
                this.trackSelector.onSelectionActivated(this.playbackInfo.trackSelectorResult.info);
                for (Player.EventListener eventListener2 : this.listeners) {
                    PlaybackInfo playbackInfo2 = this.playbackInfo;
                    eventListener2.onTracksChanged(playbackInfo2.trackGroups, playbackInfo2.trackSelectorResult.selections);
                }
            }
            if (this.isLoadingChanged) {
                Iterator<Player.EventListener> it2 = this.listeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onLoadingChanged(this.playbackInfo.isLoading);
                }
            }
            if (this.playbackStateOrPlayWhenReadyChanged) {
                Iterator<Player.EventListener> it3 = this.listeners.iterator();
                while (it3.hasNext()) {
                    it3.next().onPlayerStateChanged(this.playWhenReady, this.playbackInfo.playbackState);
                }
            }
            if (this.seekProcessed) {
                Iterator<Player.EventListener> it4 = this.listeners.iterator();
                while (it4.hasNext()) {
                    it4.next().onSeekProcessed();
                }
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(Renderer[] rendererArr, TrackSelector trackSelector, LoadControl loadControl, Clock clock) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Init ");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" [");
        sb2.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb2.append("] [");
        sb2.append(Util.DEVICE_DEBUG_INFO);
        sb2.append("]");
        Assertions.checkState(rendererArr.length > 0);
        this.renderers = (Renderer[]) Assertions.checkNotNull(rendererArr);
        this.trackSelector = (TrackSelector) Assertions.checkNotNull(trackSelector);
        this.playWhenReady = false;
        this.repeatMode = 0;
        this.shuffleModeEnabled = false;
        this.listeners = new CopyOnWriteArraySet<>();
        TrackSelectorResult trackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArr.length], new TrackSelection[rendererArr.length], null);
        this.emptyTrackSelectorResult = trackSelectorResult;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.playbackParameters = PlaybackParameters.DEFAULT;
        Handler handler = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()) { // from class: com.mbridge.msdk.playercommon.exoplayer2.ExoPlayerImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                ExoPlayerImpl.this.handleEvent(message);
            }
        };
        this.eventHandler = handler;
        this.playbackInfo = new PlaybackInfo(Timeline.EMPTY, 0L, TrackGroupArray.EMPTY, trackSelectorResult);
        this.pendingPlaybackInfoUpdates = new ArrayDeque<>();
        ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(rendererArr, trackSelector, trackSelectorResult, loadControl, this.playWhenReady, this.repeatMode, this.shuffleModeEnabled, handler, this, clock);
        this.internalPlayer = exoPlayerImplInternal;
        this.internalPlayerHandler = new Handler(exoPlayerImplInternal.getPlaybackLooper());
    }

    private PlaybackInfo getResetPlaybackInfo(boolean z10, boolean z11, int i11) {
        if (z10) {
            this.maskingWindowIndex = 0;
            this.maskingPeriodIndex = 0;
            this.maskingWindowPositionMs = 0L;
        } else {
            this.maskingWindowIndex = getCurrentWindowIndex();
            this.maskingPeriodIndex = getCurrentPeriodIndex();
            this.maskingWindowPositionMs = getCurrentPosition();
        }
        Timeline timeline = z11 ? Timeline.EMPTY : this.playbackInfo.timeline;
        Object obj = z11 ? null : this.playbackInfo.manifest;
        PlaybackInfo playbackInfo = this.playbackInfo;
        return new PlaybackInfo(timeline, obj, playbackInfo.periodId, playbackInfo.startPositionUs, playbackInfo.contentPositionUs, i11, false, z11 ? TrackGroupArray.EMPTY : playbackInfo.trackGroups, z11 ? this.emptyTrackSelectorResult : playbackInfo.trackSelectorResult);
    }

    private void handlePlaybackInfo(PlaybackInfo playbackInfo, int i11, boolean z10, int i12) {
        int i13 = this.pendingOperationAcks - i11;
        this.pendingOperationAcks = i13;
        if (i13 == 0) {
            if (playbackInfo.startPositionUs == C.TIME_UNSET) {
                playbackInfo = playbackInfo.fromNewPosition(playbackInfo.periodId, 0L, playbackInfo.contentPositionUs);
            }
            PlaybackInfo playbackInfo2 = playbackInfo;
            if ((!this.playbackInfo.timeline.isEmpty() || this.hasPendingPrepare) && playbackInfo2.timeline.isEmpty()) {
                this.maskingPeriodIndex = 0;
                this.maskingWindowIndex = 0;
                this.maskingWindowPositionMs = 0L;
            }
            int i14 = this.hasPendingPrepare ? 0 : 2;
            boolean z11 = this.hasPendingSeek;
            this.hasPendingPrepare = false;
            this.hasPendingSeek = false;
            updatePlaybackInfo(playbackInfo2, z10, i12, i14, z11, false);
        }
    }

    private long playbackInfoPositionUsToWindowPositionMs(long j11) {
        long jUsToMs = C.usToMs(j11);
        if (this.playbackInfo.periodId.isAd()) {
            return jUsToMs;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.timeline.getPeriod(playbackInfo.periodId.periodIndex, this.period);
        return jUsToMs + this.period.getPositionInWindowMs();
    }

    private boolean shouldMaskPosition() {
        return this.playbackInfo.timeline.isEmpty() || this.pendingOperationAcks > 0;
    }

    private void updatePlaybackInfo(PlaybackInfo playbackInfo, boolean z10, int i11, int i12, boolean z11, boolean z12) {
        boolean zIsEmpty = this.pendingPlaybackInfoUpdates.isEmpty();
        this.pendingPlaybackInfoUpdates.addLast(new PlaybackInfoUpdate(playbackInfo, this.playbackInfo, this.listeners, this.trackSelector, z10, i11, i12, z11, this.playWhenReady, z12));
        this.playbackInfo = playbackInfo;
        if (zIsEmpty) {
            while (!this.pendingPlaybackInfoUpdates.isEmpty()) {
                this.pendingPlaybackInfoUpdates.peekFirst().notifyListeners();
                this.pendingPlaybackInfoUpdates.removeFirst();
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void addListener(Player.EventListener eventListener) {
        this.listeners.add(eventListener);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer
    public void blockingSendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        ArrayList<PlayerMessage> arrayList = new ArrayList();
        for (ExoPlayer.ExoPlayerMessage exoPlayerMessage : exoPlayerMessageArr) {
            arrayList.add(createMessage(exoPlayerMessage.target).setType(exoPlayerMessage.messageType).setPayload(exoPlayerMessage.message).send());
        }
        boolean z10 = false;
        for (PlayerMessage playerMessage : arrayList) {
            boolean z11 = true;
            while (z11) {
                try {
                    playerMessage.blockUntilDelivered();
                    z11 = false;
                } catch (InterruptedException unused) {
                    z10 = true;
                } catch (TimeoutException e11) {
                    o0.b(TAG, e11.getMessage());
                }
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        return new PlayerMessage(this.internalPlayer, target, this.playbackInfo.timeline, getCurrentWindowIndex(), this.internalPlayerHandler);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getBufferedPercentage() {
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        if (bufferedPosition == C.TIME_UNSET || duration == C.TIME_UNSET) {
            return 0;
        }
        if (duration == 0) {
            return 100;
        }
        return Util.constrainValue((int) ((bufferedPosition * 100) / duration), 0, 100);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public long getBufferedPosition() {
        return shouldMaskPosition() ? this.maskingWindowPositionMs : playbackInfoPositionUsToWindowPositionMs(this.playbackInfo.bufferedPositionUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public long getContentPosition() {
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.timeline.getPeriod(playbackInfo.periodId.periodIndex, this.period);
        return this.period.getPositionInWindowMs() + C.usToMs(this.playbackInfo.contentPositionUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public Object getCurrentManifest() {
        return this.playbackInfo.manifest;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        return shouldMaskPosition() ? this.maskingPeriodIndex : this.playbackInfo.periodId.periodIndex;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public long getCurrentPosition() {
        return shouldMaskPosition() ? this.maskingWindowPositionMs : playbackInfoPositionUsToWindowPositionMs(this.playbackInfo.positionUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    @Nullable
    public Object getCurrentTag() {
        int currentWindowIndex = getCurrentWindowIndex();
        if (currentWindowIndex > this.playbackInfo.timeline.getWindowCount()) {
            return null;
        }
        return this.playbackInfo.timeline.getWindow(currentWindowIndex, this.window, true).tag;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public Timeline getCurrentTimeline() {
        return this.playbackInfo.timeline;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public TrackGroupArray getCurrentTrackGroups() {
        return this.playbackInfo.trackGroups;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public TrackSelectionArray getCurrentTrackSelections() {
        return this.playbackInfo.trackSelectorResult.selections;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getCurrentWindowIndex() {
        if (shouldMaskPosition()) {
            return this.maskingWindowIndex;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.getPeriod(playbackInfo.periodId.periodIndex, this.period).windowIndex;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public long getDuration() {
        Timeline timeline = this.playbackInfo.timeline;
        if (timeline.isEmpty()) {
            return C.TIME_UNSET;
        }
        if (!isPlayingAd()) {
            return timeline.getWindow(getCurrentWindowIndex(), this.window).getDurationMs();
        }
        MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
        timeline.getPeriod(mediaPeriodId.periodIndex, this.period);
        return C.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getNextWindowIndex() {
        Timeline timeline = this.playbackInfo.timeline;
        if (timeline.isEmpty()) {
            return -1;
        }
        return timeline.getNextWindowIndex(getCurrentWindowIndex(), this.repeatMode, this.shuffleModeEnabled);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    @Nullable
    public ExoPlaybackException getPlaybackError() {
        return this.playbackError;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getPlaybackState() {
        return this.playbackInfo.playbackState;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getPreviousWindowIndex() {
        Timeline timeline = this.playbackInfo.timeline;
        if (timeline.isEmpty()) {
            return -1;
        }
        return timeline.getPreviousWindowIndex(getCurrentWindowIndex(), this.repeatMode, this.shuffleModeEnabled);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getRendererCount() {
        return this.renderers.length;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getRendererType(int i11) {
        return this.renderers[i11].getTrackType();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public int getRepeatMode() {
        return this.repeatMode;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public boolean getShuffleModeEnabled() {
        return this.shuffleModeEnabled;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public Player.TextComponent getTextComponent() {
        return null;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public Player.VideoComponent getVideoComponent() {
        return null;
    }

    void handleEvent(Message message) {
        int i11 = message.what;
        if (i11 == 0) {
            PlaybackInfo playbackInfo = (PlaybackInfo) message.obj;
            int i12 = message.arg1;
            int i13 = message.arg2;
            handlePlaybackInfo(playbackInfo, i12, i13 != -1, i13);
            return;
        }
        if (i11 != 1) {
            if (i11 != 2) {
                throw new IllegalStateException();
            }
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
            this.playbackError = exoPlaybackException;
            Iterator<Player.EventListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onPlayerError(exoPlaybackException);
            }
            return;
        }
        PlaybackParameters playbackParameters = (PlaybackParameters) message.obj;
        if (this.playbackParameters.equals(playbackParameters)) {
            return;
        }
        this.playbackParameters = playbackParameters;
        Iterator<Player.EventListener> it2 = this.listeners.iterator();
        while (it2.hasNext()) {
            it2.next().onPlaybackParametersChanged(playbackParameters);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public boolean isCurrentWindowDynamic() {
        Timeline timeline = this.playbackInfo.timeline;
        return !timeline.isEmpty() && timeline.getWindow(getCurrentWindowIndex(), this.window).isDynamic;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public boolean isCurrentWindowSeekable() {
        Timeline timeline = this.playbackInfo.timeline;
        return !timeline.isEmpty() && timeline.getWindow(getCurrentWindowIndex(), this.window).isSeekable;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public boolean isLoading() {
        return this.playbackInfo.isLoading;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public boolean isPlayingAd() {
        return !shouldMaskPosition() && this.playbackInfo.periodId.isAd();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer
    public void prepare(MediaSource mediaSource) {
        prepare(mediaSource, true, true);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer
    public void prepare(MediaSource mediaSource, boolean z10, boolean z11) {
        this.playbackError = null;
        PlaybackInfo resetPlaybackInfo = getResetPlaybackInfo(z10, z11, 2);
        this.hasPendingPrepare = true;
        this.pendingOperationAcks++;
        this.internalPlayer.prepare(mediaSource, z10, z11);
        updatePlaybackInfo(resetPlaybackInfo, false, 4, 1, false, false);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void release() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Release ");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" [");
        sb2.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb2.append("] [");
        sb2.append(Util.DEVICE_DEBUG_INFO);
        sb2.append("] [");
        sb2.append(ExoPlayerLibraryInfo.registeredModules());
        sb2.append("]");
        this.internalPlayer.release();
        this.eventHandler.removeCallbacksAndMessages(null);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void removeListener(Player.EventListener eventListener) {
        this.listeners.remove(eventListener);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void seekTo(int i11, long j11) {
        Timeline timeline = this.playbackInfo.timeline;
        if (i11 < 0 || (!timeline.isEmpty() && i11 >= timeline.getWindowCount())) {
            throw new IllegalSeekPositionException(timeline, i11, j11);
        }
        this.hasPendingSeek = true;
        this.pendingOperationAcks++;
        if (isPlayingAd()) {
            Log.w(TAG, "seekTo ignored because an ad is playing");
            this.eventHandler.obtainMessage(0, 1, -1, this.playbackInfo).sendToTarget();
            return;
        }
        this.maskingWindowIndex = i11;
        if (timeline.isEmpty()) {
            this.maskingWindowPositionMs = j11 == C.TIME_UNSET ? 0L : j11;
            this.maskingPeriodIndex = 0;
        } else {
            long defaultPositionUs = j11 == C.TIME_UNSET ? timeline.getWindow(i11, this.window).getDefaultPositionUs() : C.msToUs(j11);
            Pair<Integer, Long> periodPosition = timeline.getPeriodPosition(this.window, this.period, i11, defaultPositionUs);
            this.maskingWindowPositionMs = C.usToMs(defaultPositionUs);
            this.maskingPeriodIndex = ((Integer) periodPosition.first).intValue();
        }
        this.internalPlayer.seekTo(timeline, i11, C.msToUs(j11));
        Iterator<Player.EventListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onPositionDiscontinuity(1);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void seekTo(long j11) {
        seekTo(getCurrentWindowIndex(), j11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void seekToDefaultPosition() {
        seekToDefaultPosition(getCurrentWindowIndex());
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void seekToDefaultPosition(int i11) {
        seekTo(i11, C.TIME_UNSET);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer
    public void sendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        for (ExoPlayer.ExoPlayerMessage exoPlayerMessage : exoPlayerMessageArr) {
            createMessage(exoPlayerMessage.target).setType(exoPlayerMessage.messageType).setPayload(exoPlayerMessage.message).send();
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void setPlayWhenReady(boolean z10) {
        if (this.playWhenReady != z10) {
            this.playWhenReady = z10;
            this.internalPlayer.setPlayWhenReady(z10);
            updatePlaybackInfo(this.playbackInfo, false, 4, 1, false, true);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters) {
        if (playbackParameters == null) {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        this.internalPlayer.setPlaybackParameters(playbackParameters);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void setRepeatMode(int i11) {
        if (this.repeatMode != i11) {
            this.repeatMode = i11;
            this.internalPlayer.setRepeatMode(i11);
            Iterator<Player.EventListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onRepeatModeChanged(i11);
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer
    public void setSeekParameters(@Nullable SeekParameters seekParameters) {
        if (seekParameters == null) {
            seekParameters = SeekParameters.DEFAULT;
        }
        this.internalPlayer.setSeekParameters(seekParameters);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void setShuffleModeEnabled(boolean z10) {
        if (this.shuffleModeEnabled != z10) {
            this.shuffleModeEnabled = z10;
            this.internalPlayer.setShuffleModeEnabled(z10);
            Iterator<Player.EventListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onShuffleModeEnabledChanged(z10);
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void stop() {
        stop(false);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player
    public void stop(boolean z10) {
        if (z10) {
            this.playbackError = null;
        }
        PlaybackInfo resetPlaybackInfo = getResetPlaybackInfo(z10, z10, 1);
        this.pendingOperationAcks++;
        this.internalPlayer.stop(z10);
        updatePlaybackInfo(resetPlaybackInfo, false, 4, 1, false, false);
    }
}
