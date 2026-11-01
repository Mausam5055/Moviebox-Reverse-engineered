package com.aliyun.player;

import android.graphics.Bitmap;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.bean.InfoBean;
import com.aliyun.player.nativeclass.CacheConfig;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.PlayerConfig;
import com.aliyun.player.nativeclass.TrackInfo;
import com.aliyun.player.videoview.AliDisplayView;
import com.aliyun.thumbnail.ThumbnailBitmapInfo;
import com.cicada.player.utils.FrameInfo;
import com.cicada.player.utils.media.DrmCallback;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface IPlayer {
    public static final int completion = 6;
    public static final int error = 7;
    public static final int idle = 0;
    public static final int initalized = 1;
    public static final int paused = 4;
    public static final int prepared = 2;
    public static final int started = 3;
    public static final int stopped = 5;
    public static final int unknow = -1;

    public interface ConvertURLCallback {
        String convertURL(String str, String str2);
    }

    public enum IPResolveType {
        IpResolveWhatEver,
        IpResolveV4,
        IpResolveV6
    }

    public enum MirrorMode {
        MIRROR_MODE_NONE(0),
        MIRROR_MODE_HORIZONTAL(1),
        MIRROR_MODE_VERTICAL(2);

        private int mValue;

        MirrorMode(int i11) {
            this.mValue = i11;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    public interface OnChooseTrackIndexListener {
        int onChooseTrackIndex(TrackInfo[] trackInfoArr);
    }

    public interface OnCompletionListener {
        void onCompletion();
    }

    public interface OnErrorListener {
        void onError(ErrorInfo errorInfo);
    }

    public interface OnInfoListener {
        void onInfo(InfoBean infoBean);
    }

    public interface OnLoadingStatusListener {
        void onLoadingBegin();

        void onLoadingEnd();

        void onLoadingProgress(int i11, float f11);
    }

    public interface OnPreRenderFrameCallback {
        boolean onPreRenderFrame(FrameInfo frameInfo);
    }

    public interface OnPreparedListener {
        void onPrepared();
    }

    public interface OnRenderFrameCallback {
        boolean onRenderFrame(FrameInfo frameInfo);
    }

    public interface OnRenderingStartListener {
        void onRenderingStart();
    }

    public interface OnReportEventListener {
        void onEventParam(Map<String, String> map);
    }

    public interface OnSeekCompleteListener {
        void onSeekComplete();
    }

    public interface OnSeiDataListener {
        void onSeiData(int i11, byte[] bArr);
    }

    public interface OnSnapShotListener {
        void onSnapShot(Bitmap bitmap, int i11, int i12);
    }

    public interface OnStateChangedListener {
        void onStateChanged(int i11);
    }

    public interface OnSubtitleDisplayListener {
        void onSubtitleExtAdded(int i11, String str);

        void onSubtitleHeader(int i11, String str);

        void onSubtitleHide(int i11, long j11);

        void onSubtitleShow(int i11, long j11, String str);
    }

    public interface OnThumbnailListener {
        void onGetFail(long j11, ErrorInfo errorInfo);

        void onGetSuccess(long j11, ThumbnailBitmapInfo thumbnailBitmapInfo);
    }

    public interface OnTrackChangedListener {
        void onChangedFail(TrackInfo trackInfo, ErrorInfo errorInfo);

        void onChangedSuccess(TrackInfo trackInfo);
    }

    public interface OnTrackReadyListener {
        void onTrackReady(MediaInfo mediaInfo);
    }

    public interface OnVideoRenderedListener {
        void onVideoRendered(long j11, long j12);
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(int i11, int i12);
    }

    public static class Option {
        private String mValue;
        public static Option RenderFPS = new Option("renderFps");
        public static Option DownloadBitrate = new Option("downloadBitrate");
        public static Option VideoBitrate = new Option("videoBitrate");
        public static Option AudioBitrate = new Option("audioBitrate");

        private Option(String str) {
            this.mValue = str;
        }

        public String getValue() {
            return this.mValue;
        }
    }

    public enum PropertyKey {
        RESPONSE_INFO(0),
        CONNECT_INFO(1);

        private int mValue;

        PropertyKey(int i11) {
            this.mValue = i11;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    public static class RenderFrameCallbackConfig {
        public boolean mVideoDataAddr = true;
        public boolean mAudioDataAddr = false;
    }

    public enum RotateMode {
        ROTATE_0(0),
        ROTATE_90(90),
        ROTATE_180(180),
        ROTATE_270(270);

        private int mValue;

        RotateMode(int i11) {
            this.mValue = i11;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    public enum ScaleMode {
        SCALE_ASPECT_FIT(0),
        SCALE_ASPECT_FILL(1),
        SCALE_TO_FILL(2);

        private int mValue;

        ScaleMode(int i11) {
            this.mValue = i11;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    public enum SeekMode {
        Accurate(1),
        Inaccurate(16);

        private int mValue;

        SeekMode(int i11) {
            this.mValue = i11;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    void addExtSubtitle(String str);

    void clearScreen();

    @Deprecated
    TrackInfo currentTrack(int i11);

    TrackInfo currentTrack(TrackInfo.Type type);

    void enableHardwareDecoder(boolean z10);

    String getCacheFilePath(String str);

    String getCacheFilePath(String str, String str2, String str3, int i11);

    PlayerConfig getConfig();

    long getDuration();

    MediaInfo getMediaInfo();

    MirrorMode getMirrorMode();

    long getNativeContextAddr();

    Object getOption(Option option);

    String getPlayerName();

    String getPropertyString(PropertyKey propertyKey);

    RotateMode getRotateMode();

    ScaleMode getScaleMode();

    float getSpeed();

    int getVideoHeight();

    int getVideoRotation();

    int getVideoWidth();

    float getVolume();

    boolean isAutoPlay();

    boolean isLoop();

    boolean isMute();

    void pause();

    void prepare();

    @Deprecated
    void redraw();

    void release();

    void reload();

    void reset();

    void seekTo(long j11);

    void seekTo(long j11, SeekMode seekMode);

    void selectExtSubtitle(int i11, boolean z10);

    void selectTrack(int i11);

    void selectTrack(int i11, boolean z10);

    void sendCustomEvent(String str);

    void setAutoPlay(boolean z10);

    void setCacheConfig(CacheConfig cacheConfig);

    void setConfig(PlayerConfig playerConfig);

    void setDefaultBandWidth(int i11);

    void setDisplay(SurfaceHolder surfaceHolder);

    void setDisplayView(AliDisplayView aliDisplayView);

    void setDrmCallback(DrmCallback drmCallback);

    void setFastStart(boolean z10);

    void setFilterConfig(FilterConfig filterConfig);

    void setFilterInvalid(String str, boolean z10);

    void setIPResolveType(IPResolveType iPResolveType);

    void setLoop(boolean z10);

    void setMaxAccurateSeekDelta(int i11);

    void setMirrorMode(MirrorMode mirrorMode);

    void setMute(boolean z10);

    void setOnChooseTrackIndexListener(OnChooseTrackIndexListener onChooseTrackIndexListener);

    void setOnCompletionListener(OnCompletionListener onCompletionListener);

    void setOnErrorListener(OnErrorListener onErrorListener);

    void setOnInfoListener(OnInfoListener onInfoListener);

    void setOnLoadingStatusListener(OnLoadingStatusListener onLoadingStatusListener);

    void setOnPreRenderFrameCallback(OnPreRenderFrameCallback onPreRenderFrameCallback);

    void setOnPreparedListener(OnPreparedListener onPreparedListener);

    void setOnRenderFrameCallback(OnRenderFrameCallback onRenderFrameCallback);

    void setOnRenderingStartListener(OnRenderingStartListener onRenderingStartListener);

    void setOnReportEventListener(OnReportEventListener onReportEventListener);

    void setOnSeekCompleteListener(OnSeekCompleteListener onSeekCompleteListener);

    void setOnSeiDataListener(OnSeiDataListener onSeiDataListener);

    void setOnSnapShotListener(OnSnapShotListener onSnapShotListener);

    void setOnStateChangedListener(OnStateChangedListener onStateChangedListener);

    void setOnSubtitleDisplayListener(OnSubtitleDisplayListener onSubtitleDisplayListener);

    void setOnTrackChangedListener(OnTrackChangedListener onTrackChangedListener);

    void setOnTrackReadyListener(OnTrackReadyListener onTrackReadyListener);

    void setOnVideoRenderedListener(OnVideoRenderedListener onVideoRenderedListener);

    void setOnVideoSizeChangedListener(OnVideoSizeChangedListener onVideoSizeChangedListener);

    void setPreferPlayerName(String str);

    void setRenderFrameCallbackConfig(RenderFrameCallbackConfig renderFrameCallbackConfig);

    void setRotateMode(RotateMode rotateMode);

    void setScaleMode(ScaleMode scaleMode);

    void setSpeed(float f11);

    void setStreamDelayTime(int i11, int i12);

    void setSurface(Surface surface);

    void setTraceId(String str);

    void setVideoBackgroundColor(int i11);

    void setVideoTag(int[] iArr);

    void setVolume(float f11);

    void snapshot();

    void start();

    void stop();

    void surfaceChanged();

    void updateFilterConfig(String str, FilterConfig.FilterOptions filterOptions);
}
