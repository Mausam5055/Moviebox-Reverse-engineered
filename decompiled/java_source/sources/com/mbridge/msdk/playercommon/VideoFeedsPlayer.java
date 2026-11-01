package com.mbridge.msdk.playercommon;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayerFactory;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.Player;
import com.mbridge.msdk.playercommon.exoplayer2.SimpleExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.source.ExtractorMediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.DefaultTrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultDataSourceFactory;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public class VideoFeedsPlayer implements Player.EventListener {
    public static final int INTERVAL_TIME_PLAY_TIME_CD_THREAD = 1000;
    public static final String TAG = "VideoFeedsPlayer";
    private SimpleExoPlayer exoPlayer;
    private Timer mBufferTimeoutTimer;
    private long mCurrentPosition;
    private View mFullScreenLoadingView;
    private volatile VideoPlayerStatusListener mInnerVFPLisener;
    private boolean mIsSilent;
    private WeakReference<View> mLoadingView;
    private volatile VideoPlayerStatusListener mOutterVFListener;
    private String mPlayUrl;
    private SurfaceHolder mSurfaceHolder;
    private MediaSource mediaSource;
    private boolean mIsComplete = false;
    private boolean mIsPlaying = false;
    private boolean mHasPrepare = false;
    private boolean mIsBuffering = false;
    private boolean mIsNeedBufferingTimeout = false;
    private boolean mIsFrontDesk = true;
    private int mBufferTime = 5;
    private Object mLock = new Object();
    private boolean isStart = false;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
        }
    };
    private Runnable playProgressRunnable = new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.2
        @Override // java.lang.Runnable
        public void run() {
            long duration;
            try {
                if (VideoFeedsPlayer.this.exoPlayer == null || !VideoFeedsPlayer.this.exoPlayerIsPlaying()) {
                    return;
                }
                VideoFeedsPlayer videoFeedsPlayer = VideoFeedsPlayer.this;
                videoFeedsPlayer.mCurrentPosition = videoFeedsPlayer.exoPlayer.getCurrentPosition();
                float f11 = VideoFeedsPlayer.this.mCurrentPosition / 1000.0f;
                float f12 = VideoFeedsPlayer.this.mCurrentPosition % 1000;
                int iRound = Math.round(f11);
                o0.c(VideoFeedsPlayer.TAG, "currentPosition:" + iRound + " mCurrentPosition:" + VideoFeedsPlayer.this.mCurrentPosition);
                if (VideoFeedsPlayer.this.exoPlayer == null || VideoFeedsPlayer.this.exoPlayer.getDuration() <= 0) {
                    duration = 0;
                } else {
                    duration = VideoFeedsPlayer.this.exoPlayer.getDuration() / 1000;
                    if (f12 > 0.0f && f12 < 500.0f) {
                        iRound++;
                    }
                }
                if (iRound >= 0 && duration > 0 && iRound < 1 + duration) {
                    VideoFeedsPlayer.this.postOnPlayProgressOnMainThread(iRound, (int) duration);
                }
                VideoFeedsPlayer.this.mIsComplete = false;
                if (!VideoFeedsPlayer.this.mIsBuffering) {
                    VideoFeedsPlayer.this.hideLoading();
                }
                VideoFeedsPlayer.this.mHandler.postDelayed(this, 1000L);
            } catch (Exception e11) {
                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
            }
        }
    };

    private void cancelBufferTimeoutTimer() {
        try {
            Timer timer = this.mBufferTimeoutTimer;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void cancelPlayProgressTimer() {
        try {
            this.mHandler.removeCallbacks(this.playProgressRunnable);
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideLoading() {
        try {
            Handler handler = this.mHandler;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.5
                @Override // java.lang.Runnable
                public void run() {
                    if (VideoFeedsPlayer.this.mLoadingView != null && VideoFeedsPlayer.this.mLoadingView.get() != null) {
                        ((View) VideoFeedsPlayer.this.mLoadingView.get()).setVisibility(8);
                    }
                    if (VideoFeedsPlayer.this.mFullScreenLoadingView != null) {
                        VideoFeedsPlayer.this.mFullScreenLoadingView.setVisibility(8);
                    }
                }
            });
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void postOnBufferinEndOnMainThread() {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onBufferingEnd();
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onBufferingEnd();
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void postOnBufferingStarOnMainThread(final String str) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.8
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onBufferingStart(str);
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onBufferingStart(str);
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnBufferingTimeOutOnMainThread(final String str) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onBufferingTimeOut(str);
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onBufferingTimeOut(str);
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void postOnPlayCompletedOnMainThread() {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onPlayCompleted();
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onPlayCompleted();
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void postOnPlayErrorOnMainThread(final String str) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onPlayError(str);
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onPlayError(str);
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
            j.a(94, this.mPlayUrl, str);
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnPlayProgressOnMainThread(final int i11, final int i12) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onPlayProgress(i11, i12);
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onPlayProgress(i11, i12);
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void postOnPlaySetDataSourceError2MainThread(final String str) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.12
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onPlaySetDataSourceError(str);
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onPlaySetDataSourceError(str);
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void postOnPlayStartOnMainThread(final long j11) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.10
                    @Override // java.lang.Runnable
                    public void run() {
                        int i11 = (int) j11;
                        if (VideoFeedsPlayer.this.mOutterVFListener != null) {
                            try {
                                VideoFeedsPlayer.this.mOutterVFListener.onPlayStarted(i11);
                            } catch (Exception e11) {
                                o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                            }
                        }
                        if (VideoFeedsPlayer.this.mInnerVFPLisener != null) {
                            try {
                                VideoFeedsPlayer.this.mInnerVFPLisener.onPlayStarted(i11);
                            } catch (Exception e12) {
                                o0.b(VideoFeedsPlayer.TAG, e12.getMessage());
                            }
                        }
                    }
                });
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void startBufferIngTimer(final String str) {
        postOnBufferingStarOnMainThread(str);
        if (!this.mIsNeedBufferingTimeout) {
            o0.b(TAG, "不需要缓冲超时功能");
            return;
        }
        cancelBufferTimeoutTimer();
        Timer timer = new Timer();
        this.mBufferTimeoutTimer = timer;
        timer.schedule(new TimerTask() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    if (VideoFeedsPlayer.this.mHasPrepare && !VideoFeedsPlayer.this.mIsBuffering) {
                        return;
                    }
                    o0.b(VideoFeedsPlayer.TAG, "缓冲超时");
                    VideoFeedsPlayer.this.postOnBufferingTimeOutOnMainThread(str);
                } catch (Exception e11) {
                    o0.b(VideoFeedsPlayer.TAG, e11.getMessage());
                }
            }
        }, this.mBufferTime * 1000);
    }

    private void startPlayProgressTimer() {
        try {
            cancelPlayProgressTimer();
            this.mHandler.post(this.playProgressRunnable);
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void closeSound() {
        try {
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer == null) {
                return;
            }
            simpleExoPlayer.setVolume(0.0f);
            this.mIsSilent = true;
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public boolean exoPlayerIsPlaying() {
        return this.exoPlayer.getPlaybackState() == 3 && this.exoPlayer.getPlayWhenReady();
    }

    public boolean fullScreenLoadingViewisVisible() {
        try {
            View view = this.mFullScreenLoadingView;
            return view != null && view.getVisibility() == 0;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return false;
        }
    }

    public int getCurPosition() {
        return (int) this.mCurrentPosition;
    }

    public int getDuration() {
        SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
        if (simpleExoPlayer == null) {
            return 0;
        }
        simpleExoPlayer.getDuration();
        return 0;
    }

    public float getVolume() {
        SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
        if (simpleExoPlayer != null) {
            return simpleExoPlayer.getVolume();
        }
        return 0.0f;
    }

    public boolean halfLoadingViewisVisible() {
        try {
            WeakReference<View> weakReference = this.mLoadingView;
            return (weakReference == null || weakReference.get() == null || this.mLoadingView.get().getVisibility() != 0) ? false : true;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return false;
        }
    }

    public boolean hasPrepare() {
        return this.mHasPrepare;
    }

    public void initBufferIngParam(int i11) {
        if (i11 > 0) {
            this.mBufferTime = i11;
        }
        this.mIsNeedBufferingTimeout = true;
        o0.c(TAG, "mIsNeedBufferingTimeout:" + this.mIsNeedBufferingTimeout + "  mMaxBufferTime:" + this.mBufferTime);
    }

    public boolean initPlayer(Context context, View view, String str, VideoPlayerStatusListener videoPlayerStatusListener) {
        try {
            if (view == null) {
                o0.c(TAG, "loadingView is NULL");
                postOnPlayErrorOnMainThread(PlayerErrorConstant.MEDIAPLAYER_INIT_FAILED);
                return false;
            }
            this.mOutterVFListener = videoPlayerStatusListener;
            this.mLoadingView = new WeakReference<>(view);
            this.exoPlayer = ExoPlayerFactory.newSimpleInstance(new DefaultRenderersFactory(context), new DefaultTrackSelector(), new DefaultLoadControl());
            this.mediaSource = new ExtractorMediaSource.Factory(new DefaultDataSourceFactory(context, "MBridge_ExoPlayer")).createMediaSource(Uri.parse(str));
            this.exoPlayer.setRepeatMode(0);
            this.exoPlayer.prepare(this.mediaSource);
            this.exoPlayer.addListener(this);
            return true;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            postOnPlayErrorOnMainThread(th2.toString());
            return false;
        }
    }

    public boolean isComplete() {
        return this.mIsComplete;
    }

    public boolean isPlayIng() {
        try {
            return this.exoPlayer != null && exoPlayerIsPlaying();
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
            return false;
        }
    }

    public boolean isSilent() {
        return this.mIsSilent;
    }

    public void justSeekTo(int i11) {
        try {
            this.mCurrentPosition = i11;
            if (this.mHasPrepare) {
                return;
            }
            o0.a(TAG, "seekTo return mHasPrepare false");
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void onBufferingUpdate(int i11) {
    }

    public void onCompletion() {
        try {
            this.mIsComplete = true;
            this.mIsPlaying = false;
            this.mCurrentPosition = 0L;
            hideLoading();
            postOnPlayCompletedOnMainThread();
            o0.c(TAG, "======onCompletion");
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public boolean onError(int i11, String str) {
        try {
            o0.b(TAG, "onError what: " + i11 + " extra: " + str);
            hideLoading();
            if (!this.mIsFrontDesk && "MIX 3".equalsIgnoreCase(k0.n()) && k0.s().equalsIgnoreCase("Xiaomi")) {
                return true;
            }
            this.mHasPrepare = false;
            postOnPlayErrorOnMainThread(str);
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onLoadingChanged(boolean z10) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        o0.b(TAG, "onPlaybackParametersChanged : " + playbackParameters.speed);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        String message;
        if (exoPlaybackException == null) {
            message = "Play error and ExoPlayer have not message.";
        } else {
            int i11 = exoPlaybackException.type;
            if (i11 == 0) {
                message = "Play error, because have a SourceException.";
            } else if (i11 == 1) {
                message = "Play error, because have a RendererException.";
            } else if (i11 != 2) {
                message = "Play error and ExoPlayer have not message.";
            } else {
                message = "Play error, because have a UnexpectedException.";
            }
        }
        if (exoPlaybackException.getCause() != null && !TextUtils.isEmpty(exoPlaybackException.getCause().getMessage())) {
            message = exoPlaybackException.getCause().getMessage();
        }
        o0.b(TAG, "onPlayerError : " + message);
        onError(exoPlaybackException.type, message);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlayerStateChanged(boolean z10, int i11) {
        o0.b(TAG, "onPlaybackStateChanged : " + i11);
        if (i11 == 1) {
            o0.b(TAG, "onPlaybackStateChanged : IDLE");
            return;
        }
        if (i11 == 2) {
            o0.b(TAG, "onPlaybackStateChanged : Buffering");
            this.mIsBuffering = true;
            showLoading();
            startBufferIngTimer(PlayerErrorConstant.PLAYERING_TIMEOUT);
            return;
        }
        if (i11 != 3) {
            if (i11 != 4) {
                return;
            }
            o0.b(TAG, "onPlaybackStateChanged : Ended : PLAY ENDED");
            cancelPlayProgressTimer();
            onCompletion();
            return;
        }
        o0.b(TAG, "onPlaybackStateChanged : READY");
        this.mIsBuffering = false;
        hideLoading();
        postOnBufferinEndOnMainThread();
        onPrepared();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPositionDiscontinuity(int i11) {
    }

    public void onPrepared() {
        try {
            o0.c(TAG, "onPrepared:" + this.mHasPrepare);
            this.mHasPrepare = true;
            boolean z10 = this.mIsFrontDesk;
            if (!z10) {
                o0.b(TAG, "At background, Do not process");
                if (this.exoPlayer != null) {
                    pause();
                    return;
                }
                return;
            }
            if (z10) {
                hideLoading();
                SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
                if (simpleExoPlayer != null) {
                    this.mIsPlaying = true;
                    if (!this.isStart) {
                        postOnPlayStartOnMainThread(simpleExoPlayer.getDuration() / 1000);
                        o0.c(TAG, "onPlayStarted()，getCurrentPosition:" + this.exoPlayer.getCurrentPosition());
                        this.isStart = true;
                    }
                }
                postOnBufferinEndOnMainThread();
                startPlayProgressTimer();
                o0.c(TAG, "onPrepare mCurrentPosition:" + this.mCurrentPosition + " onPrepare mHasPrepare：" + this.mHasPrepare);
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
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

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i11) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    public void openSound() {
        try {
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer == null) {
                return;
            }
            simpleExoPlayer.setVolume(1.0f);
            this.mIsSilent = false;
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void pause() {
        try {
            if (this.mHasPrepare && this.exoPlayer != null && exoPlayerIsPlaying()) {
                o0.c(TAG, "pause isPalying:" + exoPlayerIsPlaying() + " mIsPlaying:" + this.mIsPlaying);
                hideLoading();
                this.exoPlayer.setPlayWhenReady(false);
                this.mIsPlaying = false;
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void play() {
        this.exoPlayer.setPlayWhenReady(true);
    }

    public void play(String str, int i11) {
        try {
            synchronized (this.mLock) {
                try {
                    o0.b(TAG, "Start Play currentionPosition:" + this.mCurrentPosition);
                    if (i11 > 0) {
                        this.mCurrentPosition = i11;
                    }
                    if (TextUtils.isEmpty(str)) {
                        postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_URL_ILLEGAL);
                        return;
                    }
                    this.mPlayUrl = str;
                    this.mHasPrepare = false;
                    this.mIsFrontDesk = true;
                    showLoading();
                    setDataSource();
                    o0.c(TAG, "mPlayUrl:" + this.mPlayUrl);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
            releasePlayer();
            hideLoading();
            postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_CANNOT_PALY);
        }
    }

    public void play(String str, SurfaceHolder surfaceHolder) {
        try {
            synchronized (this.mLock) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_URL_ILLEGAL);
                        return;
                    }
                    this.mPlayUrl = str;
                    this.mHasPrepare = false;
                    this.mIsFrontDesk = true;
                    this.mSurfaceHolder = surfaceHolder;
                    showLoading();
                    setDataSource();
                    o0.c(TAG, "mPlayUrl:" + this.mPlayUrl);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
            releasePlayer();
            hideLoading();
            postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_CANNOT_PALY);
        }
    }

    public void prepare() {
        SimpleExoPlayer simpleExoPlayer;
        try {
            if (this.mHasPrepare || (simpleExoPlayer = this.exoPlayer) == null) {
                return;
            }
            simpleExoPlayer.prepare(this.mediaSource);
            this.mHasPrepare = true;
            this.mIsPlaying = false;
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void releasePlayer() {
        try {
            o0.c(TAG, "release");
            cancelPlayProgressTimer();
            cancelBufferTimeoutTimer();
            if (this.exoPlayer != null) {
                stop();
                this.exoPlayer.removeListener(this);
                this.exoPlayer.release();
                this.mInnerVFPLisener = null;
                this.mOutterVFListener = null;
            }
            hideLoading();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void seekTo(int i11) {
        long j11 = i11;
        try {
            this.mCurrentPosition = j11;
            if (!this.mHasPrepare) {
                o0.a(TAG, "seekTo return mHasPrepare false");
                return;
            }
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.seekTo(j11);
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void seekToEndFrame() {
        SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.seekTo(simpleExoPlayer.getCurrentPosition() - 500);
        }
    }

    public void setDataSource() {
        try {
            o0.c(TAG, "setDataSource");
            if (this.exoPlayer != null) {
                SurfaceHolder surfaceHolder = this.mSurfaceHolder;
                if (surfaceHolder != null) {
                    setDisplay(surfaceHolder);
                }
                this.mHasPrepare = false;
                this.exoPlayer.prepare(this.mediaSource);
                this.exoPlayer.setPlayWhenReady(true);
                startBufferIngTimer(PlayerErrorConstant.PREPARE_TIMEOUT);
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
            hideLoading();
            postOnPlayErrorOnMainThread(PlayerErrorConstant.ILLEGAL_VIDEO_ADDRESS);
            postOnPlaySetDataSourceError2MainThread(PlayerErrorConstant.ILLEGAL_VIDEO_ADDRESS);
        }
    }

    public void setDisplay(SurfaceHolder surfaceHolder) {
        try {
            this.exoPlayer.getVideoComponent().setVideoSurfaceHolder(surfaceHolder);
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            postOnPlayErrorOnMainThread(th2.toString());
        }
    }

    public void setFullScreenLoadingView(View view) {
        if (view != null) {
            try {
                this.mFullScreenLoadingView = view;
            } catch (Exception e11) {
                o0.b(TAG, e11.getMessage());
            }
        }
    }

    public void setIsComplete(boolean z10) {
        this.mIsComplete = z10;
    }

    public void setIsFrontDesk(boolean z10) {
        try {
            this.mIsFrontDesk = z10;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("isFrontDesk: ");
            sb2.append(z10 ? "frontStage" : "backStage");
            o0.b(TAG, sb2.toString());
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void setPlaybackParams(float f11) {
        try {
            if (exoPlayerIsPlaying()) {
                this.exoPlayer.setPlaybackParameters(new PlaybackParameters(f11));
            } else {
                this.exoPlayer.setPlaybackParameters(new PlaybackParameters(f11));
                this.exoPlayer.stop();
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void setSelfVideoFeedsPlayerListener(VideoPlayerStatusListener videoPlayerStatusListener) {
        this.mInnerVFPLisener = videoPlayerStatusListener;
    }

    public void setVideoFeedsPlayerListener(VideoPlayerStatusListener videoPlayerStatusListener) {
        this.mOutterVFListener = videoPlayerStatusListener;
    }

    public void setVolume(float f11, float f12) {
        try {
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.setVolume(f12);
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void showLoading() {
        try {
            Handler handler = this.mHandler;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoFeedsPlayer.4
                @Override // java.lang.Runnable
                public void run() {
                    if (VideoFeedsPlayer.this.mFullScreenLoadingView != null) {
                        VideoFeedsPlayer.this.mFullScreenLoadingView.setVisibility(0);
                    }
                }
            });
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void start(int i11) {
        try {
            if (this.mHasPrepare) {
                if (this.exoPlayer != null && !exoPlayerIsPlaying()) {
                    if (i11 > 0) {
                        this.exoPlayer.seekTo(i11);
                        play();
                    } else {
                        play();
                        this.mIsPlaying = true;
                        o0.c(TAG, "=========start 指定进度");
                    }
                }
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void start(boolean z10) {
        try {
            if (!this.mHasPrepare) {
                o0.c(TAG, "!mHasPrepare");
                return;
            }
            if (this.exoPlayer == null || exoPlayerIsPlaying()) {
                return;
            }
            showLoading();
            play();
            this.mIsPlaying = true;
            if (z10) {
                startPlayProgressTimer();
            }
            o0.c(TAG, "start");
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void stop() {
        try {
            if (this.mHasPrepare && this.exoPlayer != null && exoPlayerIsPlaying()) {
                hideLoading();
                this.exoPlayer.stop();
                this.mHasPrepare = false;
                this.mIsPlaying = false;
                this.mIsComplete = true;
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }
}
