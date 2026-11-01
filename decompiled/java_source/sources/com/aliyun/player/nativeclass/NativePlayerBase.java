package com.aliyun.player.nativeclass;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.aliyun.player.FilterConfig;
import com.aliyun.player.IPlayer;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.bean.InfoBean;
import com.aliyun.player.bean.InfoCode;
import com.aliyun.player.videoview.AliDisplayView;
import com.aliyun.player.videoview.displayView.IDisplayView;
import com.aliyun.utils.DeviceInfoUtils;
import com.aliyun.utils.NativeLoader;
import com.cicada.player.utils.FrameInfo;
import com.cicada.player.utils.Logger;
import com.cicada.player.utils.NativeUsed;
import com.cicada.player.utils.media.DrmCallback;
import java.io.File;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NativePlayerBase {
    private static final String TAG = "NativePlayerBase";
    private static final int UPDATE_CURRENT_POSITION = 1000;
    private static final int VIDEO_TYPE_FAIRPLAY = 16;
    private static final int VIDEO_TYPE_HDR10 = 2;
    private static final int VIDEO_TYPE_NONE = 0;
    private static final int VIDEO_TYPE_SDR = 1;
    private static final int VIDEO_TYPE_WIDEVINE_L1 = 4;
    private static final int VIDEO_TYPE_WIDEVINE_L3 = 8;
    private static String libPath;
    private static Context mContext;
    private static IPlayer.ConvertURLCallback sConvertURLCallback;
    private MainHandler mCurrentThreadHandler;
    private long mNativeContext;
    private boolean mSurfaceFromUser = false;
    private boolean mEnableTunnelMode = false;
    private IPlayer.OnRenderFrameCallback mRenderFrameCallback = null;
    private IPlayer.OnPreRenderFrameCallback mPreRenderFrameCallback = null;
    private IPlayer.OnVideoSizeChangedListener mOnVideoSizeChangedListener = null;
    private IPlayer.OnVideoRenderedListener mOnVideoRenderedListener = null;
    private IPlayer.OnInfoListener mOnInfoListener = null;
    private IPlayer.OnTrackReadyListener mOnTrackReadyListener = null;
    private IPlayer.OnChooseTrackIndexListener mOnChooseTrackIndexListener = null;
    private IPlayer.OnPreparedListener mOnPreparedListener = null;
    private IPlayer.OnCompletionListener mOnCompletionListener = null;
    private IPlayer.OnErrorListener mOnErrorListener = null;
    private IPlayer.OnRenderingStartListener mOnRenderingStartListener = null;
    private IPlayer.OnTrackChangedListener mOnTrackChangedListener = null;
    private IPlayer.OnSeiDataListener mOnSeiDataListener = null;
    private IPlayer.OnLoadingStatusListener mOnLoadingStatusListener = null;
    private IPlayer.OnSeekCompleteListener mOnSeekCompleteListener = null;
    private IPlayer.OnSubtitleDisplayListener mOnSubtitleDisplayListener = null;
    private IPlayer.OnStateChangedListener mOnStateChangedListener = null;
    private IPlayer.OnSnapShotListener mOnSnapShotListener = null;
    private IPlayer.OnReportEventListener mOnEventReportListner = null;
    private DrmCallback mDrmCallback = null;
    private boolean mDirectRender = false;
    private int mVideoType = 0;
    private AliDisplayView mAliDisplayView = null;
    private DisplayViewHelper mDisplayViewHelper = null;

    private static class MainHandler extends Handler {
        private WeakReference<NativePlayerBase> playerWeakReference;

        public MainHandler(NativePlayerBase nativePlayerBase, Looper looper) {
            super(looper);
            this.playerWeakReference = new WeakReference<>(nativePlayerBase);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            NativePlayerBase nativePlayerBase = this.playerWeakReference.get();
            if (nativePlayerBase != null) {
                nativePlayerBase.handleMessage(message);
            }
            super.handleMessage(message);
        }
    }

    static {
        NativeLoader.loadPlayer();
        mContext = null;
        sConvertURLCallback = null;
    }

    public NativePlayerBase(Context context) {
        mContext = context;
        if (libPath == null) {
            String userNativeLibPath = getUserNativeLibPath(context);
            libPath = userNativeLibPath;
            nSetLibPath(userNativeLibPath);
            loadPlugins();
        }
        DeviceInfoUtils.setSDKContext(context);
        this.mCurrentThreadHandler = new MainHandler(this, Looper.getMainLooper());
        construct(context);
    }

    private void construct(Context context) {
        nConstruct();
    }

    public static Context getContext() {
        return mContext;
    }

    public static String getSdkVersion() {
        return nGetSdkVersion();
    }

    private static String getUserNativeLibPath(Context context) {
        String packageName = context.getPackageName();
        String str = "/data/data/" + packageName + "/lib/";
        try {
            str = context.getPackageManager().getPackageInfo(packageName, 0).applicationInfo.dataDir + "/lib/";
        } catch (PackageManager.NameNotFoundException unused) {
        }
        File file = new File(str);
        if (file.exists() && file.listFiles() != null) {
            return str;
        }
        try {
            return context.getPackageManager().getPackageInfo(packageName, 0).applicationInfo.nativeLibraryDir + "/";
        } catch (PackageManager.NameNotFoundException unused2) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message message) {
        if (message.what != 1000 || this.mOnInfoListener == null) {
            return;
        }
        InfoBean infoBean = new InfoBean();
        infoBean.setCode(InfoCode.CurrentPosition);
        infoBean.setExtraValue(message.arg1);
        this.mOnInfoListener.onInfo(infoBean);
    }

    public static void loadClass() {
    }

    private void loadPlugins() {
        File[] fileArrListFiles;
        if (TextUtils.isEmpty(libPath)) {
            return;
        }
        File file = new File(libPath);
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            String name = file2.getName();
            if (name.contains("cicada_plugin_")) {
                try {
                    System.loadLibrary(name.substring(name.indexOf("lib") + 3, name.lastIndexOf(".so")));
                } catch (Exception e11) {
                    Logger.e("NativePlayerBase", e11.getMessage());
                }
            }
        }
    }

    protected static String nConvertURLCallback(String str, String str2) {
        IPlayer.ConvertURLCallback convertURLCallback = sConvertURLCallback;
        if (convertURLCallback != null) {
            return convertURLCallback.convertURL(str, str2);
        }
        return null;
    }

    protected static native String nGetSdkVersion();

    protected static native void nSetBlackType(int i11);

    @NativeUsed
    private boolean nUpdateViewCallback(int i11) {
        String str = TAG;
        Logger.i(str, "nUpdateViewCallback videoType = " + i11);
        this.mDirectRender = false;
        this.mVideoType = i11;
        if (this.mSurfaceFromUser) {
            return false;
        }
        this.mDirectRender = this.mEnableTunnelMode;
        final AliDisplayView.DisplayViewType displayViewType = AliDisplayView.DisplayViewType.Either;
        if ((i11 & 2) == 2 || (i11 & 4) == 4 || (i11 & 8) == 8) {
            displayViewType = AliDisplayView.DisplayViewType.SurfaceView;
            this.mDirectRender = true;
        }
        Logger.i(str, "mDirectRender  = " + this.mDirectRender);
        if (this.mAliDisplayView == null) {
            Logger.e(str, "nCreateViewCallback but view is null");
            return false;
        }
        boolean zNeedUpdateView = this.mDisplayViewHelper.needUpdateView(displayViewType);
        this.mAliDisplayView.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.30
            @Override // java.lang.Runnable
            public void run() {
                NativePlayerBase.this.mDisplayViewHelper.createDisplayView(displayViewType, NativePlayerBase.this.mDirectRender);
                NativePlayerBase.this.mDisplayViewHelper.setVideoSize(NativePlayerBase.this.getVideoWidth(), NativePlayerBase.this.getVideoHeight(), (int) NativePlayerBase.this.getVideoRotation());
            }
        });
        return zNeedUpdateView;
    }

    @NativeUsed
    private void native_onEventReport(Object obj) {
        Map<String, String> map = (Map) obj;
        IPlayer.OnReportEventListener onReportEventListener = this.mOnEventReportListner;
        if (onReportEventListener != null) {
            onReportEventListener.onEventParam(map);
        }
    }

    @NativeUsed
    private boolean native_onPreRenderFrameCallback(Object obj) {
        IPlayer.OnPreRenderFrameCallback onPreRenderFrameCallback = this.mPreRenderFrameCallback;
        if (onPreRenderFrameCallback != null) {
            return onPreRenderFrameCallback.onPreRenderFrame((FrameInfo) obj);
        }
        return false;
    }

    @NativeUsed
    private boolean native_onRenderFrameCallback(Object obj) {
        IPlayer.OnRenderFrameCallback onRenderFrameCallback = this.mRenderFrameCallback;
        if (onRenderFrameCallback != null) {
            return onRenderFrameCallback.onRenderFrame((FrameInfo) obj);
        }
        return false;
    }

    public static void setBlackType(int i11) {
        nSetBlackType(i11);
    }

    public static void setConvertURLCb(IPlayer.ConvertURLCallback convertURLCallback) {
        sConvertURLCallback = convertURLCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSurfaceInner(Surface surface, boolean z10) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Logger.w(TAG, "set surface not at main thread");
        }
        this.mSurfaceFromUser = z10;
        nSetSurface(surface);
    }

    public void addExtSubtitle(String str) {
        nAddExtSubtitle(str);
    }

    public synchronized void clearScreen() {
        nClearScreen();
    }

    protected void clearScreenIfNeed() {
        PlayerConfig config = getConfig();
        if (config == null || !config.mClearFrameWhenStop) {
            return;
        }
        this.mDisplayViewHelper.clearScreen();
    }

    public synchronized void enableHardwareDecoder(boolean z10) {
        nEnableHardwareDecoder(z10);
    }

    public synchronized long getBufferedPosition() {
        return nGetBufferedPosition();
    }

    public String getCacheFilePath(String str) {
        return nGetCacheFilePath(str);
    }

    public String getCacheFilePath(String str, String str2, String str3, int i11) {
        return nGetCacheFilePath(str, str2, str3, i11);
    }

    public synchronized PlayerConfig getConfig() {
        Object objNGetConfig = nGetConfig();
        if (objNGetConfig == null) {
            return null;
        }
        return (PlayerConfig) objNGetConfig;
    }

    public synchronized long getCurrentPosition() {
        return nGetCurrentPosition();
    }

    public synchronized TrackInfo getCurrentTrackInfo(int i11) {
        return (TrackInfo) nGetCurrentStreamInfo(i11);
    }

    public synchronized long getDuration() {
        return nGetDuration();
    }

    public synchronized IPlayer.MirrorMode getMirrorMode() {
        int iNGetMirrorMode = nGetMirrorMode();
        IPlayer.MirrorMode mirrorMode = IPlayer.MirrorMode.MIRROR_MODE_NONE;
        if (iNGetMirrorMode == mirrorMode.getValue()) {
            return mirrorMode;
        }
        IPlayer.MirrorMode mirrorMode2 = IPlayer.MirrorMode.MIRROR_MODE_HORIZONTAL;
        if (iNGetMirrorMode == mirrorMode2.getValue()) {
            return mirrorMode2;
        }
        IPlayer.MirrorMode mirrorMode3 = IPlayer.MirrorMode.MIRROR_MODE_VERTICAL;
        return iNGetMirrorMode == mirrorMode3.getValue() ? mirrorMode3 : mirrorMode;
    }

    public long getNativeContext() {
        return this.mNativeContext;
    }

    public synchronized Object getOption(IPlayer.Option option) {
        String strNGetOption = nGetOption(option.getValue());
        if (strNGetOption == null) {
            return null;
        }
        if (option != IPlayer.Option.RenderFPS && option != IPlayer.Option.DownloadBitrate && option != IPlayer.Option.VideoBitrate && option != IPlayer.Option.AudioBitrate) {
            return strNGetOption;
        }
        try {
            return Float.valueOf(strNGetOption);
        } catch (Exception unused) {
            return Float.valueOf("0");
        }
    }

    public String getPlayerName() {
        return nGetPlayerName();
    }

    public synchronized String getPropertyString(int i11) {
        return nGetPropertyString(i11);
    }

    public synchronized IPlayer.RotateMode getRotateMode() {
        int iNGetRotateMode = nGetRotateMode();
        IPlayer.RotateMode rotateMode = IPlayer.RotateMode.ROTATE_0;
        if (iNGetRotateMode == rotateMode.getValue()) {
            return rotateMode;
        }
        IPlayer.RotateMode rotateMode2 = IPlayer.RotateMode.ROTATE_90;
        if (iNGetRotateMode == rotateMode2.getValue()) {
            return rotateMode2;
        }
        IPlayer.RotateMode rotateMode3 = IPlayer.RotateMode.ROTATE_180;
        if (iNGetRotateMode == rotateMode3.getValue()) {
            return rotateMode3;
        }
        IPlayer.RotateMode rotateMode4 = IPlayer.RotateMode.ROTATE_270;
        return iNGetRotateMode == rotateMode4.getValue() ? rotateMode4 : rotateMode;
    }

    public synchronized IPlayer.ScaleMode getScaleMode() {
        int iNGetScaleMode = nGetScaleMode();
        IPlayer.ScaleMode scaleMode = IPlayer.ScaleMode.SCALE_TO_FILL;
        if (iNGetScaleMode == scaleMode.getValue()) {
            return scaleMode;
        }
        IPlayer.ScaleMode scaleMode2 = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
        if (iNGetScaleMode == scaleMode2.getValue()) {
            return scaleMode2;
        }
        IPlayer.ScaleMode scaleMode3 = IPlayer.ScaleMode.SCALE_ASPECT_FILL;
        return iNGetScaleMode == scaleMode3.getValue() ? scaleMode3 : scaleMode;
    }

    public synchronized float getSpeed() {
        return nGetSpeed();
    }

    public synchronized int getVideoHeight() {
        return nGetVideoHeight();
    }

    public synchronized float getVideoRotation() {
        return nGetVideoRotation();
    }

    public synchronized int getVideoWidth() {
        return nGetVideoWidth();
    }

    public synchronized float getVolume() {
        return nGetVolume();
    }

    public int invokeComponent(String str) {
        return nInvokeComponent(str);
    }

    public synchronized boolean isAutoPlay() {
        return nIsAutoPlay();
    }

    public synchronized boolean isLoop() {
        return nIsLoop();
    }

    public synchronized boolean isMuted() {
        return nIsMuted();
    }

    protected native void nAddExtSubtitle(String str);

    protected native void nClearScreen();

    protected native void nConstruct();

    protected native void nEnableFrameCb(boolean z10);

    protected native void nEnableHardwareDecoder(boolean z10);

    protected native void nEnablePreFrameCb(boolean z10);

    protected native void nEnableVideoRenderedCallback(boolean z10);

    protected native long nGetBufferedPosition();

    protected native String nGetCacheFilePath(String str);

    protected native String nGetCacheFilePath(String str, String str2, String str3, int i11);

    protected native Object nGetConfig();

    protected native long nGetCurrentPosition();

    protected native Object nGetCurrentStreamInfo(int i11);

    protected native long nGetDuration();

    protected native int nGetMirrorMode();

    protected native String nGetOption(String str);

    protected native String nGetPlayerName();

    protected native String nGetPropertyString(int i11);

    protected native int nGetRotateMode();

    protected native int nGetScaleMode();

    protected native float nGetSpeed();

    protected native int nGetVideoHeight();

    protected native int nGetVideoRotation();

    protected native int nGetVideoWidth();

    protected native float nGetVolume();

    protected native int nInvokeComponent(String str);

    protected native boolean nIsAutoPlay();

    protected native boolean nIsLoop();

    protected native boolean nIsMuted();

    protected native void nPause();

    protected native void nPrepare();

    protected native void nRelease();

    protected native void nReload();

    protected native void nSeekTo(long j11, int i11);

    protected native void nSelectExtSubtitle(int i11, boolean z10);

    protected native void nSelectTrack(int i11);

    protected native void nSelectTrackA(int i11, boolean z10);

    protected native void nSendCustomEvent(String str);

    protected native void nSetAutoPlay(boolean z10);

    protected native void nSetCacheConfig(Object obj);

    protected native void nSetConfig(Object obj);

    protected native void nSetConnectivityManager(Object obj);

    protected native void nSetDefaultBandWidth(int i11);

    protected native void nSetFastStart(boolean z10);

    protected native void nSetFilterConfig(String str);

    protected native void nSetFilterInvalid(String str, boolean z10);

    protected native void nSetFrameCbConfig(boolean z10, boolean z11);

    protected native void nSetIPResolveType(int i11);

    protected native void nSetLibPath(String str);

    protected native void nSetLoop(boolean z10);

    protected native void nSetMaxAccurateSeekDelta(int i11);

    protected native void nSetMirrorMode(int i11);

    protected native void nSetMute(boolean z10);

    protected native void nSetOption(String str, String str2);

    protected native void nSetPreferPlayerName(String str);

    protected native void nSetRotateMode(int i11);

    protected native void nSetScaleMode(int i11);

    protected native void nSetSpeed(float f11);

    protected native void nSetStreamDelayTime(int i11, int i12);

    protected native void nSetSurface(Surface surface);

    protected native void nSetTraceID(String str);

    protected native void nSetVideoBackgroundColor(int i11);

    protected native void nSetVideoTag(int[] iArr);

    protected native void nSetVolume(float f11);

    protected native void nSnapShot();

    protected native void nStart();

    protected native void nStop();

    protected native void nSurfaceChanged();

    protected native void nUpdateFilterConfig(String str, String str2);

    protected void onAutoPlayStart() {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.6
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnInfoListener != null) {
                    InfoBean infoBean = new InfoBean();
                    infoBean.setCode(InfoCode.AutoPlayStart);
                    NativePlayerBase.this.mOnInfoListener.onInfo(infoBean);
                }
            }
        });
    }

    protected void onBufferedPositionUpdate(final long j11) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.17
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnInfoListener != null) {
                    InfoBean infoBean = new InfoBean();
                    infoBean.setCode(InfoCode.BufferedPosition);
                    infoBean.setExtraValue(j11);
                    NativePlayerBase.this.mOnInfoListener.onInfo(infoBean);
                }
            }
        });
    }

    protected void onCaptureScreen(final int i11, final int i12, byte[] bArr) {
        final Bitmap bitmapCreateBitmap = null;
        if (i11 > 0 && i12 > 0 && bArr != null && bArr.length > 0) {
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
                bitmapCreateBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(bArr));
            } catch (Exception unused) {
            }
        }
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.29
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnSnapShotListener != null) {
                    NativePlayerBase.this.mOnSnapShotListener.onSnapShot(bitmapCreateBitmap, i11, i12);
                }
            }
        });
    }

    protected int onChooseTrackIndex(TrackInfo[] trackInfoArr) {
        IPlayer.OnChooseTrackIndexListener onChooseTrackIndexListener = this.mOnChooseTrackIndexListener;
        if (onChooseTrackIndexListener != null) {
            return onChooseTrackIndexListener.onChooseTrackIndex(trackInfoArr);
        }
        return -1;
    }

    protected void onCircleStart() {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.5
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnInfoListener != null) {
                    InfoBean infoBean = new InfoBean();
                    infoBean.setCode(InfoCode.LoopingStart);
                    NativePlayerBase.this.mOnInfoListener.onInfo(infoBean);
                }
            }
        });
    }

    protected void onCompletion() {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.4
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnCompletionListener != null) {
                    NativePlayerBase.this.mOnCompletionListener.onCompletion();
                }
            }
        });
    }

    protected void onCurrentDownloadSpeed(final long j11) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.20
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnInfoListener != null) {
                    InfoBean infoBean = new InfoBean();
                    infoBean.setCode(InfoCode.CurrentDownloadSpeed);
                    infoBean.setExtraValue(j11);
                    NativePlayerBase.this.mOnInfoListener.onInfo(infoBean);
                }
            }
        });
    }

    protected void onCurrentPositionUpdate(long j11) {
        this.mCurrentThreadHandler.sendMessage(this.mCurrentThreadHandler.obtainMessage(1000, (int) j11, 0));
    }

    protected void onError(int i11, final String str, Object obj) {
        final ErrorCode errorCode = ErrorCode.ERROR_UNKNOWN;
        for (ErrorCode errorCode2 : ErrorCode.values()) {
            if (errorCode2.getValue() == i11) {
                errorCode = errorCode2;
                break;
            }
        }
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.7
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnErrorListener != null) {
                    ErrorInfo errorInfo = new ErrorInfo();
                    errorInfo.setCode(errorCode);
                    errorInfo.setMsg(str);
                    NativePlayerBase.this.mOnErrorListener.onError(errorInfo);
                }
            }
        });
    }

    protected void onEvent(int i11, final String str, Object obj) {
        final InfoCode infoCode = InfoCode.Unknown;
        for (InfoCode infoCode2 : InfoCode.values()) {
            if (infoCode2.getValue() == i11) {
                infoCode = infoCode2;
                break;
            }
        }
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.8
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnInfoListener != null) {
                    InfoBean infoBean = new InfoBean();
                    infoBean.setCode(infoCode);
                    infoBean.setExtraMsg(str);
                    NativePlayerBase.this.mOnInfoListener.onInfo(infoBean);
                }
            }
        });
    }

    protected void onFirstFrameShow() {
        if (this.mAliDisplayView != null) {
            this.mDisplayViewHelper.firstFrameRender(getVideoWidth() > 0);
        }
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.9
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnRenderingStartListener != null) {
                    NativePlayerBase.this.mOnRenderingStartListener.onRenderingStart();
                }
            }
        });
    }

    protected void onHideSubtitle(final int i11, final long j11) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.27
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnSubtitleDisplayListener != null) {
                    NativePlayerBase.this.mOnSubtitleDisplayListener.onSubtitleHide(i11, j11);
                }
            }
        });
    }

    protected void onLoadingEnd() {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.23
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnLoadingStatusListener != null) {
                    NativePlayerBase.this.mOnLoadingStatusListener.onLoadingEnd();
                }
            }
        });
    }

    protected void onLoadingProgress(final float f11) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.19
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnLoadingStatusListener != null) {
                    NativePlayerBase.this.mOnLoadingStatusListener.onLoadingProgress((int) f11, 0.0f);
                }
            }
        });
    }

    protected void onLoadingStart() {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.18
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnLoadingStatusListener != null) {
                    NativePlayerBase.this.mOnLoadingStatusListener.onLoadingBegin();
                }
            }
        });
    }

    protected void onLocalCacheLoad(final long j11) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.22
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnInfoListener != null) {
                    InfoBean infoBean = new InfoBean();
                    infoBean.setCode(InfoCode.LocalCacheLoaded);
                    infoBean.setExtraValue(j11);
                    NativePlayerBase.this.mOnInfoListener.onInfo(infoBean);
                }
            }
        });
    }

    protected void onPrepared() {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.3
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnPreparedListener != null) {
                    NativePlayerBase.this.mOnPreparedListener.onPrepared();
                }
            }
        });
    }

    protected void onSeekEnd() {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.24
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnSeekCompleteListener != null) {
                    NativePlayerBase.this.mOnSeekCompleteListener.onSeekComplete();
                }
            }
        });
    }

    protected void onSeiDataCallback(final int i11, final byte[] bArr) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.14
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnSeiDataListener != null) {
                    NativePlayerBase.this.mOnSeiDataListener.onSeiData(i11, bArr);
                }
            }
        });
    }

    protected void onShowSubtitle(final int i11, final long j11, final String str, Object obj) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.25
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnSubtitleDisplayListener != null) {
                    NativePlayerBase.this.mOnSubtitleDisplayListener.onSubtitleShow(i11, j11, str);
                }
            }
        });
    }

    public void onStatusChanged(final int i11, int i12) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.16
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnStateChangedListener != null) {
                    NativePlayerBase.this.mOnStateChangedListener.onStateChanged(i11);
                }
            }
        });
    }

    protected void onStreamInfoGet(final MediaInfo mediaInfo) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.12
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnTrackReadyListener != null) {
                    NativePlayerBase.this.mOnTrackReadyListener.onTrackReady(mediaInfo);
                }
            }
        });
    }

    protected void onSubtitleExtAdded(final int i11, final String str) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.26
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnSubtitleDisplayListener != null) {
                    NativePlayerBase.this.mOnSubtitleDisplayListener.onSubtitleExtAdded(i11, str);
                }
            }
        });
    }

    protected void onSubtitleHeader(final int i11, final String str) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.28
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnSubtitleDisplayListener != null) {
                    NativePlayerBase.this.mOnSubtitleDisplayListener.onSubtitleHeader(i11, str);
                }
            }
        });
    }

    protected void onSwitchStreamFail(final TrackInfo trackInfo, final int i11, final String str) {
        final ErrorCode errorCode;
        ErrorCode errorCode2 = ErrorCode.ERROR_UNKNOWN;
        for (ErrorCode errorCode3 : ErrorCode.values()) {
            if (errorCode3.getValue() == i11) {
                errorCode = errorCode3;
                this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.15
                    @Override // java.lang.Runnable
                    public void run() {
                        if (NativePlayerBase.this.mOnTrackChangedListener != null) {
                            ErrorInfo errorInfo = new ErrorInfo();
                            errorInfo.setCode(errorCode);
                            errorInfo.setMsg(i11 + ":" + str);
                            NativePlayerBase.this.mOnTrackChangedListener.onChangedFail(trackInfo, errorInfo);
                        }
                    }
                });
            }
        }
        errorCode = errorCode2;
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.15
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnTrackChangedListener != null) {
                    ErrorInfo errorInfo = new ErrorInfo();
                    errorInfo.setCode(errorCode);
                    errorInfo.setMsg(i11 + ":" + str);
                    NativePlayerBase.this.mOnTrackChangedListener.onChangedFail(trackInfo, errorInfo);
                }
            }
        });
    }

    protected void onSwitchStreamSuccess(final TrackInfo trackInfo) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.13
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnTrackChangedListener != null) {
                    NativePlayerBase.this.mOnTrackChangedListener.onChangedSuccess(trackInfo);
                }
            }
        });
    }

    protected void onUtcTimeUpdate(final long j11) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.21
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnInfoListener != null) {
                    InfoBean infoBean = new InfoBean();
                    infoBean.setCode(InfoCode.UtcTime);
                    infoBean.setExtraValue(j11);
                    NativePlayerBase.this.mOnInfoListener.onInfo(infoBean);
                }
            }
        });
    }

    protected void onVideoRendered(final long j11, final long j12) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.11
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnVideoRenderedListener != null) {
                    NativePlayerBase.this.mOnVideoRenderedListener.onVideoRendered(j11, j12);
                }
            }
        });
    }

    protected void onVideoSizeChanged(final int i11, final int i12) {
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.10
            @Override // java.lang.Runnable
            public void run() {
                if (NativePlayerBase.this.mOnVideoSizeChangedListener != null) {
                    NativePlayerBase.this.mOnVideoSizeChangedListener.onVideoSizeChanged(i11, i12);
                }
            }
        });
    }

    public synchronized void pause() {
        nPause();
    }

    public synchronized void prepare() {
        nPrepare();
    }

    public synchronized void release() {
        nRelease();
        mContext = null;
    }

    public synchronized void reload() {
        nReload();
    }

    @NativeUsed
    protected byte[] requestKey(String str, byte[] bArr) {
        DrmCallback drmCallback = this.mDrmCallback;
        if (drmCallback == null) {
            return null;
        }
        return drmCallback.requestKey(str, bArr);
    }

    @NativeUsed
    protected byte[] requestProvision(String str, byte[] bArr) {
        DrmCallback drmCallback = this.mDrmCallback;
        if (drmCallback == null) {
            return null;
        }
        return drmCallback.requestProvision(str, bArr);
    }

    public synchronized void seekTo(long j11) {
        this.mCurrentThreadHandler.removeMessages(1000);
        nSeekTo(j11, 16);
    }

    public synchronized void seekTo(long j11, int i11) {
        this.mCurrentThreadHandler.removeMessages(1000);
        nSeekTo(j11, i11);
    }

    public void selectExtSubtitle(int i11, boolean z10) {
        nSelectExtSubtitle(i11, z10);
    }

    public synchronized void selectTrack(int i11) {
        nSelectTrack(i11);
    }

    public synchronized void selectTrack(int i11, boolean z10) {
        nSelectTrackA(i11, z10);
    }

    public void sendCustomEvent(String str) {
        nSendCustomEvent(str);
    }

    public synchronized void setAutoPlay(boolean z10) {
        nSetAutoPlay(z10);
    }

    public synchronized void setCacheConfig(CacheConfig cacheConfig) {
        nSetCacheConfig(cacheConfig);
    }

    public synchronized void setConfig(PlayerConfig playerConfig) {
        this.mEnableTunnelMode = playerConfig.mEnableVideoTunnelRender;
        nSetConfig(playerConfig);
    }

    public synchronized void setDefaultBandWidth(int i11) {
        nSetDefaultBandWidth(i11);
    }

    public void setDisplayView(AliDisplayView aliDisplayView) {
        this.mAliDisplayView = aliDisplayView;
        if (aliDisplayView == null) {
            this.mDisplayViewHelper = null;
            return;
        }
        DisplayViewHelper displayViewHelper = aliDisplayView.getDisplayViewHelper();
        this.mDisplayViewHelper = displayViewHelper;
        displayViewHelper.setOnViewStatusListener(new IDisplayView.OnDisplayViewStatusListener() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.31
            @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
            public void onSurfaceCreated(Surface surface) {
                NativePlayerBase.this.setSurfaceInner(surface, false);
            }

            @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
            public void onSurfaceDestroy() {
                NativePlayerBase.this.setSurfaceInner(null, false);
            }

            @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
            public void onSurfaceSizeChanged() {
                NativePlayerBase.this.surfaceChanged();
            }

            @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
            public void onViewCreated(AliDisplayView.DisplayViewType displayViewType) {
            }
        });
        if (nGetVideoWidth() > 0 || nGetVideoHeight() > 0) {
            nUpdateViewCallback(this.mVideoType);
        }
    }

    public void setDrmCallback(DrmCallback drmCallback) {
        this.mDrmCallback = drmCallback;
    }

    public synchronized void setFastStart(boolean z10) {
        nSetFastStart(z10);
    }

    public void setFilterConfig(FilterConfig filterConfig) {
        nSetFilterConfig(filterConfig == null ? null : filterConfig.toString());
    }

    public void setFilterInvalid(String str, boolean z10) {
        nSetFilterInvalid(str, z10);
    }

    public synchronized void setIPResolveType(IPlayer.IPResolveType iPResolveType) {
        nSetIPResolveType(iPResolveType.ordinal());
    }

    public synchronized void setLoop(boolean z10) {
        nSetLoop(z10);
    }

    public void setMaxAccurateSeekDelta(int i11) {
        nSetMaxAccurateSeekDelta(i11);
    }

    public synchronized void setMirrorMode(IPlayer.MirrorMode mirrorMode) {
        try {
            if (this.mAliDisplayView != null && this.mDirectRender) {
                this.mDisplayViewHelper.setMirrorMode(mirrorMode);
            }
            nSetMirrorMode(mirrorMode.getValue());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setMute(boolean z10) {
        nSetMute(z10);
    }

    protected void setNativeContext(long j11) {
        this.mNativeContext = j11;
    }

    public void setOnChooseTrackIndexListener(IPlayer.OnChooseTrackIndexListener onChooseTrackIndexListener) {
        this.mOnChooseTrackIndexListener = onChooseTrackIndexListener;
    }

    public void setOnCompletionListener(IPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(IPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(IPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnLoadingStatusListener(IPlayer.OnLoadingStatusListener onLoadingStatusListener) {
        this.mOnLoadingStatusListener = onLoadingStatusListener;
    }

    public void setOnPreRenderFrameCallback(IPlayer.OnPreRenderFrameCallback onPreRenderFrameCallback) {
        this.mPreRenderFrameCallback = onPreRenderFrameCallback;
        nEnablePreFrameCb(onPreRenderFrameCallback != null);
    }

    public void setOnPreparedListener(IPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnRenderFrameCallback(IPlayer.OnRenderFrameCallback onRenderFrameCallback) {
        this.mRenderFrameCallback = onRenderFrameCallback;
        nEnableFrameCb(onRenderFrameCallback != null);
    }

    public void setOnRenderingStartListener(IPlayer.OnRenderingStartListener onRenderingStartListener) {
        this.mOnRenderingStartListener = onRenderingStartListener;
    }

    public void setOnReportEventListener(IPlayer.OnReportEventListener onReportEventListener) {
        this.mOnEventReportListner = onReportEventListener;
    }

    public void setOnSeekCompleteListener(IPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnSeiDataListener(IPlayer.OnSeiDataListener onSeiDataListener) {
        this.mOnSeiDataListener = onSeiDataListener;
    }

    public void setOnSnapShotListener(IPlayer.OnSnapShotListener onSnapShotListener) {
        this.mOnSnapShotListener = onSnapShotListener;
    }

    public void setOnStateChangedListener(IPlayer.OnStateChangedListener onStateChangedListener) {
        this.mOnStateChangedListener = onStateChangedListener;
    }

    public void setOnSubtitleDisplayListener(IPlayer.OnSubtitleDisplayListener onSubtitleDisplayListener) {
        this.mOnSubtitleDisplayListener = onSubtitleDisplayListener;
    }

    public void setOnTrackInfoGetListener(IPlayer.OnTrackReadyListener onTrackReadyListener) {
        this.mOnTrackReadyListener = onTrackReadyListener;
    }

    public void setOnTrackSelectRetListener(IPlayer.OnTrackChangedListener onTrackChangedListener) {
        this.mOnTrackChangedListener = onTrackChangedListener;
    }

    public void setOnVideoRenderedListener(IPlayer.OnVideoRenderedListener onVideoRenderedListener) {
        this.mOnVideoRenderedListener = onVideoRenderedListener;
        nEnableVideoRenderedCallback(onVideoRenderedListener != null);
    }

    public void setOnVideoSizeChangedListener(IPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public synchronized void setOption(String str, String str2) {
        nSetOption(str, str2);
    }

    public void setPreferPlayerName(String str) {
        nSetPreferPlayerName(str);
    }

    public void setRenderFrameCallbackConfig(IPlayer.RenderFrameCallbackConfig renderFrameCallbackConfig) {
        nSetFrameCbConfig(!renderFrameCallbackConfig.mVideoDataAddr, !renderFrameCallbackConfig.mAudioDataAddr);
    }

    public synchronized void setRotateMode(IPlayer.RotateMode rotateMode) {
        try {
            if (this.mAliDisplayView != null && this.mDirectRender) {
                this.mDisplayViewHelper.setRotateMode(rotateMode);
            }
            nSetRotateMode(rotateMode.getValue());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setScaleMode(final IPlayer.ScaleMode scaleMode) {
        try {
            AliDisplayView aliDisplayView = this.mAliDisplayView;
            if (aliDisplayView != null && this.mDirectRender) {
                aliDisplayView.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.1
                    @Override // java.lang.Runnable
                    public void run() {
                        NativePlayerBase.this.mDisplayViewHelper.setScaleMode(scaleMode);
                    }
                });
            }
            nSetScaleMode(scaleMode.ordinal());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setSpeed(float f11) {
        nSetSpeed(f11);
    }

    public void setStreamDelayTime(int i11, int i12) {
        nSetStreamDelayTime(i11, i12);
    }

    public synchronized void setSurface(Surface surface) {
        if (this.mAliDisplayView != null) {
            return;
        }
        this.mAliDisplayView = null;
        this.mDisplayViewHelper = null;
        setSurfaceInner(surface, true);
    }

    public synchronized void setTraceId(String str) {
        nSetTraceID(str);
    }

    public synchronized void setVideoBackgroundColor(int i11) {
        try {
            if (this.mAliDisplayView != null && this.mDirectRender) {
                this.mDisplayViewHelper.setBackgroundColor(i11);
            }
            nSetVideoBackgroundColor(i11);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setVideoTag(int[] iArr) {
        nSetVideoTag(iArr);
    }

    public synchronized void setVolume(float f11) {
        nSetVolume(f11);
    }

    public synchronized void snapShot() {
        try {
            AliDisplayView aliDisplayView = this.mAliDisplayView;
            if (aliDisplayView == null || !this.mDirectRender) {
                nSnapShot();
            } else {
                aliDisplayView.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.2
                    @Override // java.lang.Runnable
                    public void run() {
                        final int width;
                        final int height;
                        final Bitmap bitmapSnapshot = NativePlayerBase.this.mDisplayViewHelper.snapshot();
                        if (bitmapSnapshot != null) {
                            width = bitmapSnapshot.getWidth();
                            height = bitmapSnapshot.getHeight();
                        } else {
                            width = 0;
                            height = 0;
                        }
                        NativePlayerBase.this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.player.nativeclass.NativePlayerBase.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (NativePlayerBase.this.mOnSnapShotListener != null) {
                                    NativePlayerBase.this.mOnSnapShotListener.onSnapShot(bitmapSnapshot, width, height);
                                }
                            }
                        });
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void start() {
        nStart();
    }

    public synchronized void stop() {
        try {
            if (this.mAliDisplayView != null && this.mDirectRender) {
                clearScreenIfNeed();
            }
            nStop();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void surfaceChanged() {
        nSurfaceChanged();
    }

    public void updateFilterConfig(String str, FilterConfig.FilterOptions filterOptions) {
        nUpdateFilterConfig(str, filterOptions == null ? null : filterOptions.toString());
    }
}
