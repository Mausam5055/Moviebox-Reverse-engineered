package com.aliyun.loader;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.aliyun.utils.NativeLoader;
import com.cicada.player.utils.NativeUsed;

/* JADX INFO: loaded from: classes2.dex */
public class MediaLoader {
    private static final String TAG;
    private static Handler mMainHandler;
    private static MediaLoader sInstance;
    private OnLoadStatusListener onLoadStatusListener = null;

    public interface OnLoadStatusListener {
        void onCanceled(String str);

        void onCompleted(String str);

        void onError(String str, int i11, String str2);
    }

    static {
        NativeLoader.loadPlayer();
        TAG = MediaLoader.class.getSimpleName();
        sInstance = null;
        mMainHandler = new Handler(Looper.getMainLooper());
    }

    private MediaLoader() {
    }

    public static MediaLoader getInstance() {
        if (sInstance == null) {
            synchronized (MediaLoader.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new MediaLoader();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sInstance;
    }

    public static void loadClass() {
    }

    private static native void nCancel(String str);

    private static native void nCancelAll();

    private static native void nLoad(String str, long j11);

    @NativeUsed
    private static void nOnCanceled(final String str) {
        mMainHandler.post(new Runnable() { // from class: com.aliyun.loader.MediaLoader.3
            @Override // java.lang.Runnable
            public void run() {
                if (MediaLoader.getInstance().onLoadStatusListener != null) {
                    MediaLoader.getInstance().onLoadStatusListener.onCanceled(str);
                }
            }
        });
    }

    @NativeUsed
    private static void nOnCompleted(final String str) {
        mMainHandler.post(new Runnable() { // from class: com.aliyun.loader.MediaLoader.2
            @Override // java.lang.Runnable
            public void run() {
                if (MediaLoader.getInstance().onLoadStatusListener != null) {
                    MediaLoader.getInstance().onLoadStatusListener.onCompleted(str);
                }
            }
        });
    }

    @NativeUsed
    private static void nOnError(final String str, final int i11, final String str2) {
        mMainHandler.post(new Runnable() { // from class: com.aliyun.loader.MediaLoader.1
            @Override // java.lang.Runnable
            public void run() {
                if (MediaLoader.getInstance().onLoadStatusListener != null) {
                    MediaLoader.getInstance().onLoadStatusListener.onError(str, i11, str2);
                }
            }
        });
    }

    private static native void nPause(boolean z10, String str);

    public void cancel(String str) {
        if (TextUtils.isEmpty(str)) {
            nCancelAll();
        } else {
            nCancel(str);
        }
    }

    public void load(String str, long j11) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        nLoad(str, j11);
    }

    public void pause(String str) {
        nPause(true, str);
    }

    public void resume(String str) {
        nPause(false, str);
    }

    public void setOnLoadStatusListener(OnLoadStatusListener onLoadStatusListener) {
        this.onLoadStatusListener = onLoadStatusListener;
    }
}
