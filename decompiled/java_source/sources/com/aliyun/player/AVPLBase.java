package com.aliyun.player;

import android.content.Context;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.aliyun.player.nativeclass.CacheConfig;
import com.aliyun.player.nativeclass.JniListPlayerBase;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.PlayerConfig;
import com.aliyun.player.nativeclass.TrackInfo;
import com.aliyun.player.videoview.AliDisplayView;
import com.cicada.player.utils.media.DrmCallback;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AVPLBase implements IListPlayer, IPlayer {
    private JniListPlayerBase mListPlayer;
    private IPlayer mNativePlayer;

    AVPLBase(Context context, String str) {
        this.mListPlayer = null;
        this.mNativePlayer = null;
        IPlayer nativePlayer = getNativePlayer(context, str);
        this.mNativePlayer = nativePlayer;
        this.mListPlayer = createListPlayer(context, str, nativePlayer.getNativeContextAddr());
    }

    @Override // com.aliyun.player.IPlayer
    public void addExtSubtitle(String str) {
        this.mNativePlayer.addExtSubtitle(str);
    }

    @Override // com.aliyun.player.IListPlayer
    public void clear() {
        this.mListPlayer.clear();
    }

    @Override // com.aliyun.player.IPlayer
    public void clearScreen() {
        this.mNativePlayer.clearScreen();
    }

    protected abstract JniListPlayerBase createListPlayer(Context context, String str, long j11);

    @Override // com.aliyun.player.IPlayer
    public TrackInfo currentTrack(int i11) {
        return this.mNativePlayer.currentTrack(i11);
    }

    @Override // com.aliyun.player.IPlayer
    public TrackInfo currentTrack(TrackInfo.Type type) {
        return this.mNativePlayer.currentTrack(type);
    }

    @Override // com.aliyun.player.IPlayer
    public void enableHardwareDecoder(boolean z10) {
        this.mNativePlayer.enableHardwareDecoder(z10);
    }

    @Override // com.aliyun.player.IPlayer
    public String getCacheFilePath(String str) {
        return this.mNativePlayer.getCacheFilePath(str);
    }

    @Override // com.aliyun.player.IPlayer
    public String getCacheFilePath(String str, String str2, String str3, int i11) {
        return this.mNativePlayer.getCacheFilePath(str, str2, str3, i11);
    }

    @Override // com.aliyun.player.IPlayer
    public PlayerConfig getConfig() {
        return this.mNativePlayer.getConfig();
    }

    protected JniListPlayerBase getCorePlayer() {
        return this.mListPlayer;
    }

    @Override // com.aliyun.player.IListPlayer
    public String getCurrentUid() {
        return this.mListPlayer.getCurrentUid();
    }

    @Override // com.aliyun.player.IPlayer
    public long getDuration() {
        return this.mNativePlayer.getDuration();
    }

    @Override // com.aliyun.player.IListPlayer
    public int getMaxPreloadMemorySizeMB() {
        return this.mListPlayer.getMaxPreloadMemorySizeMB();
    }

    @Override // com.aliyun.player.IPlayer
    public MediaInfo getMediaInfo() {
        return this.mNativePlayer.getMediaInfo();
    }

    @Override // com.aliyun.player.IPlayer
    public IPlayer.MirrorMode getMirrorMode() {
        return this.mNativePlayer.getMirrorMode();
    }

    @Override // com.aliyun.player.IPlayer
    public long getNativeContextAddr() {
        return this.mNativePlayer.getNativeContextAddr();
    }

    protected IPlayer getNativePlayer() {
        return this.mNativePlayer;
    }

    protected abstract IPlayer getNativePlayer(Context context, String str);

    @Override // com.aliyun.player.IPlayer
    public Object getOption(IPlayer.Option option) {
        return this.mNativePlayer.getOption(option);
    }

    @Override // com.aliyun.player.IPlayer
    public String getPlayerName() {
        return this.mNativePlayer.getPlayerName();
    }

    @Override // com.aliyun.player.IPlayer
    public String getPropertyString(IPlayer.PropertyKey propertyKey) {
        return this.mNativePlayer.getPropertyString(propertyKey);
    }

    @Override // com.aliyun.player.IPlayer
    public IPlayer.RotateMode getRotateMode() {
        return this.mNativePlayer.getRotateMode();
    }

    @Override // com.aliyun.player.IPlayer
    public IPlayer.ScaleMode getScaleMode() {
        return this.mNativePlayer.getScaleMode();
    }

    @Override // com.aliyun.player.IPlayer
    public float getSpeed() {
        return this.mNativePlayer.getSpeed();
    }

    @Override // com.aliyun.player.IPlayer
    public int getVideoHeight() {
        return this.mNativePlayer.getVideoHeight();
    }

    @Override // com.aliyun.player.IPlayer
    public int getVideoRotation() {
        return this.mNativePlayer.getVideoRotation();
    }

    @Override // com.aliyun.player.IPlayer
    public int getVideoWidth() {
        return this.mNativePlayer.getVideoWidth();
    }

    @Override // com.aliyun.player.IPlayer
    public float getVolume() {
        return this.mNativePlayer.getVolume();
    }

    @Override // com.aliyun.player.IPlayer
    public boolean isAutoPlay() {
        return this.mNativePlayer.isAutoPlay();
    }

    @Override // com.aliyun.player.IPlayer
    public boolean isLoop() {
        return this.mNativePlayer.isLoop();
    }

    @Override // com.aliyun.player.IPlayer
    public boolean isMute() {
        return this.mNativePlayer.isMute();
    }

    @Override // com.aliyun.player.IPlayer
    public void pause() {
        this.mNativePlayer.pause();
    }

    @Override // com.aliyun.player.IPlayer
    public void prepare() {
        this.mNativePlayer.prepare();
    }

    @Override // com.aliyun.player.IPlayer
    public void redraw() {
        this.mNativePlayer.redraw();
    }

    @Override // com.aliyun.player.IPlayer
    public void release() {
        this.mListPlayer.release();
        this.mNativePlayer.release();
    }

    @Override // com.aliyun.player.IPlayer
    public void reload() {
        this.mNativePlayer.reload();
    }

    @Override // com.aliyun.player.IListPlayer
    public void removeSource(String str) {
        this.mListPlayer.removeSource(str);
    }

    @Override // com.aliyun.player.IPlayer
    public void reset() {
        this.mNativePlayer.reset();
    }

    @Override // com.aliyun.player.IPlayer
    public void seekTo(long j11) {
        this.mNativePlayer.seekTo(j11);
    }

    @Override // com.aliyun.player.IPlayer
    public void seekTo(long j11, IPlayer.SeekMode seekMode) {
        this.mNativePlayer.seekTo(j11, seekMode);
    }

    @Override // com.aliyun.player.IPlayer
    public void selectExtSubtitle(int i11, boolean z10) {
        this.mNativePlayer.selectExtSubtitle(i11, z10);
    }

    @Override // com.aliyun.player.IPlayer
    public void selectTrack(int i11) {
        this.mNativePlayer.selectTrack(i11);
    }

    @Override // com.aliyun.player.IPlayer
    public void selectTrack(int i11, boolean z10) {
        this.mNativePlayer.selectTrack(i11, z10);
    }

    @Override // com.aliyun.player.IPlayer
    public void sendCustomEvent(String str) {
        this.mNativePlayer.sendCustomEvent(str);
    }

    @Override // com.aliyun.player.IPlayer
    public void setAutoPlay(boolean z10) {
        this.mNativePlayer.setAutoPlay(z10);
    }

    @Override // com.aliyun.player.IPlayer
    public void setCacheConfig(CacheConfig cacheConfig) {
        this.mNativePlayer.setCacheConfig(cacheConfig);
    }

    @Override // com.aliyun.player.IPlayer
    public void setConfig(PlayerConfig playerConfig) {
        this.mNativePlayer.setConfig(playerConfig);
    }

    @Override // com.aliyun.player.IPlayer
    public void setDefaultBandWidth(int i11) {
        this.mNativePlayer.setDefaultBandWidth(i11);
    }

    @Override // com.aliyun.player.IPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mNativePlayer.setDisplay(surfaceHolder);
    }

    @Override // com.aliyun.player.IPlayer
    public void setDisplayView(AliDisplayView aliDisplayView) {
        this.mNativePlayer.setDisplayView(aliDisplayView);
    }

    @Override // com.aliyun.player.IPlayer
    public void setDrmCallback(DrmCallback drmCallback) {
        this.mNativePlayer.setDrmCallback(drmCallback);
    }

    @Override // com.aliyun.player.IPlayer
    public void setFastStart(boolean z10) {
        this.mNativePlayer.setFastStart(z10);
    }

    @Override // com.aliyun.player.IPlayer
    public void setFilterConfig(FilterConfig filterConfig) {
        this.mNativePlayer.setFilterConfig(filterConfig);
    }

    @Override // com.aliyun.player.IPlayer
    public void setFilterInvalid(String str, boolean z10) {
        this.mNativePlayer.setFilterInvalid(str, z10);
    }

    @Override // com.aliyun.player.IPlayer
    public void setIPResolveType(IPlayer.IPResolveType iPResolveType) {
        this.mNativePlayer.setIPResolveType(iPResolveType);
    }

    @Override // com.aliyun.player.IPlayer
    public void setLoop(boolean z10) {
        this.mNativePlayer.setLoop(z10);
    }

    @Override // com.aliyun.player.IPlayer
    public void setMaxAccurateSeekDelta(int i11) {
        this.mNativePlayer.setMaxAccurateSeekDelta(i11);
    }

    @Override // com.aliyun.player.IListPlayer
    public void setMaxPreloadMemorySizeMB(int i11) {
        this.mListPlayer.setMaxPreloadMemorySizeMB(i11);
    }

    @Override // com.aliyun.player.IPlayer
    public void setMirrorMode(IPlayer.MirrorMode mirrorMode) {
        this.mNativePlayer.setMirrorMode(mirrorMode);
    }

    @Override // com.aliyun.player.IPlayer
    public void setMute(boolean z10) {
        this.mNativePlayer.setMute(z10);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnChooseTrackIndexListener(IPlayer.OnChooseTrackIndexListener onChooseTrackIndexListener) {
        this.mNativePlayer.setOnChooseTrackIndexListener(onChooseTrackIndexListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnCompletionListener(IPlayer.OnCompletionListener onCompletionListener) {
        this.mNativePlayer.setOnCompletionListener(onCompletionListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnErrorListener(IPlayer.OnErrorListener onErrorListener) {
        this.mNativePlayer.setOnErrorListener(onErrorListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnInfoListener(IPlayer.OnInfoListener onInfoListener) {
        this.mNativePlayer.setOnInfoListener(onInfoListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnLoadingStatusListener(IPlayer.OnLoadingStatusListener onLoadingStatusListener) {
        this.mNativePlayer.setOnLoadingStatusListener(onLoadingStatusListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnPreRenderFrameCallback(IPlayer.OnPreRenderFrameCallback onPreRenderFrameCallback) {
        this.mNativePlayer.setOnPreRenderFrameCallback(onPreRenderFrameCallback);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnPreparedListener(IPlayer.OnPreparedListener onPreparedListener) {
        this.mNativePlayer.setOnPreparedListener(onPreparedListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnRenderFrameCallback(IPlayer.OnRenderFrameCallback onRenderFrameCallback) {
        this.mNativePlayer.setOnRenderFrameCallback(onRenderFrameCallback);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnRenderingStartListener(IPlayer.OnRenderingStartListener onRenderingStartListener) {
        this.mNativePlayer.setOnRenderingStartListener(onRenderingStartListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnReportEventListener(IPlayer.OnReportEventListener onReportEventListener) {
        this.mNativePlayer.setOnReportEventListener(onReportEventListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnSeekCompleteListener(IPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mNativePlayer.setOnSeekCompleteListener(onSeekCompleteListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnSeiDataListener(IPlayer.OnSeiDataListener onSeiDataListener) {
        this.mNativePlayer.setOnSeiDataListener(onSeiDataListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnSnapShotListener(IPlayer.OnSnapShotListener onSnapShotListener) {
        this.mNativePlayer.setOnSnapShotListener(onSnapShotListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnStateChangedListener(IPlayer.OnStateChangedListener onStateChangedListener) {
        this.mNativePlayer.setOnStateChangedListener(onStateChangedListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnSubtitleDisplayListener(IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener) {
        this.mNativePlayer.setOnSubtitleDisplayListener(onSubtitleDisplayListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnTrackChangedListener(IPlayer.OnTrackChangedListener onTrackChangedListener) {
        this.mNativePlayer.setOnTrackChangedListener(onTrackChangedListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnTrackReadyListener(IPlayer.OnTrackReadyListener onTrackReadyListener) {
        this.mNativePlayer.setOnTrackReadyListener(onTrackReadyListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnVideoRenderedListener(IPlayer.OnVideoRenderedListener onVideoRenderedListener) {
        this.mNativePlayer.setOnVideoRenderedListener(onVideoRenderedListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setOnVideoSizeChangedListener(IPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mNativePlayer.setOnVideoSizeChangedListener(onVideoSizeChangedListener);
    }

    @Override // com.aliyun.player.IPlayer
    public void setPreferPlayerName(String str) {
        this.mNativePlayer.setPreferPlayerName(str);
    }

    @Override // com.aliyun.player.IListPlayer
    public void setPreloadCount(int i11) {
        this.mListPlayer.setPreloadCount(i11);
    }

    @Override // com.aliyun.player.IPlayer
    public void setRenderFrameCallbackConfig(IPlayer.RenderFrameCallbackConfig renderFrameCallbackConfig) {
        this.mNativePlayer.setRenderFrameCallbackConfig(renderFrameCallbackConfig);
    }

    @Override // com.aliyun.player.IPlayer
    public void setRotateMode(IPlayer.RotateMode rotateMode) {
        this.mNativePlayer.setRotateMode(rotateMode);
    }

    @Override // com.aliyun.player.IPlayer
    public void setScaleMode(IPlayer.ScaleMode scaleMode) {
        this.mNativePlayer.setScaleMode(scaleMode);
    }

    @Override // com.aliyun.player.IPlayer
    public void setSpeed(float f11) {
        this.mNativePlayer.setSpeed(f11);
    }

    @Override // com.aliyun.player.IPlayer
    public void setStreamDelayTime(int i11, int i12) {
        this.mNativePlayer.setStreamDelayTime(i11, i12);
    }

    @Override // com.aliyun.player.IPlayer
    public void setSurface(Surface surface) {
        this.mNativePlayer.setSurface(surface);
    }

    @Override // com.aliyun.player.IPlayer
    public void setTraceId(String str) {
        this.mNativePlayer.setTraceId(str);
    }

    @Override // com.aliyun.player.IPlayer
    public void setVideoBackgroundColor(int i11) {
        this.mNativePlayer.setVideoBackgroundColor(i11);
    }

    @Override // com.aliyun.player.IPlayer
    public void setVideoTag(int[] iArr) {
        this.mNativePlayer.setVideoTag(iArr);
    }

    @Override // com.aliyun.player.IPlayer
    public void setVolume(float f11) {
        this.mNativePlayer.setVolume(f11);
    }

    @Override // com.aliyun.player.IPlayer
    public void snapshot() {
        this.mNativePlayer.snapshot();
    }

    @Override // com.aliyun.player.IPlayer
    public void start() {
        this.mNativePlayer.start();
    }

    @Override // com.aliyun.player.IPlayer
    public void stop() {
        this.mNativePlayer.stop();
    }

    @Override // com.aliyun.player.IPlayer
    public void surfaceChanged() {
        this.mNativePlayer.surfaceChanged();
    }

    @Override // com.aliyun.player.IPlayer
    public void updateFilterConfig(String str, FilterConfig.FilterOptions filterOptions) {
        this.mNativePlayer.updateFilterConfig(str, filterOptions);
    }
}
