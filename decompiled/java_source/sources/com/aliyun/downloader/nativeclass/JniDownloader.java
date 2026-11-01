package com.aliyun.downloader.nativeclass;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.aliyun.downloader.AliMediaDownloader;
import com.aliyun.downloader.DownloaderConfig;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.bean.ErrorInfo;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.source.VidAuth;
import com.aliyun.player.source.VidSts;
import com.aliyun.utils.NativeLoader;
import com.cicada.player.utils.Logger;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class JniDownloader {
    static final String TAG = "JniDownloader";
    private static AliMediaDownloader.ConvertURLCallback sConvertURLCallback;
    private long mNativeContext;
    private AliMediaDownloader.OnPreparedListener mOnPreparedListener = null;
    private AliMediaDownloader.OnErrorListener mOnErrorListener = null;
    private AliMediaDownloader.OnProgressListener mOnProgressListener = null;
    private AliMediaDownloader.OnCompletionListener mOnCompletionListener = null;
    private MainHandler mCurrentThreadHandler = new MainHandler(this, Looper.getMainLooper());

    private static class MainHandler extends Handler {
        private WeakReference<JniDownloader> downloaderWeakReference;

        public MainHandler(JniDownloader jniDownloader, Looper looper) {
            super(looper);
            this.downloaderWeakReference = new WeakReference<>(jniDownloader);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            JniDownloader jniDownloader = this.downloaderWeakReference.get();
            if (jniDownloader != null) {
                jniDownloader.handleMessage(message);
            }
            super.handleMessage(message);
        }
    }

    static {
        NativeLoader.loadPlayer();
        NativeLoader.loadDownloader();
        sConvertURLCallback = null;
    }

    public JniDownloader(Context context) {
        nConstruct();
    }

    public static int deleteFile(String str, String str2, String str3, int i11) {
        return sDeleteFile(str, str2, str3, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message message) {
    }

    protected static String nConvertURLCallback(String str, String str2) {
        AliMediaDownloader.ConvertURLCallback convertURLCallback = sConvertURLCallback;
        if (convertURLCallback != null) {
            return convertURLCallback.convertURL(str, str2);
        }
        return null;
    }

    private void onCompletion() {
        Logger.v(TAG, "onCompletion() ");
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.downloader.nativeclass.JniDownloader.4
            @Override // java.lang.Runnable
            public void run() {
                if (JniDownloader.this.mOnCompletionListener != null) {
                    JniDownloader.this.mOnCompletionListener.onCompletion();
                }
            }
        });
    }

    private void onError(int i11, final String str, final String str2) {
        Logger.v(TAG, "onError() .. code = " + i11 + " , msg = " + str + " , ext = " + str2);
        final ErrorCode errorCode = ErrorCode.ERROR_UNKNOWN;
        for (ErrorCode errorCode2 : ErrorCode.values()) {
            if (errorCode2.getValue() == i11) {
                errorCode = errorCode2;
                break;
            }
        }
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.downloader.nativeclass.JniDownloader.2
            @Override // java.lang.Runnable
            public void run() {
                if (JniDownloader.this.mOnErrorListener != null) {
                    ErrorInfo errorInfo = new ErrorInfo();
                    errorInfo.setCode(errorCode);
                    errorInfo.setMsg(str);
                    errorInfo.setExtra(str2);
                    JniDownloader.this.mOnErrorListener.onError(errorInfo);
                }
            }
        });
    }

    private void onPrepared(Object obj) {
        Logger.v(TAG, "onPrepared(mediaInfo) = " + obj);
        if (obj == null) {
            return;
        }
        final MediaInfo mediaInfo = (MediaInfo) obj;
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.downloader.nativeclass.JniDownloader.1
            @Override // java.lang.Runnable
            public void run() {
                if (JniDownloader.this.mOnPreparedListener != null) {
                    JniDownloader.this.mOnPreparedListener.onPrepared(mediaInfo);
                }
            }
        });
    }

    private void onProgress(final int i11, final int i12) {
        Logger.v(TAG, "onProgress() .. type = " + i11 + ", percent = " + i12 + "%");
        this.mCurrentThreadHandler.post(new Runnable() { // from class: com.aliyun.downloader.nativeclass.JniDownloader.3
            @Override // java.lang.Runnable
            public void run() {
                if (JniDownloader.this.mOnProgressListener != null) {
                    if (i11 == 0) {
                        JniDownloader.this.mOnProgressListener.onDownloadingProgress(i12);
                    } else {
                        JniDownloader.this.mOnProgressListener.onProcessingProgress(i12);
                    }
                }
            }
        });
    }

    static native int sDeleteFile(String str, String str2, String str3, int i11);

    public static void setConvertURLCallback(AliMediaDownloader.ConvertURLCallback convertURLCallback) {
        sConvertURLCallback = convertURLCallback;
    }

    public void deleteFile() {
        Logger.v(TAG, "deleteFile()");
        nDeleteFile();
    }

    public String getFilePath() {
        String strNGetFilePath = nGetFilePath();
        Logger.v(TAG, "getFilePath() , return = " + strNGetFilePath);
        return strNGetFilePath;
    }

    protected long getNativeContext() {
        return this.mNativeContext;
    }

    native void nConstruct();

    native void nDeleteFile();

    native String nGetFilePath();

    native void nPrepare(VidAuth vidAuth);

    native void nPrepare(VidSts vidSts);

    native void nRelease();

    native void nSelectItem(int i11);

    native void nSetConnectivityManager(Object obj);

    native void nSetDownloaderConfig(Object obj);

    native void nSetSaveDir(String str);

    native void nStart();

    native void nStop();

    native void nUpdateSource(VidAuth vidAuth);

    native void nUpdateSource(VidSts vidSts);

    public void prepare(VidAuth vidAuth) {
        Logger.v(TAG, "prepare(vidAuth) vid :" + vidAuth.getVid());
        nPrepare(vidAuth);
    }

    public void prepare(VidSts vidSts) {
        Logger.v(TAG, "prepare(vidSts) vid :" + vidSts.getVid());
        nPrepare(vidSts);
    }

    public void release() {
        Logger.v(TAG, "release()");
        nRelease();
    }

    public void selectItem(int i11) {
        Logger.v(TAG, "selectItem(index) index :" + i11);
        nSelectItem(i11);
    }

    public void setDownloaderConfig(DownloaderConfig downloaderConfig) {
        Logger.v(TAG, "setDownloaderConfig() ");
        nSetDownloaderConfig(downloaderConfig);
    }

    protected void setNativeContext(long j11) {
        Logger.d(TAG, "setNativeContext " + j11);
        this.mNativeContext = j11;
    }

    public void setOnCompletionListener(AliMediaDownloader.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(AliMediaDownloader.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnPreparedListener(AliMediaDownloader.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnProgressListener(AliMediaDownloader.OnProgressListener onProgressListener) {
        this.mOnProgressListener = onProgressListener;
    }

    public void setSaveDir(String str) {
        Logger.v(TAG, "setSaveDir() :" + str);
        nSetSaveDir(str);
    }

    public void start() {
        Logger.v(TAG, "start()");
        nStart();
    }

    public void stop() {
        Logger.v(TAG, "stop()");
        nStop();
    }

    public void updateSource(VidAuth vidAuth) {
        Logger.v(TAG, "updateSource(vidAuth) vid :" + vidAuth.getVid());
        nUpdateSource(vidAuth);
    }

    public void updateSource(VidSts vidSts) {
        Logger.v(TAG, "updateSource(vidsts) vid :" + vidSts.getVid());
        nUpdateSource(vidSts);
    }
}
