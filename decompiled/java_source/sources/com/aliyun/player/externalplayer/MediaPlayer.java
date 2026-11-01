package com.aliyun.player.externalplayer;

import android.content.Context;
import android.media.PlaybackParams;
import android.media.TimedText;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.aliyun.player.ApasaraExternalPlayer;
import com.aliyun.player.IPlayer;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.Options;
import com.aliyun.player.nativeclass.TrackInfo;
import com.cicada.player.utils.Logger;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MediaPlayer extends ApasaraExternalPlayer {
    private static final String PLAYER_NAME = "MediaPlayer";
    private static final String TAG = "MediaPlayer";
    private final int TIMER_WHAT_HALF_SECOND;
    private boolean isMute;
    private float lastVolume;
    private boolean mAutoPlay;
    private long mBufferPosition;
    private Context mContext;
    private Map<String, String> mCustomHeaders;
    private ApasaraExternalPlayer.PlayerStatus mLastPlayerStatus;
    private boolean mLoop;
    private ApasaraExternalPlayer.OnAutoPlayStartListener mOutOnAutoPlayStartListener;
    private ApasaraExternalPlayer.OnBufferPositionUpdateListener mOutOnBufferPositionUpdateListener;
    private ApasaraExternalPlayer.OnCaptureScreenListener mOutOnCaptureScreenListener;
    private ApasaraExternalPlayer.OnCompletionListener mOutOnCompletionListener;
    private ApasaraExternalPlayer.OnDRMCallback mOutOnDRMCallback;
    private ApasaraExternalPlayer.OnErrorListener mOutOnErrorListener;
    private ApasaraExternalPlayer.OnEventListener mOutOnEventListener;
    private ApasaraExternalPlayer.OnFirstFrameRenderListener mOutOnFirstFrameRenderListener;
    private ApasaraExternalPlayer.OnLoadStatusListener mOutOnLoadStatusListener;
    private ApasaraExternalPlayer.OnLoopingStartListener mOutOnLoopingStartListener;
    private ApasaraExternalPlayer.OnPositionUpdateListener mOutOnPositionUpdateListener;
    private ApasaraExternalPlayer.OnPreparedListener mOutOnPreparedListener;
    private ApasaraExternalPlayer.OnSeekStatusListener mOutOnSeekStatusListener;
    private ApasaraExternalPlayer.OnStatusChangedListener mOutOnStatusChangedListener;
    private ApasaraExternalPlayer.OnStreamInfoGetListener mOutOnStreamInfoGetListener;
    private ApasaraExternalPlayer.OnStreamSwitchSucListener mOutOnStreamSwitchSucListener;
    private ApasaraExternalPlayer.OnSubtitleListener mOutOnSubtitleListener;
    private ApasaraExternalPlayer.OnVideoRenderedListener mOutOnVideoRenderedListener;
    private ApasaraExternalPlayer.OnVideoSizeChangedListener mOutOnVideoSizeChangedListener;
    private String mRefer;
    private IPlayer.ScaleMode mScaleMode;
    private boolean mSeekAccurate;
    private long mSeekPos;
    private float mSpeed;
    private android.media.MediaPlayer mSystemMediaPlayer;
    private android.media.MediaPlayer.TrackInfo[] mTrackInfos;
    private String mUrl;
    private String mUserAgent;
    private Handler timer;

    public MediaPlayer() {
        this.TIMER_WHAT_HALF_SECOND = 1000;
        this.mContext = null;
        this.mSystemMediaPlayer = null;
        this.mTrackInfos = null;
        this.timer = null;
        this.mLastPlayerStatus = ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE;
        this.mUrl = null;
        this.mBufferPosition = 0L;
        this.lastVolume = 1.0f;
        this.mScaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
        this.isMute = false;
        this.mLoop = false;
        this.mRefer = null;
        this.mUserAgent = null;
        this.mSpeed = 1.0f;
        this.mAutoPlay = false;
        this.mOutOnPreparedListener = null;
        this.mOutOnLoopingStartListener = null;
        this.mOutOnCompletionListener = null;
        this.mOutOnFirstFrameRenderListener = null;
        this.mOutOnLoadStatusListener = null;
        this.mOutOnAutoPlayStartListener = null;
        this.mOutOnSeekStatusListener = null;
        this.mOutOnPositionUpdateListener = null;
        this.mOutOnBufferPositionUpdateListener = null;
        this.mOutOnVideoSizeChangedListener = null;
        this.mOutOnStatusChangedListener = null;
        this.mOutOnVideoRenderedListener = null;
        this.mOutOnErrorListener = null;
        this.mOutOnEventListener = null;
        this.mOutOnStreamInfoGetListener = null;
        this.mOutOnStreamSwitchSucListener = null;
        this.mOutOnCaptureScreenListener = null;
        this.mOutOnSubtitleListener = null;
        this.mOutOnDRMCallback = null;
        this.mSeekPos = -1L;
        this.mSeekAccurate = false;
        this.mCustomHeaders = new HashMap();
    }

    private MediaPlayer(Context context, Options options) {
        this.TIMER_WHAT_HALF_SECOND = 1000;
        this.mContext = null;
        this.mSystemMediaPlayer = null;
        this.mTrackInfos = null;
        this.timer = null;
        this.mLastPlayerStatus = ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE;
        this.mUrl = null;
        this.mBufferPosition = 0L;
        this.lastVolume = 1.0f;
        this.mScaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
        this.isMute = false;
        this.mLoop = false;
        this.mRefer = null;
        this.mUserAgent = null;
        this.mSpeed = 1.0f;
        this.mAutoPlay = false;
        this.mOutOnPreparedListener = null;
        this.mOutOnLoopingStartListener = null;
        this.mOutOnCompletionListener = null;
        this.mOutOnFirstFrameRenderListener = null;
        this.mOutOnLoadStatusListener = null;
        this.mOutOnAutoPlayStartListener = null;
        this.mOutOnSeekStatusListener = null;
        this.mOutOnPositionUpdateListener = null;
        this.mOutOnBufferPositionUpdateListener = null;
        this.mOutOnVideoSizeChangedListener = null;
        this.mOutOnStatusChangedListener = null;
        this.mOutOnVideoRenderedListener = null;
        this.mOutOnErrorListener = null;
        this.mOutOnEventListener = null;
        this.mOutOnStreamInfoGetListener = null;
        this.mOutOnStreamSwitchSucListener = null;
        this.mOutOnCaptureScreenListener = null;
        this.mOutOnSubtitleListener = null;
        this.mOutOnDRMCallback = null;
        this.mSeekPos = -1L;
        this.mSeekAccurate = false;
        this.mCustomHeaders = new HashMap();
        this.mContext = context;
        Looper looperMyLooper = Looper.myLooper();
        this.timer = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper) { // from class: com.aliyun.player.externalplayer.MediaPlayer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1000) {
                    if (MediaPlayer.this.mLastPlayerStatus.getValue() >= ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED.getValue() && MediaPlayer.this.mLastPlayerStatus.getValue() <= ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED.getValue()) {
                        if (MediaPlayer.this.mOutOnBufferPositionUpdateListener != null) {
                            MediaPlayer.this.mOutOnBufferPositionUpdateListener.onBufferPositionUpdate(MediaPlayer.this.getBufferPosition());
                        }
                        if (MediaPlayer.this.mOutOnPositionUpdateListener != null) {
                            MediaPlayer.this.mOutOnPositionUpdateListener.onPositionUpdate(MediaPlayer.this.getPlayingPosition());
                        }
                    }
                    MediaPlayer.this.sendHalfSecondTimer();
                }
                super.handleMessage(message);
            }
        };
        android.media.MediaPlayer mediaPlayer = new android.media.MediaPlayer();
        this.mSystemMediaPlayer = mediaPlayer;
        mediaPlayer.setOnBufferingUpdateListener(new android.media.MediaPlayer.OnBufferingUpdateListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.2
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(android.media.MediaPlayer mediaPlayer2, int i11) {
                MediaPlayer mediaPlayer3 = MediaPlayer.this;
                mediaPlayer3.mBufferPosition = (long) ((((long) i11) * mediaPlayer3.getDuration()) / 100.0f);
            }
        });
        this.mSystemMediaPlayer.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(android.media.MediaPlayer mediaPlayer2) {
                if (MediaPlayer.this.mOutOnCompletionListener != null) {
                    MediaPlayer.this.mOutOnCompletionListener.onCompletion();
                }
                MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION, true);
            }
        });
        this.mSystemMediaPlayer.setOnErrorListener(new android.media.MediaPlayer.OnErrorListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(android.media.MediaPlayer mediaPlayer2, int i11, int i12) {
                if (MediaPlayer.this.mOutOnErrorListener != null) {
                    MediaPlayer.this.mOutOnErrorListener.onError(ErrorCode.ERROR_UNKNOWN.getValue(), "what=" + i11 + ", extra=" + i12);
                }
                MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR, true);
                return true;
            }
        });
        this.mSystemMediaPlayer.setOnInfoListener(new android.media.MediaPlayer.OnInfoListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.5
            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(android.media.MediaPlayer mediaPlayer2, int i11, int i12) {
                if (i11 == 702) {
                    if (MediaPlayer.this.mOutOnLoadStatusListener == null) {
                        return false;
                    }
                    MediaPlayer.this.mOutOnLoadStatusListener.onLoadingEnd();
                    return false;
                }
                if (i11 == 701) {
                    if (MediaPlayer.this.mOutOnLoadStatusListener == null) {
                        return false;
                    }
                    MediaPlayer.this.mOutOnLoadStatusListener.onLoadingStart();
                    return false;
                }
                if (i11 != 3 || MediaPlayer.this.mOutOnFirstFrameRenderListener == null) {
                    return false;
                }
                MediaPlayer.this.mOutOnFirstFrameRenderListener.onFirstFrameRender();
                return false;
            }
        });
        this.mSystemMediaPlayer.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.6
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(android.media.MediaPlayer mediaPlayer2) {
                MediaPlayer mediaPlayer3 = MediaPlayer.this;
                mediaPlayer3.mTrackInfos = mediaPlayer3.mSystemMediaPlayer.getTrackInfo();
                MediaPlayer.this.notifyStreamGet();
                if (MediaPlayer.this.mAutoPlay) {
                    if (MediaPlayer.this.mOutOnAutoPlayStartListener != null) {
                        MediaPlayer.this.mOutOnAutoPlayStartListener.onAutoPlayStart();
                    }
                    MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED, false);
                    MediaPlayer.this.start();
                } else {
                    MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED, true);
                    if (MediaPlayer.this.mOutOnPreparedListener != null) {
                        MediaPlayer.this.mOutOnPreparedListener.onPrepared();
                    }
                }
                if (MediaPlayer.this.mSeekPos >= 0) {
                    MediaPlayer mediaPlayer4 = MediaPlayer.this;
                    mediaPlayer4.seekTo(mediaPlayer4.mSeekPos, MediaPlayer.this.mSeekAccurate);
                    MediaPlayer.this.mSeekPos = -1L;
                }
            }
        });
        this.mSystemMediaPlayer.setOnSeekCompleteListener(new android.media.MediaPlayer.OnSeekCompleteListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.7
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public void onSeekComplete(android.media.MediaPlayer mediaPlayer2) {
                if (MediaPlayer.this.mOutOnSeekStatusListener != null) {
                    MediaPlayer.this.mOutOnSeekStatusListener.onSeekEnd(false);
                }
            }
        });
        this.mSystemMediaPlayer.setOnTimedTextListener(new android.media.MediaPlayer.OnTimedTextListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.8
            @Override // android.media.MediaPlayer.OnTimedTextListener
            public void onTimedText(android.media.MediaPlayer mediaPlayer2, TimedText timedText) {
            }
        });
        this.mSystemMediaPlayer.setOnVideoSizeChangedListener(new android.media.MediaPlayer.OnVideoSizeChangedListener() { // from class: com.aliyun.player.externalplayer.MediaPlayer.9
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(android.media.MediaPlayer mediaPlayer2, int i11, int i12) {
                if (MediaPlayer.this.mOutOnVideoSizeChangedListener != null) {
                    MediaPlayer.this.mOutOnVideoSizeChangedListener.onVideoSizeChanged(i11, i12);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changePlayerStatus(ApasaraExternalPlayer.PlayerStatus playerStatus, boolean z10) {
        ApasaraExternalPlayer.OnStatusChangedListener onStatusChangedListener;
        if (this.mLastPlayerStatus != playerStatus) {
            this.mLastPlayerStatus = playerStatus;
            if (z10 && (onStatusChangedListener = this.mOutOnStatusChangedListener) != null) {
                onStatusChangedListener.onStatusChanged(playerStatus.getValue(), playerStatus.getValue());
            }
        }
        sendHalfSecondTimer();
    }

    private TrackInfo convert(android.media.MediaPlayer.TrackInfo trackInfo, int i11) {
        TrackInfo trackInfo2 = new TrackInfo();
        trackInfo2.index = i11;
        int trackType = trackInfo.getTrackType();
        if (trackType == 2) {
            trackInfo2.mType = TrackInfo.Type.TYPE_AUDIO;
        } else if (trackType == 1) {
            trackInfo2.mType = TrackInfo.Type.TYPE_VIDEO;
        } else if (trackType == 4) {
            trackInfo2.mType = TrackInfo.Type.TYPE_SUBTITLE;
        } else {
            trackInfo2.mType = TrackInfo.Type.TYPE_VOD;
        }
        trackInfo2.description = trackInfo.getLanguage();
        return trackInfo2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStreamGet() {
        if (this.mOutOnStreamInfoGetListener == null || this.mTrackInfos == null) {
            return;
        }
        MediaInfo mediaInfo = new MediaInfo();
        TrackInfo[] trackInfoArr = new TrackInfo[this.mTrackInfos.length];
        int i11 = 0;
        while (true) {
            android.media.MediaPlayer.TrackInfo[] trackInfoArr2 = this.mTrackInfos;
            if (i11 >= trackInfoArr2.length) {
                mediaInfo.setTrackInfos(trackInfoArr);
                mediaInfo.setDuration((int) getDuration());
                this.mOutOnStreamInfoGetListener.OnStreamInfoGet(mediaInfo);
                return;
            }
            trackInfoArr[i11] = convert(trackInfoArr2[i11], i11);
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendHalfSecondTimer() {
        this.timer.removeMessages(1000);
        if (this.mLastPlayerStatus.getValue() < ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED.getValue() || this.mLastPlayerStatus.getValue() > ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED.getValue()) {
            return;
        }
        this.timer.sendEmptyMessageDelayed(1000, 500L);
    }

    private void updateDataSource() {
        if (this.mSystemMediaPlayer == null) {
            return;
        }
        HashMap map = new HashMap();
        String str = this.mRefer;
        if (str != null) {
            map.put("Referer", str);
        }
        String str2 = this.mUserAgent;
        if (str2 != null) {
            map.put("User-Agent", str2);
        }
        map.putAll(this.mCustomHeaders);
        try {
            this.mSystemMediaPlayer.setDataSource(this.mContext, Uri.parse(this.mUrl), map);
        } catch (IOException e11) {
            e11.printStackTrace();
            ApasaraExternalPlayer.OnErrorListener onErrorListener = this.mOutOnErrorListener;
            if (onErrorListener != null) {
                onErrorListener.onError(ErrorCode.ERROR_GENERAL_EIO.getValue(), "set dataSource error :" + e11.getMessage());
            }
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void addCustomHttpHeader(String str) {
        Logger.v("MediaPlayer", "addCustomHttpHeader() " + str);
        if (!TextUtils.isEmpty(str) || str.contains(":")) {
            String[] strArrSplit = str.split(":");
            this.mCustomHeaders.put(strArrSplit[0], strArrSplit[1]);
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void addExtSubtitle(String str) {
        Logger.v("MediaPlayer", "addExtSubtitle() " + str);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void captureScreen() {
        Logger.v("MediaPlayer", "captureScreen() ");
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public ApasaraExternalPlayer create(Context context, Options options) {
        return new MediaPlayer(context, options);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void enterBackGround(boolean z10) {
        Logger.v("MediaPlayer", "enterBackGround() " + z10);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public long getBufferPosition() {
        Logger.v("MediaPlayer", "getBufferPosition() ");
        return this.mBufferPosition;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public int getCurrentStreamIndex(ApasaraExternalPlayer.StreamType streamType) {
        android.media.MediaPlayer mediaPlayer;
        int i11;
        Logger.v("MediaPlayer", "getCurrentStreamIndex() " + streamType);
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return -1;
        }
        if (streamType == ApasaraExternalPlayer.StreamType.ST_TYPE_AUDIO) {
            i11 = 2;
        } else if (streamType == ApasaraExternalPlayer.StreamType.ST_TYPE_VIDEO) {
            i11 = 1;
        } else {
            i11 = streamType == ApasaraExternalPlayer.StreamType.ST_TYPE_SUB ? 4 : 0;
        }
        return mediaPlayer.getSelectedTrack(i11);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public TrackInfo getCurrentStreamInfo(ApasaraExternalPlayer.StreamType streamType) {
        android.media.MediaPlayer.TrackInfo[] trackInfoArr;
        Logger.v("MediaPlayer", "getCurrentStreamInfo() " + streamType);
        int currentStreamIndex = getCurrentStreamIndex(streamType);
        if (currentStreamIndex < 0 || (trackInfoArr = this.mTrackInfos) == null || currentStreamIndex >= trackInfoArr.length) {
            return null;
        }
        return convert(trackInfoArr[currentStreamIndex], currentStreamIndex);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public ApasaraExternalPlayer.DecoderType getDecoderType() {
        Logger.v("MediaPlayer", "getDecoderType() ");
        return ApasaraExternalPlayer.DecoderType.DT_HARDWARE;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public long getDuration() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getDuration() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            return Math.max(playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR ? mediaPlayer.getDuration() : 0, 0);
        }
        return 0L;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public long getMasterClockPts() {
        Logger.v("MediaPlayer", "getMasterClockPts() ");
        return 0L;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public IPlayer.MirrorMode getMirrorMode() {
        Logger.v("MediaPlayer", "getMirrorMode() ");
        return IPlayer.MirrorMode.MIRROR_MODE_NONE;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public String getName() {
        return "MediaPlayer";
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public String getOption(String str) {
        Logger.v("MediaPlayer", "getOption() " + str);
        return null;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public ApasaraExternalPlayer.PlayerStatus getPlayerStatus() {
        Logger.v("MediaPlayer", "getPlayerStatus() ");
        return this.mLastPlayerStatus;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public long getPlayingPosition() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getPlayingPosition() ");
        long j11 = this.mSeekPos;
        if (j11 >= 0) {
            return j11;
        }
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_INITIALZED) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            return mediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public long getPropertyInt(ApasaraExternalPlayer.PropertyKey propertyKey) {
        Logger.v("MediaPlayer", "getPropertyInt() " + propertyKey);
        return 0L;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public long getPropertyLong(ApasaraExternalPlayer.PropertyKey propertyKey) {
        Logger.v("MediaPlayer", "getPropertyLong() " + propertyKey);
        return 0L;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public String getPropertyString(ApasaraExternalPlayer.PropertyKey propertyKey) {
        Logger.v("MediaPlayer", "getPropertyString() " + propertyKey);
        return null;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public IPlayer.RotateMode getRotateMode() {
        Logger.v("MediaPlayer", "getRotateMode() ");
        return IPlayer.RotateMode.ROTATE_0;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public IPlayer.ScaleMode getScaleMode() {
        Logger.v("MediaPlayer", "getScaleMode() ");
        return IPlayer.ScaleMode.SCALE_TO_FILL;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public float getSpeed() {
        Logger.v("MediaPlayer", "getSpeed() ");
        return this.mSpeed;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public float getVideoDecodeFps() {
        Logger.v("MediaPlayer", "getVideoDecodeFps() ");
        return 0.0f;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public int getVideoHeight() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getVideoHeight() ");
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return 0;
        }
        return mediaPlayer.getVideoHeight();
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public float getVideoRenderFps() {
        Logger.v("MediaPlayer", "getVideoRenderFps() ");
        return 0.0f;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public int getVideoRotation() {
        Logger.v("MediaPlayer", "getVideoRotation() ");
        return 0;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public int getVideoWidth() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getVideoWidth() ");
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return 0;
        }
        return mediaPlayer.getVideoWidth();
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public float getVolume() {
        Logger.v("MediaPlayer", "getVolume() ");
        return this.lastVolume;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public int invokeComponent(String str) {
        Logger.v("MediaPlayer", "invokeComponent() " + str);
        return 0;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public boolean isAutoPlay() {
        Logger.v("MediaPlayer", "isAutoPlay() ");
        return this.mAutoPlay;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public boolean isLooping() {
        Logger.v("MediaPlayer", "isLooping() ");
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isLooping();
        }
        return false;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public boolean isMute() {
        Logger.v("MediaPlayer", "isMute() ");
        return this.isMute;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public boolean isSupport(Options options) {
        return options != null && "MediaPlayer".equals(options.get("name"));
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void mute(boolean z10) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "mute() " + z10);
        this.isMute = z10;
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        if (z10) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            float f11 = this.lastVolume;
            mediaPlayer.setVolume(f11, f11);
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void pause() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "pause() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            mediaPlayer.pause();
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED, true);
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void prepare() {
        Logger.v("MediaPlayer", "prepare() ");
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            updateDataSource();
            setScaleMode(this.mScaleMode);
            setSpeed(this.mSpeed);
            setLooping(this.mLoop);
            mute(this.isMute);
            setVolume(this.lastVolume);
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARING, true);
            this.mSystemMediaPlayer.prepareAsync();
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void reLoad() {
        Logger.v("MediaPlayer", "reLoad() ");
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void release() {
        Logger.v("MediaPlayer", "release() ");
        changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE, false);
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        this.mSystemMediaPlayer = null;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void removeAllCustomHttpHeader() {
        Logger.v("MediaPlayer", "removeAllCustomHttpHeader() ");
        this.mCustomHeaders.clear();
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void seekTo(long j11, boolean z10) {
        Logger.v("MediaPlayer", "seekTo() " + j11 + " , accurate = " + z10);
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if (playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) {
            this.mSeekPos = j11;
            this.mSeekAccurate = z10;
            return;
        }
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            if (Build.VERSION.SDK_INT < 26 || !z10) {
                mediaPlayer.seekTo((int) j11);
            } else {
                mediaPlayer.seekTo(j11, 3);
            }
            ApasaraExternalPlayer.OnSeekStatusListener onSeekStatusListener = this.mOutOnSeekStatusListener;
            if (onSeekStatusListener != null) {
                onSeekStatusListener.onSeekStart(false);
            }
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public int selectExtSubtitle(int i11, boolean z10) {
        Logger.v("MediaPlayer", "selectExtSubtitle() " + i11 + " , bSelect = " + z10);
        return 0;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setAutoPlay(boolean z10) {
        Logger.v("MediaPlayer", "setAutoPlay() " + z10);
        this.mAutoPlay = z10;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setDataSource(String str) {
        Logger.v("MediaPlayer", "setDataSource() " + str);
        this.mUrl = str;
        if (this.mSystemMediaPlayer != null) {
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_INITIALZED, true);
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setDecoderType(ApasaraExternalPlayer.DecoderType decoderType) {
        Logger.v("MediaPlayer", "setDecoderType() " + decoderType);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setDrmCallback(ApasaraExternalPlayer.OnDRMCallback onDRMCallback) {
        this.mOutOnDRMCallback = onDRMCallback;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setDropBufferThreshold(int i11) {
        Logger.v("MediaPlayer", "setDropBufferThreshold() " + i11);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setLooping(boolean z10) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "setLooping() " + z10);
        this.mLoop = z10;
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        mediaPlayer.setLooping(z10);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setMirrorMode(IPlayer.MirrorMode mirrorMode) {
        Logger.v("MediaPlayer", "setMirrorMode() " + mirrorMode);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnAutoPlayStartListener(ApasaraExternalPlayer.OnAutoPlayStartListener onAutoPlayStartListener) {
        this.mOutOnAutoPlayStartListener = onAutoPlayStartListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnBufferPositionUpdateListener(ApasaraExternalPlayer.OnBufferPositionUpdateListener onBufferPositionUpdateListener) {
        this.mOutOnBufferPositionUpdateListener = onBufferPositionUpdateListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnCaptureScreenListener(ApasaraExternalPlayer.OnCaptureScreenListener onCaptureScreenListener) {
        this.mOutOnCaptureScreenListener = onCaptureScreenListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnCompletionListener(ApasaraExternalPlayer.OnCompletionListener onCompletionListener) {
        this.mOutOnCompletionListener = onCompletionListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnErrorListener(ApasaraExternalPlayer.OnErrorListener onErrorListener) {
        this.mOutOnErrorListener = onErrorListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnEventListener(ApasaraExternalPlayer.OnEventListener onEventListener) {
        this.mOutOnEventListener = onEventListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnFirstFrameRenderListener(ApasaraExternalPlayer.OnFirstFrameRenderListener onFirstFrameRenderListener) {
        this.mOutOnFirstFrameRenderListener = onFirstFrameRenderListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnLoadStatusListener(ApasaraExternalPlayer.OnLoadStatusListener onLoadStatusListener) {
        this.mOutOnLoadStatusListener = onLoadStatusListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnLoopingStartListener(ApasaraExternalPlayer.OnLoopingStartListener onLoopingStartListener) {
        this.mOutOnLoopingStartListener = onLoopingStartListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnPositionUpdateListener(ApasaraExternalPlayer.OnPositionUpdateListener onPositionUpdateListener) {
        this.mOutOnPositionUpdateListener = onPositionUpdateListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnPreparedListener(ApasaraExternalPlayer.OnPreparedListener onPreparedListener) {
        this.mOutOnPreparedListener = onPreparedListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnSeekStatusListener(ApasaraExternalPlayer.OnSeekStatusListener onSeekStatusListener) {
        this.mOutOnSeekStatusListener = onSeekStatusListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnStatusChangedListener(ApasaraExternalPlayer.OnStatusChangedListener onStatusChangedListener) {
        this.mOutOnStatusChangedListener = onStatusChangedListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnStreamInfoGetListener(ApasaraExternalPlayer.OnStreamInfoGetListener onStreamInfoGetListener) {
        this.mOutOnStreamInfoGetListener = onStreamInfoGetListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnStreamSwitchSucListener(ApasaraExternalPlayer.OnStreamSwitchSucListener onStreamSwitchSucListener) {
        this.mOutOnStreamSwitchSucListener = onStreamSwitchSucListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnSubtitleListener(ApasaraExternalPlayer.OnSubtitleListener onSubtitleListener) {
        this.mOutOnSubtitleListener = onSubtitleListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnVideoRenderedListener(ApasaraExternalPlayer.OnVideoRenderedListener onVideoRenderedListener) {
        this.mOutOnVideoRenderedListener = onVideoRenderedListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setOnVideoSizeChangedListener(ApasaraExternalPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOutOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public int setOption(String str, String str2) {
        Logger.v("MediaPlayer", "setOption() " + str + " : " + str2);
        return 0;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setRefer(String str) {
        Logger.v("MediaPlayer", "setRefer() " + str);
        this.mRefer = str;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setRotateMode(IPlayer.RotateMode rotateMode) {
        Logger.v("MediaPlayer", "setRotateMode() " + rotateMode);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setScaleMode(IPlayer.ScaleMode scaleMode) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "setScaleMode() " + scaleMode);
        this.mScaleMode = scaleMode;
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if (playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        if (scaleMode == IPlayer.ScaleMode.SCALE_ASPECT_FILL) {
            mediaPlayer.setVideoScalingMode(2);
        } else {
            mediaPlayer.setVideoScalingMode(1);
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setSpeed(float f11) {
        Logger.v("MediaPlayer", "setSpeed() " + f11);
        this.mSpeed = f11;
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if (playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED || this.mSystemMediaPlayer == null) {
            return;
        }
        PlaybackParams playbackParams = new PlaybackParams();
        playbackParams.setSpeed(f11);
        this.mSystemMediaPlayer.setPlaybackParams(playbackParams);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setSurface(Surface surface) {
        Logger.v("MediaPlayer", "setSurface() " + surface);
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(surface);
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setTimeout(int i11) {
        Logger.v("MediaPlayer", "setTimeout() " + i11);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setUserAgent(String str) {
        Logger.v("MediaPlayer", "setUserAgent() " + str);
        this.mUserAgent = str;
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setVideoBackgroundColor(long j11) {
        Logger.v("MediaPlayer", "setVideoBackgroundColor() " + j11);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void setVolume(float f11) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "setVolume() " + f11);
        this.lastVolume = f11;
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || this.isMute || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        mediaPlayer.setVolume(f11, f11);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void start() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "start() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            mediaPlayer.start();
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING, true);
        }
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public void stop() {
        android.media.MediaPlayer mediaPlayer;
        ApasaraExternalPlayer.PlayerStatus playerStatus;
        Logger.v("MediaPlayer", "stop() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus2 = this.mLastPlayerStatus;
        if ((playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) || (mediaPlayer = this.mSystemMediaPlayer) == null || playerStatus2 == (playerStatus = ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED)) {
            return;
        }
        mediaPlayer.stop();
        changePlayerStatus(playerStatus, true);
    }

    @Override // com.aliyun.player.ApasaraExternalPlayer
    public ApasaraExternalPlayer.StreamType switchStream(int i11) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "switchStream() " + i11);
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            mediaPlayer.selectTrack(i11);
            android.media.MediaPlayer.TrackInfo[] trackInfoArr = this.mTrackInfos;
            if (trackInfoArr == null) {
                return ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
            }
            int trackType = trackInfoArr[i11].getTrackType();
            if (trackType == 2) {
                return ApasaraExternalPlayer.StreamType.ST_TYPE_AUDIO;
            }
            if (trackType == 4) {
                return ApasaraExternalPlayer.StreamType.ST_TYPE_SUB;
            }
            if (trackType == 1) {
                return ApasaraExternalPlayer.StreamType.ST_TYPE_VIDEO;
            }
            return trackType == 0 ? ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN : ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
        }
        return ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
    }
}
