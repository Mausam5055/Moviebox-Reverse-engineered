package com.mbridge.msdk.playercommon.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.SampleStream;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectorResult;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Clock;
import com.mbridge.msdk.playercommon.exoplayer2.util.HandlerWrapper;
import com.mbridge.msdk.playercommon.exoplayer2.util.TraceUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSource.SourceInfoRefreshListener, DefaultMediaClock.PlaybackParameterListener, PlayerMessage.Sender {
    private static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;
    private static final int IDLE_INTERVAL_MS = 1000;
    private static final int MSG_DO_SOME_WORK = 2;
    public static final int MSG_ERROR = 2;
    private static final int MSG_PERIOD_PREPARED = 9;
    public static final int MSG_PLAYBACK_INFO_CHANGED = 0;
    public static final int MSG_PLAYBACK_PARAMETERS_CHANGED = 1;
    private static final int MSG_PREPARE = 0;
    private static final int MSG_REFRESH_SOURCE_INFO = 8;
    private static final int MSG_RELEASE = 7;
    private static final int MSG_SEEK_TO = 3;
    private static final int MSG_SEND_MESSAGE = 14;
    private static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 15;
    private static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    private static final int MSG_SET_PLAY_WHEN_READY = 1;
    private static final int MSG_SET_REPEAT_MODE = 12;
    private static final int MSG_SET_SEEK_PARAMETERS = 5;
    private static final int MSG_SET_SHUFFLE_ENABLED = 13;
    private static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 10;
    private static final int MSG_STOP = 6;
    private static final int MSG_TRACK_SELECTION_INVALIDATED = 11;
    private static final int PREPARING_SOURCE_INTERVAL_MS = 10;
    private static final int RENDERING_INTERVAL_MS = 10;
    private static final String TAG = "ExoPlayerImplInternal";
    private final long backBufferDurationUs;
    private final Clock clock;
    private final TrackSelectorResult emptyTrackSelectorResult;
    private Renderer[] enabledRenderers;
    private final Handler eventHandler;
    private final HandlerWrapper handler;
    private final HandlerThread internalPlaybackThread;
    private final LoadControl loadControl;
    private final DefaultMediaClock mediaClock;
    private MediaSource mediaSource;
    private int nextPendingMessageIndex;
    private SeekPosition pendingInitialSeekPosition;
    private final ArrayList<PendingMessageInfo> pendingMessages;
    private int pendingPrepareCount;
    private final Timeline.Period period;
    private boolean playWhenReady;
    private PlaybackInfo playbackInfo;
    private final ExoPlayer player;
    private boolean rebuffering;
    private boolean released;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionUs;
    private final Renderer[] renderers;
    private int repeatMode;
    private final boolean retainBackBufferFromKeyframe;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;
    private final Timeline.Window window;
    private final MediaPeriodQueue queue = new MediaPeriodQueue();
    private SeekParameters seekParameters = SeekParameters.DEFAULT;
    private final PlaybackInfoUpdate playbackInfoUpdate = new PlaybackInfoUpdate();

    private static final class MediaSourceRefreshInfo {
        public final Object manifest;
        public final MediaSource source;
        public final Timeline timeline;

        public MediaSourceRefreshInfo(MediaSource mediaSource, Timeline timeline, Object obj) {
            this.source = mediaSource;
            this.timeline = timeline;
            this.manifest = obj;
        }
    }

    private static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {
        public final PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;

        @Nullable
        public Object resolvedPeriodUid;

        public PendingMessageInfo(PlayerMessage playerMessage) {
            this.message = playerMessage;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull PendingMessageInfo pendingMessageInfo) {
            Object obj = this.resolvedPeriodUid;
            if ((obj == null) != (pendingMessageInfo.resolvedPeriodUid == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i11 = this.resolvedPeriodIndex - pendingMessageInfo.resolvedPeriodIndex;
            return i11 != 0 ? i11 : Util.compareLong(this.resolvedPeriodTimeUs, pendingMessageInfo.resolvedPeriodTimeUs);
        }

        public void setResolvedPosition(int i11, long j11, Object obj) {
            this.resolvedPeriodIndex = i11;
            this.resolvedPeriodTimeUs = j11;
            this.resolvedPeriodUid = obj;
        }
    }

    private static final class PlaybackInfoUpdate {
        private int discontinuityReason;
        private PlaybackInfo lastPlaybackInfo;
        private int operationAcks;
        private boolean positionDiscontinuity;

        private PlaybackInfoUpdate() {
        }

        public boolean hasPendingUpdate(PlaybackInfo playbackInfo) {
            return playbackInfo != this.lastPlaybackInfo || this.operationAcks > 0 || this.positionDiscontinuity;
        }

        public void incrementPendingOperationAcks(int i11) {
            this.operationAcks += i11;
        }

        public void reset(PlaybackInfo playbackInfo) {
            this.lastPlaybackInfo = playbackInfo;
            this.operationAcks = 0;
            this.positionDiscontinuity = false;
        }

        public void setPositionDiscontinuity(int i11) {
            if (this.positionDiscontinuity && this.discontinuityReason != 4) {
                Assertions.checkArgument(i11 == 4);
            } else {
                this.positionDiscontinuity = true;
                this.discontinuityReason = i11;
            }
        }
    }

    private static final class SeekPosition {
        public final Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(Timeline timeline, int i11, long j11) {
            this.timeline = timeline;
            this.windowIndex = i11;
            this.windowPositionUs = j11;
        }
    }

    public ExoPlayerImplInternal(Renderer[] rendererArr, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, boolean z10, int i11, boolean z11, Handler handler, ExoPlayer exoPlayer, Clock clock) {
        this.renderers = rendererArr;
        this.trackSelector = trackSelector;
        this.emptyTrackSelectorResult = trackSelectorResult;
        this.loadControl = loadControl;
        this.playWhenReady = z10;
        this.repeatMode = i11;
        this.shuffleModeEnabled = z11;
        this.eventHandler = handler;
        this.player = exoPlayer;
        this.clock = clock;
        this.backBufferDurationUs = loadControl.getBackBufferDurationUs();
        this.retainBackBufferFromKeyframe = loadControl.retainBackBufferFromKeyframe();
        this.playbackInfo = new PlaybackInfo(Timeline.EMPTY, C.TIME_UNSET, TrackGroupArray.EMPTY, trackSelectorResult);
        this.rendererCapabilities = new RendererCapabilities[rendererArr.length];
        for (int i12 = 0; i12 < rendererArr.length; i12++) {
            rendererArr[i12].setIndex(i12);
            this.rendererCapabilities[i12] = rendererArr[i12].getCapabilities();
        }
        this.mediaClock = new DefaultMediaClock(this, clock);
        this.pendingMessages = new ArrayList<>();
        this.enabledRenderers = new Renderer[0];
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        trackSelector.init(this);
        HandlerThread handlerThread = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.internalPlaybackThread = handlerThread;
        handlerThread.start();
        this.handler = clock.createHandler(handlerThread.getLooper(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverMessage(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.isCanceled()) {
            return;
        }
        try {
            playerMessage.getTarget().handleMessage(playerMessage.getType(), playerMessage.getPayload());
        } finally {
            playerMessage.markAsProcessed(true);
        }
    }

    private void disableRenderer(Renderer renderer) throws ExoPlaybackException {
        this.mediaClock.onRendererDisabled(renderer);
        ensureStopped(renderer);
        renderer.disable();
    }

    private void doSomeWork() throws IOException, ExoPlaybackException {
        int i11;
        long jUptimeMillis = this.clock.uptimeMillis();
        updatePeriods();
        if (!this.queue.hasPlayingPeriod()) {
            maybeThrowPeriodPrepareError();
            scheduleNextWork(jUptimeMillis, 10L);
            return;
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        TraceUtil.beginSection("doSomeWork");
        updatePlaybackPositions();
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        playingPeriod.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
        boolean z10 = true;
        boolean z11 = true;
        for (Renderer renderer : this.enabledRenderers) {
            renderer.render(this.rendererPositionUs, jElapsedRealtime);
            z11 = z11 && renderer.isEnded();
            boolean z12 = renderer.isReady() || renderer.isEnded() || rendererWaitingForNextStream(renderer);
            if (!z12) {
                renderer.maybeThrowStreamError();
            }
            z10 = z10 && z12;
        }
        if (!z10) {
            maybeThrowPeriodPrepareError();
        }
        long j11 = playingPeriod.info.durationUs;
        if (z11 && ((j11 == C.TIME_UNSET || j11 <= this.playbackInfo.positionUs) && playingPeriod.info.isFinal)) {
            setState(4);
            stopRenderers();
        } else if (this.playbackInfo.playbackState == 2 && shouldTransitionToReadyState(z10)) {
            setState(3);
            if (this.playWhenReady) {
                startRenderers();
            }
        } else if (this.playbackInfo.playbackState == 3 && (this.enabledRenderers.length != 0 ? !z10 : !isTimelineReady())) {
            this.rebuffering = this.playWhenReady;
            setState(2);
            stopRenderers();
        }
        if (this.playbackInfo.playbackState == 2) {
            for (Renderer renderer2 : this.enabledRenderers) {
                renderer2.maybeThrowStreamError();
            }
        }
        if ((this.playWhenReady && this.playbackInfo.playbackState == 3) || (i11 = this.playbackInfo.playbackState) == 2) {
            scheduleNextWork(jUptimeMillis, 10L);
        } else if (this.enabledRenderers.length == 0 || i11 == 4) {
            this.handler.removeMessages(2);
        } else {
            scheduleNextWork(jUptimeMillis, 1000L);
        }
        TraceUtil.endSection();
    }

    private void enableRenderer(int i11, boolean z10, int i12) throws ExoPlaybackException {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        Renderer renderer = this.renderers[i11];
        this.enabledRenderers[i12] = renderer;
        if (renderer.getState() == 0) {
            TrackSelectorResult trackSelectorResult = playingPeriod.trackSelectorResult;
            RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i11];
            Format[] formats = getFormats(trackSelectorResult.selections.get(i11));
            boolean z11 = this.playWhenReady && this.playbackInfo.playbackState == 3;
            renderer.enable(rendererConfiguration, formats, playingPeriod.sampleStreams[i11], this.rendererPositionUs, !z10 && z11, playingPeriod.getRendererOffset());
            this.mediaClock.onRendererEnabled(renderer);
            if (z11) {
                renderer.start();
            }
        }
    }

    private void enableRenderers(boolean[] zArr, int i11) throws ExoPlaybackException {
        this.enabledRenderers = new Renderer[i11];
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        int i12 = 0;
        for (int i13 = 0; i13 < this.renderers.length; i13++) {
            if (playingPeriod.trackSelectorResult.isRendererEnabled(i13)) {
                enableRenderer(i13, zArr[i13], i12);
                i12++;
            }
        }
    }

    private void ensureStopped(Renderer renderer) throws ExoPlaybackException {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    private int getFirstPeriodIndex() {
        Timeline timeline = this.playbackInfo.timeline;
        if (timeline.isEmpty()) {
            return 0;
        }
        return timeline.getWindow(timeline.getFirstWindowIndex(this.shuffleModeEnabled), this.window).firstPeriodIndex;
    }

    @NonNull
    private static Format[] getFormats(TrackSelection trackSelection) {
        int length = trackSelection != null ? trackSelection.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i11 = 0; i11 < length; i11++) {
            formatArr[i11] = trackSelection.getFormat(i11);
        }
        return formatArr;
    }

    private Pair<Integer, Long> getPeriodPosition(Timeline timeline, int i11, long j11) {
        return timeline.getPeriodPosition(this.window, this.period, i11, j11);
    }

    private void handleContinueLoadingRequested(MediaPeriod mediaPeriod) {
        if (this.queue.isLoading(mediaPeriod)) {
            this.queue.reevaluateBuffer(this.rendererPositionUs);
            maybeContinueLoading();
        }
    }

    private void handlePeriodPrepared(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        if (this.queue.isLoading(mediaPeriod)) {
            MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
            loadingPeriod.handlePrepared(this.mediaClock.getPlaybackParameters().speed);
            updateLoadControlTrackSelection(loadingPeriod.trackGroups, loadingPeriod.trackSelectorResult);
            if (!this.queue.hasPlayingPeriod()) {
                resetRendererPosition(this.queue.advancePlayingPeriod().info.startPositionUs);
                updatePlayingPeriodRenderers(null);
            }
            maybeContinueLoading();
        }
    }

    private void handleSourceInfoRefreshEndedPlayback() {
        setState(4);
        resetInternal(false, true, false);
    }

    private void handleSourceInfoRefreshed(MediaSourceRefreshInfo mediaSourceRefreshInfo) throws ExoPlaybackException {
        if (mediaSourceRefreshInfo.source != this.mediaSource) {
            return;
        }
        Timeline timeline = this.playbackInfo.timeline;
        Timeline timeline2 = mediaSourceRefreshInfo.timeline;
        Object obj = mediaSourceRefreshInfo.manifest;
        this.queue.setTimeline(timeline2);
        this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline2, obj);
        resolvePendingMessagePositions();
        int i11 = this.pendingPrepareCount;
        if (i11 > 0) {
            this.playbackInfoUpdate.incrementPendingOperationAcks(i11);
            this.pendingPrepareCount = 0;
            SeekPosition seekPosition = this.pendingInitialSeekPosition;
            if (seekPosition != null) {
                Pair<Integer, Long> pairResolveSeekPosition = resolveSeekPosition(seekPosition, true);
                this.pendingInitialSeekPosition = null;
                if (pairResolveSeekPosition == null) {
                    handleSourceInfoRefreshEndedPlayback();
                    return;
                }
                int iIntValue = ((Integer) pairResolveSeekPosition.first).intValue();
                long jLongValue = ((Long) pairResolveSeekPosition.second).longValue();
                MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds = this.queue.resolveMediaPeriodIdForAds(iIntValue, jLongValue);
                this.playbackInfo = this.playbackInfo.fromNewPosition(mediaPeriodIdResolveMediaPeriodIdForAds, mediaPeriodIdResolveMediaPeriodIdForAds.isAd() ? 0L : jLongValue, jLongValue);
                return;
            }
            if (this.playbackInfo.startPositionUs == C.TIME_UNSET) {
                if (timeline2.isEmpty()) {
                    handleSourceInfoRefreshEndedPlayback();
                    return;
                }
                Pair<Integer, Long> periodPosition = getPeriodPosition(timeline2, timeline2.getFirstWindowIndex(this.shuffleModeEnabled), C.TIME_UNSET);
                int iIntValue2 = ((Integer) periodPosition.first).intValue();
                long jLongValue2 = ((Long) periodPosition.second).longValue();
                MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds2 = this.queue.resolveMediaPeriodIdForAds(iIntValue2, jLongValue2);
                this.playbackInfo = this.playbackInfo.fromNewPosition(mediaPeriodIdResolveMediaPeriodIdForAds2, mediaPeriodIdResolveMediaPeriodIdForAds2.isAd() ? 0L : jLongValue2, jLongValue2);
                return;
            }
            return;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        int i12 = playbackInfo.periodId.periodIndex;
        long j11 = playbackInfo.contentPositionUs;
        if (timeline.isEmpty()) {
            if (timeline2.isEmpty()) {
                return;
            }
            MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds3 = this.queue.resolveMediaPeriodIdForAds(i12, j11);
            this.playbackInfo = this.playbackInfo.fromNewPosition(mediaPeriodIdResolveMediaPeriodIdForAds3, mediaPeriodIdResolveMediaPeriodIdForAds3.isAd() ? 0L : j11, j11);
            return;
        }
        MediaPeriodHolder frontPeriod = this.queue.getFrontPeriod();
        int indexOfPeriod = timeline2.getIndexOfPeriod(frontPeriod == null ? timeline.getPeriod(i12, this.period, true).uid : frontPeriod.uid);
        if (indexOfPeriod != -1) {
            if (indexOfPeriod != i12) {
                this.playbackInfo = this.playbackInfo.copyWithPeriodIndex(indexOfPeriod);
            }
            MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
            if (mediaPeriodId.isAd()) {
                MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds4 = this.queue.resolveMediaPeriodIdForAds(indexOfPeriod, j11);
                if (!mediaPeriodIdResolveMediaPeriodIdForAds4.equals(mediaPeriodId)) {
                    this.playbackInfo = this.playbackInfo.fromNewPosition(mediaPeriodIdResolveMediaPeriodIdForAds4, seekToPeriodPosition(mediaPeriodIdResolveMediaPeriodIdForAds4, mediaPeriodIdResolveMediaPeriodIdForAds4.isAd() ? 0L : j11), j11);
                    return;
                }
            }
            if (this.queue.updateQueuedPeriods(mediaPeriodId, this.rendererPositionUs)) {
                return;
            }
            seekToCurrentPosition(false);
            return;
        }
        int iResolveSubsequentPeriod = resolveSubsequentPeriod(i12, timeline, timeline2);
        if (iResolveSubsequentPeriod == -1) {
            handleSourceInfoRefreshEndedPlayback();
            return;
        }
        Pair<Integer, Long> periodPosition2 = getPeriodPosition(timeline2, timeline2.getPeriod(iResolveSubsequentPeriod, this.period).windowIndex, C.TIME_UNSET);
        int iIntValue3 = ((Integer) periodPosition2.first).intValue();
        long jLongValue3 = ((Long) periodPosition2.second).longValue();
        MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds5 = this.queue.resolveMediaPeriodIdForAds(iIntValue3, jLongValue3);
        timeline2.getPeriod(iIntValue3, this.period, true);
        if (frontPeriod != null) {
            Object obj2 = this.period.uid;
            frontPeriod.info = frontPeriod.info.copyWithPeriodIndex(-1);
            while (true) {
                frontPeriod = frontPeriod.next;
                if (frontPeriod == null) {
                    break;
                } else if (frontPeriod.uid.equals(obj2)) {
                    frontPeriod.info = this.queue.getUpdatedMediaPeriodInfo(frontPeriod.info, iIntValue3);
                } else {
                    frontPeriod.info = frontPeriod.info.copyWithPeriodIndex(-1);
                }
            }
        }
        this.playbackInfo = this.playbackInfo.fromNewPosition(mediaPeriodIdResolveMediaPeriodIdForAds5, seekToPeriodPosition(mediaPeriodIdResolveMediaPeriodIdForAds5, mediaPeriodIdResolveMediaPeriodIdForAds5.isAd() ? 0L : jLongValue3), jLongValue3);
    }

    private boolean isTimelineReady() {
        MediaPeriodHolder mediaPeriodHolder;
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j11 = playingPeriod.info.durationUs;
        return j11 == C.TIME_UNSET || this.playbackInfo.positionUs < j11 || ((mediaPeriodHolder = playingPeriod.next) != null && (mediaPeriodHolder.prepared || mediaPeriodHolder.info.f36776id.isAd()));
    }

    private void maybeContinueLoading() {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        long nextLoadPositionUs = loadingPeriod.getNextLoadPositionUs();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            setIsLoading(false);
            return;
        }
        boolean zShouldContinueLoading = this.loadControl.shouldContinueLoading(nextLoadPositionUs - loadingPeriod.toPeriodTime(this.rendererPositionUs), this.mediaClock.getPlaybackParameters().speed);
        setIsLoading(zShouldContinueLoading);
        if (zShouldContinueLoading) {
            loadingPeriod.continueLoading(this.rendererPositionUs);
        }
    }

    private void maybeNotifyPlaybackInfoChanged() {
        if (this.playbackInfoUpdate.hasPendingUpdate(this.playbackInfo)) {
            this.eventHandler.obtainMessage(0, this.playbackInfoUpdate.operationAcks, this.playbackInfoUpdate.positionDiscontinuity ? this.playbackInfoUpdate.discontinuityReason : -1, this.playbackInfo).sendToTarget();
            this.playbackInfoUpdate.reset(this.playbackInfo);
        }
    }

    private void maybeThrowPeriodPrepareError() throws IOException {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (loadingPeriod == null || loadingPeriod.prepared) {
            return;
        }
        if (readingPeriod == null || readingPeriod.next == loadingPeriod) {
            for (Renderer renderer : this.enabledRenderers) {
                if (!renderer.hasReadStreamToEnd()) {
                    return;
                }
            }
            loadingPeriod.mediaPeriod.maybeThrowPrepareError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0034, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x006b, code lost:
    
        r1 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void maybeTriggerPendingMessages(long j11, long j12) throws ExoPlaybackException {
        if (this.pendingMessages.isEmpty() || this.playbackInfo.periodId.isAd()) {
            return;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.startPositionUs == j11) {
            j11--;
        }
        int i11 = playbackInfo.periodId.periodIndex;
        int i12 = this.nextPendingMessageIndex;
        if (i12 > 0) {
            PendingMessageInfo pendingMessageInfo = this.pendingMessages.get(i12 - 1);
            while (pendingMessageInfo != null) {
                int i13 = pendingMessageInfo.resolvedPeriodIndex;
                if (i13 <= i11 && (i13 != i11 || pendingMessageInfo.resolvedPeriodTimeUs <= j11)) {
                    break;
                }
                int i14 = this.nextPendingMessageIndex;
                int i15 = i14 - 1;
                this.nextPendingMessageIndex = i15;
                pendingMessageInfo = i15 > 0 ? this.pendingMessages.get(i14 - 2) : null;
            }
            if (this.nextPendingMessageIndex < this.pendingMessages.size()) {
                PendingMessageInfo pendingMessageInfo2 = this.pendingMessages.get(this.nextPendingMessageIndex);
                while (pendingMessageInfo2 != null && pendingMessageInfo2.resolvedPeriodUid != null) {
                    int i16 = pendingMessageInfo2.resolvedPeriodIndex;
                    if (i16 >= i11 && (i16 != i11 || pendingMessageInfo2.resolvedPeriodTimeUs > j11)) {
                        break;
                    }
                    int i17 = this.nextPendingMessageIndex + 1;
                    this.nextPendingMessageIndex = i17;
                    pendingMessageInfo2 = i17 < this.pendingMessages.size() ? this.pendingMessages.get(this.nextPendingMessageIndex) : null;
                }
                while (pendingMessageInfo2 != null && pendingMessageInfo2.resolvedPeriodUid != null && pendingMessageInfo2.resolvedPeriodIndex == i11) {
                    long j13 = pendingMessageInfo2.resolvedPeriodTimeUs;
                    if (j13 <= j11 || j13 > j12) {
                        return;
                    }
                    sendMessageToTarget(pendingMessageInfo2.message);
                    if (pendingMessageInfo2.message.getDeleteAfterDelivery() || pendingMessageInfo2.message.isCanceled()) {
                        this.pendingMessages.remove(this.nextPendingMessageIndex);
                    } else {
                        this.nextPendingMessageIndex++;
                    }
                    pendingMessageInfo2 = this.nextPendingMessageIndex < this.pendingMessages.size() ? this.pendingMessages.get(this.nextPendingMessageIndex) : null;
                }
            }
        }
    }

    private void maybeUpdateLoadingPeriod() throws IOException {
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        if (this.queue.shouldLoadNextMediaPeriod()) {
            MediaPeriodInfo nextMediaPeriodInfo = this.queue.getNextMediaPeriodInfo(this.rendererPositionUs, this.playbackInfo);
            if (nextMediaPeriodInfo == null) {
                this.mediaSource.maybeThrowSourceInfoRefreshError();
                return;
            }
            this.queue.enqueueNextMediaPeriod(this.rendererCapabilities, this.trackSelector, this.loadControl.getAllocator(), this.mediaSource, this.playbackInfo.timeline.getPeriod(nextMediaPeriodInfo.f36776id.periodIndex, this.period, true).uid, nextMediaPeriodInfo).prepare(this, nextMediaPeriodInfo.startPositionUs);
            setIsLoading(true);
        }
    }

    private void prepareInternal(MediaSource mediaSource, boolean z10, boolean z11) {
        this.pendingPrepareCount++;
        resetInternal(true, z10, z11);
        this.loadControl.onPrepared();
        this.mediaSource = mediaSource;
        setState(2);
        mediaSource.prepareSource(this.player, true, this);
        this.handler.sendEmptyMessage(2);
    }

    private void releaseInternal() {
        resetInternal(true, true, true);
        this.loadControl.onReleased();
        setState(1);
        this.internalPlaybackThread.quitSafely();
        synchronized (this) {
            this.released = true;
            notifyAll();
        }
    }

    private boolean rendererWaitingForNextStream(Renderer renderer) {
        MediaPeriodHolder mediaPeriodHolder = this.queue.getReadingPeriod().next;
        return mediaPeriodHolder != null && mediaPeriodHolder.prepared && renderer.hasReadStreamToEnd();
    }

    private void reselectTracksInternal() throws ExoPlaybackException {
        if (this.queue.hasPlayingPeriod()) {
            float f11 = this.mediaClock.getPlaybackParameters().speed;
            MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
            boolean z10 = true;
            for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null && playingPeriod.prepared; playingPeriod = playingPeriod.next) {
                if (playingPeriod.selectTracks(f11)) {
                    if (z10) {
                        MediaPeriodHolder playingPeriod2 = this.queue.getPlayingPeriod();
                        boolean zRemoveAfter = this.queue.removeAfter(playingPeriod2);
                        boolean[] zArr = new boolean[this.renderers.length];
                        long jApplyTrackSelection = playingPeriod2.applyTrackSelection(this.playbackInfo.positionUs, zRemoveAfter, zArr);
                        updateLoadControlTrackSelection(playingPeriod2.trackGroups, playingPeriod2.trackSelectorResult);
                        PlaybackInfo playbackInfo = this.playbackInfo;
                        if (playbackInfo.playbackState != 4 && jApplyTrackSelection != playbackInfo.positionUs) {
                            PlaybackInfo playbackInfo2 = this.playbackInfo;
                            this.playbackInfo = playbackInfo2.fromNewPosition(playbackInfo2.periodId, jApplyTrackSelection, playbackInfo2.contentPositionUs);
                            this.playbackInfoUpdate.setPositionDiscontinuity(4);
                            resetRendererPosition(jApplyTrackSelection);
                        }
                        boolean[] zArr2 = new boolean[this.renderers.length];
                        int i11 = 0;
                        int i12 = 0;
                        while (true) {
                            Renderer[] rendererArr = this.renderers;
                            if (i11 >= rendererArr.length) {
                                break;
                            }
                            Renderer renderer = rendererArr[i11];
                            boolean z11 = renderer.getState() != 0;
                            zArr2[i11] = z11;
                            SampleStream sampleStream = playingPeriod2.sampleStreams[i11];
                            if (sampleStream != null) {
                                i12++;
                            }
                            if (z11) {
                                if (sampleStream != renderer.getStream()) {
                                    disableRenderer(renderer);
                                } else if (zArr[i11]) {
                                    renderer.resetPosition(this.rendererPositionUs);
                                }
                            }
                            i11++;
                        }
                        this.playbackInfo = this.playbackInfo.copyWithTrackInfo(playingPeriod2.trackGroups, playingPeriod2.trackSelectorResult);
                        enableRenderers(zArr2, i12);
                    } else {
                        this.queue.removeAfter(playingPeriod);
                        if (playingPeriod.prepared) {
                            playingPeriod.applyTrackSelection(Math.max(playingPeriod.info.startPositionUs, playingPeriod.toPeriodTime(this.rendererPositionUs)), false);
                            updateLoadControlTrackSelection(playingPeriod.trackGroups, playingPeriod.trackSelectorResult);
                        }
                    }
                    if (this.playbackInfo.playbackState != 4) {
                        maybeContinueLoading();
                        updatePlaybackPositions();
                        this.handler.sendEmptyMessage(2);
                        return;
                    }
                    return;
                }
                if (playingPeriod == readingPeriod) {
                    z10 = false;
                }
            }
        }
    }

    private void resetInternal(boolean z10, boolean z11, boolean z12) {
        MediaSource mediaSource;
        this.handler.removeMessages(2);
        this.rebuffering = false;
        this.mediaClock.stop();
        this.rendererPositionUs = 0L;
        for (Renderer renderer : this.enabledRenderers) {
            try {
                disableRenderer(renderer);
            } catch (ExoPlaybackException | RuntimeException e11) {
                Log.e(TAG, "Stop failed.", e11);
            }
        }
        this.enabledRenderers = new Renderer[0];
        this.queue.clear(!z11);
        setIsLoading(false);
        if (z11) {
            this.pendingInitialSeekPosition = null;
        }
        if (z12) {
            this.queue.setTimeline(Timeline.EMPTY);
            Iterator<PendingMessageInfo> it = this.pendingMessages.iterator();
            while (it.hasNext()) {
                it.next().message.markAsProcessed(false);
            }
            this.pendingMessages.clear();
            this.nextPendingMessageIndex = 0;
        }
        Timeline timeline = z12 ? Timeline.EMPTY : this.playbackInfo.timeline;
        Object obj = z12 ? null : this.playbackInfo.manifest;
        MediaSource.MediaPeriodId mediaPeriodId = z11 ? new MediaSource.MediaPeriodId(getFirstPeriodIndex()) : this.playbackInfo.periodId;
        long j11 = C.TIME_UNSET;
        long j12 = z11 ? -9223372036854775807L : this.playbackInfo.positionUs;
        if (!z11) {
            j11 = this.playbackInfo.contentPositionUs;
        }
        long j13 = j11;
        PlaybackInfo playbackInfo = this.playbackInfo;
        this.playbackInfo = new PlaybackInfo(timeline, obj, mediaPeriodId, j12, j13, playbackInfo.playbackState, false, z12 ? TrackGroupArray.EMPTY : playbackInfo.trackGroups, z12 ? this.emptyTrackSelectorResult : playbackInfo.trackSelectorResult);
        if (!z10 || (mediaSource = this.mediaSource) == null) {
            return;
        }
        mediaSource.releaseSource(this);
        this.mediaSource = null;
    }

    private void resetRendererPosition(long j11) throws ExoPlaybackException {
        if (this.queue.hasPlayingPeriod()) {
            j11 = this.queue.getPlayingPeriod().toRendererTime(j11);
        }
        this.rendererPositionUs = j11;
        this.mediaClock.resetPosition(j11);
        for (Renderer renderer : this.enabledRenderers) {
            renderer.resetPosition(this.rendererPositionUs);
        }
    }

    private boolean resolvePendingMessagePosition(PendingMessageInfo pendingMessageInfo) {
        Object obj = pendingMessageInfo.resolvedPeriodUid;
        if (obj == null) {
            Pair<Integer, Long> pairResolveSeekPosition = resolveSeekPosition(new SeekPosition(pendingMessageInfo.message.getTimeline(), pendingMessageInfo.message.getWindowIndex(), C.msToUs(pendingMessageInfo.message.getPositionMs())), false);
            if (pairResolveSeekPosition == null) {
                return false;
            }
            pendingMessageInfo.setResolvedPosition(((Integer) pairResolveSeekPosition.first).intValue(), ((Long) pairResolveSeekPosition.second).longValue(), this.playbackInfo.timeline.getPeriod(((Integer) pairResolveSeekPosition.first).intValue(), this.period, true).uid);
        } else {
            int indexOfPeriod = this.playbackInfo.timeline.getIndexOfPeriod(obj);
            if (indexOfPeriod == -1) {
                return false;
            }
            pendingMessageInfo.resolvedPeriodIndex = indexOfPeriod;
        }
        return true;
    }

    private void resolvePendingMessagePositions() {
        for (int size = this.pendingMessages.size() - 1; size >= 0; size--) {
            if (!resolvePendingMessagePosition(this.pendingMessages.get(size))) {
                this.pendingMessages.get(size).message.markAsProcessed(false);
                this.pendingMessages.remove(size);
            }
        }
        Collections.sort(this.pendingMessages);
    }

    private Pair<Integer, Long> resolveSeekPosition(SeekPosition seekPosition, boolean z10) {
        int iResolveSubsequentPeriod;
        Timeline timeline = this.playbackInfo.timeline;
        Timeline timeline2 = seekPosition.timeline;
        if (timeline.isEmpty()) {
            return null;
        }
        if (timeline2.isEmpty()) {
            timeline2 = timeline;
        }
        try {
            Pair<Integer, Long> periodPosition = timeline2.getPeriodPosition(this.window, this.period, seekPosition.windowIndex, seekPosition.windowPositionUs);
            if (timeline == timeline2) {
                return periodPosition;
            }
            int indexOfPeriod = timeline.getIndexOfPeriod(timeline2.getPeriod(((Integer) periodPosition.first).intValue(), this.period, true).uid);
            if (indexOfPeriod != -1) {
                return Pair.create(Integer.valueOf(indexOfPeriod), (Long) periodPosition.second);
            }
            if (!z10 || (iResolveSubsequentPeriod = resolveSubsequentPeriod(((Integer) periodPosition.first).intValue(), timeline2, timeline)) == -1) {
                return null;
            }
            return getPeriodPosition(timeline, timeline.getPeriod(iResolveSubsequentPeriod, this.period).windowIndex, C.TIME_UNSET);
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalSeekPositionException(timeline, seekPosition.windowIndex, seekPosition.windowPositionUs);
        }
    }

    private int resolveSubsequentPeriod(int i11, Timeline timeline, Timeline timeline2) {
        int periodCount = timeline.getPeriodCount();
        int nextPeriodIndex = i11;
        int indexOfPeriod = -1;
        for (int i12 = 0; i12 < periodCount && indexOfPeriod == -1; i12++) {
            nextPeriodIndex = timeline.getNextPeriodIndex(nextPeriodIndex, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            if (nextPeriodIndex == -1) {
                break;
            }
            indexOfPeriod = timeline2.getIndexOfPeriod(timeline.getPeriod(nextPeriodIndex, this.period, true).uid);
        }
        return indexOfPeriod;
    }

    private void scheduleNextWork(long j11, long j12) {
        this.handler.removeMessages(2);
        this.handler.sendEmptyMessageAtTime(2, j11 + j12);
    }

    private void seekToCurrentPosition(boolean z10) throws ExoPlaybackException {
        MediaSource.MediaPeriodId mediaPeriodId = this.queue.getPlayingPeriod().info.f36776id;
        long jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, this.playbackInfo.positionUs, true);
        if (jSeekToPeriodPosition != this.playbackInfo.positionUs) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            this.playbackInfo = playbackInfo.fromNewPosition(mediaPeriodId, jSeekToPeriodPosition, playbackInfo.contentPositionUs);
            if (z10) {
                this.playbackInfoUpdate.setPositionDiscontinuity(4);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00d7 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:57:? A[RETURN, SYNTHETIC] */
    private void seekToInternal(SeekPosition seekPosition) throws ExoPlaybackException {
        long jLongValue;
        boolean z10;
        MediaSource.MediaPeriodId mediaPeriodId;
        long j11;
        long j12;
        PlaybackInfo playbackInfoFromNewPosition;
        long adjustedSeekPositionUs;
        boolean z11 = true;
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Pair<Integer, Long> pairResolveSeekPosition = resolveSeekPosition(seekPosition, true);
        if (pairResolveSeekPosition == null) {
            mediaPeriodId = new MediaSource.MediaPeriodId(getFirstPeriodIndex());
            z10 = true;
            jLongValue = -9223372036854775807L;
            j11 = -9223372036854775807L;
        } else {
            int iIntValue = ((Integer) pairResolveSeekPosition.first).intValue();
            long jLongValue2 = ((Long) pairResolveSeekPosition.second).longValue();
            MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds = this.queue.resolveMediaPeriodIdForAds(iIntValue, jLongValue2);
            if (mediaPeriodIdResolveMediaPeriodIdForAds.isAd()) {
                z10 = true;
                jLongValue = 0;
            } else {
                jLongValue = ((Long) pairResolveSeekPosition.second).longValue();
                z10 = seekPosition.windowPositionUs == C.TIME_UNSET;
            }
            mediaPeriodId = mediaPeriodIdResolveMediaPeriodIdForAds;
            j11 = jLongValue2;
        }
        try {
            if (this.mediaSource != null && this.pendingPrepareCount <= 0) {
                if (jLongValue == C.TIME_UNSET) {
                    setState(4);
                    resetInternal(false, true, false);
                } else {
                    if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
                        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
                        adjustedSeekPositionUs = (playingPeriod == null || jLongValue == 0) ? jLongValue : playingPeriod.mediaPeriod.getAdjustedSeekPositionUs(jLongValue, this.seekParameters);
                        if (C.usToMs(adjustedSeekPositionUs) == C.usToMs(this.playbackInfo.positionUs)) {
                            playbackInfoFromNewPosition = this.playbackInfo.fromNewPosition(mediaPeriodId, this.playbackInfo.positionUs, j11);
                            if (z10) {
                                return;
                            } else {
                                return;
                            }
                        }
                    } else {
                        adjustedSeekPositionUs = jLongValue;
                    }
                    long jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, adjustedSeekPositionUs);
                    if (jLongValue == jSeekToPeriodPosition) {
                        z11 = false;
                    }
                    z10 |= z11;
                    j12 = jSeekToPeriodPosition;
                }
                playbackInfoFromNewPosition = this.playbackInfo.fromNewPosition(mediaPeriodId, j12, j11);
            }
            this.pendingInitialSeekPosition = seekPosition;
            j12 = jLongValue;
            playbackInfoFromNewPosition = this.playbackInfo.fromNewPosition(mediaPeriodId, j12, j11);
        } finally {
            this.playbackInfo = this.playbackInfo.fromNewPosition(mediaPeriodId, jLongValue, j11);
            if (z10) {
                this.playbackInfoUpdate.setPositionDiscontinuity(2);
            }
        }
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j11) throws ExoPlaybackException {
        return seekToPeriodPosition(mediaPeriodId, j11, this.queue.getPlayingPeriod() != this.queue.getReadingPeriod());
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j11, boolean z10) throws ExoPlaybackException {
        stopRenderers();
        this.rebuffering = false;
        setState(2);
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        MediaPeriodHolder mediaPeriodHolderAdvancePlayingPeriod = playingPeriod;
        while (mediaPeriodHolderAdvancePlayingPeriod != null) {
            if (shouldKeepPeriodHolder(mediaPeriodId, j11, mediaPeriodHolderAdvancePlayingPeriod)) {
                this.queue.removeAfter(mediaPeriodHolderAdvancePlayingPeriod);
                break;
            }
            mediaPeriodHolderAdvancePlayingPeriod = this.queue.advancePlayingPeriod();
        }
        if (playingPeriod != mediaPeriodHolderAdvancePlayingPeriod || z10) {
            for (Renderer renderer : this.enabledRenderers) {
                disableRenderer(renderer);
            }
            this.enabledRenderers = new Renderer[0];
            playingPeriod = null;
        }
        if (mediaPeriodHolderAdvancePlayingPeriod != null) {
            updatePlayingPeriodRenderers(playingPeriod);
            if (mediaPeriodHolderAdvancePlayingPeriod.hasEnabledTracks) {
                j11 = mediaPeriodHolderAdvancePlayingPeriod.mediaPeriod.seekToUs(j11);
                mediaPeriodHolderAdvancePlayingPeriod.mediaPeriod.discardBuffer(j11 - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            }
            resetRendererPosition(j11);
            maybeContinueLoading();
        } else {
            this.queue.clear(true);
            resetRendererPosition(j11);
        }
        this.handler.sendEmptyMessage(2);
        return j11;
    }

    private void sendMessageInternal(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getPositionMs() == C.TIME_UNSET) {
            sendMessageToTarget(playerMessage);
            return;
        }
        if (this.mediaSource == null || this.pendingPrepareCount > 0) {
            this.pendingMessages.add(new PendingMessageInfo(playerMessage));
            return;
        }
        PendingMessageInfo pendingMessageInfo = new PendingMessageInfo(playerMessage);
        if (!resolvePendingMessagePosition(pendingMessageInfo)) {
            playerMessage.markAsProcessed(false);
        } else {
            this.pendingMessages.add(pendingMessageInfo);
            Collections.sort(this.pendingMessages);
        }
    }

    private void sendMessageToTarget(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getHandler().getLooper() != this.handler.getLooper()) {
            this.handler.obtainMessage(15, playerMessage).sendToTarget();
            return;
        }
        deliverMessage(playerMessage);
        int i11 = this.playbackInfo.playbackState;
        if (i11 == 3 || i11 == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void sendMessageToTargetThread(final PlayerMessage playerMessage) {
        playerMessage.getHandler().post(new Runnable() { // from class: com.mbridge.msdk.playercommon.exoplayer2.ExoPlayerImplInternal.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ExoPlayerImplInternal.this.deliverMessage(playerMessage);
                } catch (ExoPlaybackException e11) {
                    Log.e(ExoPlayerImplInternal.TAG, "Unexpected error delivering message on external thread.", e11);
                    throw new RuntimeException(e11);
                }
            }
        });
    }

    private void setIsLoading(boolean z10) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.isLoading != z10) {
            this.playbackInfo = playbackInfo.copyWithIsLoading(z10);
        }
    }

    private void setPlayWhenReadyInternal(boolean z10) throws ExoPlaybackException {
        this.rebuffering = false;
        this.playWhenReady = z10;
        if (!z10) {
            stopRenderers();
            updatePlaybackPositions();
            return;
        }
        int i11 = this.playbackInfo.playbackState;
        if (i11 == 3) {
            startRenderers();
            this.handler.sendEmptyMessage(2);
        } else if (i11 == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void setPlaybackParametersInternal(PlaybackParameters playbackParameters) {
        this.mediaClock.setPlaybackParameters(playbackParameters);
    }

    private void setRepeatModeInternal(int i11) throws ExoPlaybackException {
        this.repeatMode = i11;
        if (this.queue.updateRepeatMode(i11)) {
            return;
        }
        seekToCurrentPosition(true);
    }

    private void setSeekParametersInternal(SeekParameters seekParameters) {
        this.seekParameters = seekParameters;
    }

    private void setShuffleModeEnabledInternal(boolean z10) throws ExoPlaybackException {
        this.shuffleModeEnabled = z10;
        if (this.queue.updateShuffleModeEnabled(z10)) {
            return;
        }
        seekToCurrentPosition(true);
    }

    private void setState(int i11) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != i11) {
            this.playbackInfo = playbackInfo.copyWithPlaybackState(i11);
        }
    }

    private boolean shouldKeepPeriodHolder(MediaSource.MediaPeriodId mediaPeriodId, long j11, MediaPeriodHolder mediaPeriodHolder) {
        if (!mediaPeriodId.equals(mediaPeriodHolder.info.f36776id) || !mediaPeriodHolder.prepared) {
            return false;
        }
        this.playbackInfo.timeline.getPeriod(mediaPeriodHolder.info.f36776id.periodIndex, this.period);
        int adGroupIndexAfterPositionUs = this.period.getAdGroupIndexAfterPositionUs(j11);
        return adGroupIndexAfterPositionUs == -1 || this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs) == mediaPeriodHolder.info.endPositionUs;
    }

    private boolean shouldTransitionToReadyState(boolean z10) {
        if (this.enabledRenderers.length == 0) {
            return isTimelineReady();
        }
        if (!z10) {
            return false;
        }
        if (!this.playbackInfo.isLoading) {
            return true;
        }
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        long bufferedPositionUs = loadingPeriod.getBufferedPositionUs(!loadingPeriod.info.isFinal);
        return bufferedPositionUs == Long.MIN_VALUE || this.loadControl.shouldStartPlayback(bufferedPositionUs - loadingPeriod.toPeriodTime(this.rendererPositionUs), this.mediaClock.getPlaybackParameters().speed, this.rebuffering);
    }

    private void startRenderers() throws ExoPlaybackException {
        this.rebuffering = false;
        this.mediaClock.start();
        for (Renderer renderer : this.enabledRenderers) {
            renderer.start();
        }
    }

    private void stopInternal(boolean z10, boolean z11) {
        resetInternal(true, z10, z10);
        this.playbackInfoUpdate.incrementPendingOperationAcks(this.pendingPrepareCount + (z11 ? 1 : 0));
        this.pendingPrepareCount = 0;
        this.loadControl.onStopped();
        setState(1);
    }

    private void stopRenderers() throws ExoPlaybackException {
        this.mediaClock.stop();
        for (Renderer renderer : this.enabledRenderers) {
            ensureStopped(renderer);
        }
    }

    private void updateLoadControlTrackSelection(TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        this.loadControl.onTracksSelected(this.renderers, trackGroupArray, trackSelectorResult.selections);
    }

    private void updatePeriods() throws IOException, ExoPlaybackException {
        MediaSource mediaSource = this.mediaSource;
        if (mediaSource == null) {
            return;
        }
        if (this.pendingPrepareCount > 0) {
            mediaSource.maybeThrowSourceInfoRefreshError();
            return;
        }
        maybeUpdateLoadingPeriod();
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        int i11 = 0;
        if (loadingPeriod == null || loadingPeriod.isFullyBuffered()) {
            setIsLoading(false);
        } else if (!this.playbackInfo.isLoading) {
            maybeContinueLoading();
        }
        if (!this.queue.hasPlayingPeriod()) {
            return;
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        boolean z10 = false;
        while (this.playWhenReady && playingPeriod != readingPeriod && this.rendererPositionUs >= playingPeriod.next.rendererPositionOffsetUs) {
            if (z10) {
                maybeNotifyPlaybackInfoChanged();
            }
            int i12 = playingPeriod.info.isLastInTimelinePeriod ? 0 : 3;
            MediaPeriodHolder mediaPeriodHolderAdvancePlayingPeriod = this.queue.advancePlayingPeriod();
            updatePlayingPeriodRenderers(playingPeriod);
            PlaybackInfo playbackInfo = this.playbackInfo;
            MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolderAdvancePlayingPeriod.info;
            this.playbackInfo = playbackInfo.fromNewPosition(mediaPeriodInfo.f36776id, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.contentPositionUs);
            this.playbackInfoUpdate.setPositionDiscontinuity(i12);
            updatePlaybackPositions();
            playingPeriod = mediaPeriodHolderAdvancePlayingPeriod;
            z10 = true;
        }
        if (readingPeriod.info.isFinal) {
            while (true) {
                Renderer[] rendererArr = this.renderers;
                if (i11 >= rendererArr.length) {
                    return;
                }
                Renderer renderer = rendererArr[i11];
                SampleStream sampleStream = readingPeriod.sampleStreams[i11];
                if (sampleStream != null && renderer.getStream() == sampleStream && renderer.hasReadStreamToEnd()) {
                    renderer.setCurrentStreamFinal();
                }
                i11++;
            }
        } else {
            MediaPeriodHolder mediaPeriodHolder = readingPeriod.next;
            if (mediaPeriodHolder == null || !mediaPeriodHolder.prepared) {
                return;
            }
            int i13 = 0;
            while (true) {
                Renderer[] rendererArr2 = this.renderers;
                if (i13 < rendererArr2.length) {
                    Renderer renderer2 = rendererArr2[i13];
                    SampleStream sampleStream2 = readingPeriod.sampleStreams[i13];
                    if (renderer2.getStream() != sampleStream2) {
                        return;
                    }
                    if (sampleStream2 != null && !renderer2.hasReadStreamToEnd()) {
                        return;
                    } else {
                        i13++;
                    }
                } else {
                    TrackSelectorResult trackSelectorResult = readingPeriod.trackSelectorResult;
                    MediaPeriodHolder mediaPeriodHolderAdvanceReadingPeriod = this.queue.advanceReadingPeriod();
                    TrackSelectorResult trackSelectorResult2 = mediaPeriodHolderAdvanceReadingPeriod.trackSelectorResult;
                    boolean z11 = mediaPeriodHolderAdvanceReadingPeriod.mediaPeriod.readDiscontinuity() != C.TIME_UNSET;
                    int i14 = 0;
                    while (true) {
                        Renderer[] rendererArr3 = this.renderers;
                        if (i14 >= rendererArr3.length) {
                            return;
                        }
                        Renderer renderer3 = rendererArr3[i14];
                        if (trackSelectorResult.isRendererEnabled(i14)) {
                            if (z11) {
                                renderer3.setCurrentStreamFinal();
                            } else if (!renderer3.isCurrentStreamFinal()) {
                                TrackSelection trackSelection = trackSelectorResult2.selections.get(i14);
                                boolean zIsRendererEnabled = trackSelectorResult2.isRendererEnabled(i14);
                                boolean z12 = this.rendererCapabilities[i14].getTrackType() == 5;
                                RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i14];
                                RendererConfiguration rendererConfiguration2 = trackSelectorResult2.rendererConfigurations[i14];
                                if (zIsRendererEnabled && rendererConfiguration2.equals(rendererConfiguration) && !z12) {
                                    renderer3.replaceStream(getFormats(trackSelection), mediaPeriodHolderAdvanceReadingPeriod.sampleStreams[i14], mediaPeriodHolderAdvanceReadingPeriod.getRendererOffset());
                                } else {
                                    renderer3.setCurrentStreamFinal();
                                }
                            }
                        }
                        i14++;
                    }
                }
            }
        }
    }

    private void updatePlaybackPositions() throws ExoPlaybackException {
        if (this.queue.hasPlayingPeriod()) {
            MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
            long discontinuity = playingPeriod.mediaPeriod.readDiscontinuity();
            if (discontinuity != C.TIME_UNSET) {
                resetRendererPosition(discontinuity);
                if (discontinuity != this.playbackInfo.positionUs) {
                    PlaybackInfo playbackInfo = this.playbackInfo;
                    this.playbackInfo = playbackInfo.fromNewPosition(playbackInfo.periodId, discontinuity, playbackInfo.contentPositionUs);
                    this.playbackInfoUpdate.setPositionDiscontinuity(4);
                }
            } else {
                long jSyncAndGetPositionUs = this.mediaClock.syncAndGetPositionUs();
                this.rendererPositionUs = jSyncAndGetPositionUs;
                long periodTime = playingPeriod.toPeriodTime(jSyncAndGetPositionUs);
                maybeTriggerPendingMessages(this.playbackInfo.positionUs, periodTime);
                this.playbackInfo.positionUs = periodTime;
            }
            this.playbackInfo.bufferedPositionUs = this.enabledRenderers.length == 0 ? playingPeriod.info.durationUs : playingPeriod.getBufferedPositionUs(true);
        }
    }

    private void updatePlayingPeriodRenderers(@Nullable MediaPeriodHolder mediaPeriodHolder) throws ExoPlaybackException {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null || mediaPeriodHolder == playingPeriod) {
            return;
        }
        boolean[] zArr = new boolean[this.renderers.length];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            Renderer[] rendererArr = this.renderers;
            if (i11 >= rendererArr.length) {
                this.playbackInfo = this.playbackInfo.copyWithTrackInfo(playingPeriod.trackGroups, playingPeriod.trackSelectorResult);
                enableRenderers(zArr, i12);
                return;
            }
            Renderer renderer = rendererArr[i11];
            zArr[i11] = renderer.getState() != 0;
            if (playingPeriod.trackSelectorResult.isRendererEnabled(i11)) {
                i12++;
            }
            if (zArr[i11] && (!playingPeriod.trackSelectorResult.isRendererEnabled(i11) || (renderer.isCurrentStreamFinal() && renderer.getStream() == mediaPeriodHolder.sampleStreams[i11]))) {
                disableRenderer(renderer);
            }
            i11++;
        }
    }

    private void updateTrackSelectionPlaybackSpeed(float f11) {
        for (MediaPeriodHolder frontPeriod = this.queue.getFrontPeriod(); frontPeriod != null; frontPeriod = frontPeriod.next) {
            TrackSelectorResult trackSelectorResult = frontPeriod.trackSelectorResult;
            if (trackSelectorResult != null) {
                for (TrackSelection trackSelection : trackSelectorResult.selections.getAll()) {
                    if (trackSelection != null) {
                        trackSelection.onPlaybackSpeed(f11);
                    }
                }
            }
        }
    }

    public Looper getPlaybackLooper() {
        return this.internalPlaybackThread.getLooper();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            switch (message.what) {
                case 0:
                    prepareInternal((MediaSource) message.obj, message.arg1 != 0, message.arg2 != 0);
                    break;
                case 1:
                    setPlayWhenReadyInternal(message.arg1 != 0);
                    break;
                case 2:
                    doSomeWork();
                    break;
                case 3:
                    seekToInternal((SeekPosition) message.obj);
                    break;
                case 4:
                    setPlaybackParametersInternal((PlaybackParameters) message.obj);
                    break;
                case 5:
                    setSeekParametersInternal((SeekParameters) message.obj);
                    break;
                case 6:
                    stopInternal(message.arg1 != 0, true);
                    break;
                case 7:
                    releaseInternal();
                    return true;
                case 8:
                    handleSourceInfoRefreshed((MediaSourceRefreshInfo) message.obj);
                    break;
                case 9:
                    handlePeriodPrepared((MediaPeriod) message.obj);
                    break;
                case 10:
                    handleContinueLoadingRequested((MediaPeriod) message.obj);
                    break;
                case 11:
                    reselectTracksInternal();
                    break;
                case 12:
                    setRepeatModeInternal(message.arg1);
                    break;
                case 13:
                    setShuffleModeEnabledInternal(message.arg1 != 0);
                    break;
                case 14:
                    sendMessageInternal((PlayerMessage) message.obj);
                    break;
                case 15:
                    sendMessageToTargetThread((PlayerMessage) message.obj);
                    break;
                default:
                    return false;
            }
            maybeNotifyPlaybackInfoChanged();
        } catch (ExoPlaybackException e11) {
            Log.e(TAG, "Playback error.", e11);
            stopInternal(false, false);
            this.eventHandler.obtainMessage(2, e11).sendToTarget();
            maybeNotifyPlaybackInfoChanged();
        } catch (IOException e12) {
            Log.e(TAG, "Source error.", e12);
            stopInternal(false, false);
            this.eventHandler.obtainMessage(2, ExoPlaybackException.createForSource(e12)).sendToTarget();
            maybeNotifyPlaybackInfoChanged();
        } catch (RuntimeException e13) {
            Log.e(TAG, "Internal runtime error.", e13);
            stopInternal(false, false);
            this.eventHandler.obtainMessage(2, ExoPlaybackException.createForUnexpected(e13)).sendToTarget();
            maybeNotifyPlaybackInfoChanged();
        }
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(10, mediaPeriod).sendToTarget();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.DefaultMediaClock.PlaybackParameterListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.eventHandler.obtainMessage(1, playbackParameters).sendToTarget();
        updateTrackSelectionPlaybackSpeed(playbackParameters.speed);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(9, mediaPeriod).sendToTarget();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource.SourceInfoRefreshListener
    public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline, Object obj) {
        this.handler.obtainMessage(8, new MediaSourceRefreshInfo(mediaSource, timeline, obj)).sendToTarget();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(11);
    }

    public void prepare(MediaSource mediaSource, boolean z10, boolean z11) {
        this.handler.obtainMessage(0, z10 ? 1 : 0, z11 ? 1 : 0, mediaSource).sendToTarget();
    }

    public synchronized void release() {
        if (!this.released && this.internalPlaybackThread.isAlive()) {
            this.handler.sendEmptyMessage(7);
            long jElapsedRealtime = this.clock.elapsedRealtime();
            long jElapsedRealtime2 = DEFAULT_RELEASE_TIMEOUT_MS;
            long j11 = jElapsedRealtime + DEFAULT_RELEASE_TIMEOUT_MS;
            boolean z10 = false;
            while (!this.released && jElapsedRealtime2 > 0) {
                try {
                    wait(jElapsedRealtime2);
                } catch (InterruptedException unused) {
                    z10 = true;
                }
                jElapsedRealtime2 = j11 - this.clock.elapsedRealtime();
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public void seekTo(Timeline timeline, int i11, long j11) {
        this.handler.obtainMessage(3, new SeekPosition(timeline, i11, j11)).sendToTarget();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.PlayerMessage.Sender
    public synchronized void sendMessage(PlayerMessage playerMessage) {
        if (!this.released) {
            this.handler.obtainMessage(14, playerMessage).sendToTarget();
        } else {
            Log.w(TAG, "Ignoring messages sent after release.");
            playerMessage.markAsProcessed(false);
        }
    }

    public void setPlayWhenReady(boolean z10) {
        this.handler.obtainMessage(1, z10 ? 1 : 0, 0).sendToTarget();
    }

    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(4, playbackParameters).sendToTarget();
    }

    public void setRepeatMode(int i11) {
        this.handler.obtainMessage(12, i11, 0).sendToTarget();
    }

    public void setSeekParameters(SeekParameters seekParameters) {
        this.handler.obtainMessage(5, seekParameters).sendToTarget();
    }

    public void setShuffleModeEnabled(boolean z10) {
        this.handler.obtainMessage(13, z10 ? 1 : 0, 0).sendToTarget();
    }

    public void stop(boolean z10) {
        this.handler.obtainMessage(6, z10 ? 1 : 0, 0).sendToTarget();
    }
}
