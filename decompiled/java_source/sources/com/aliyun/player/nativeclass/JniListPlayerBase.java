package com.aliyun.player.nativeclass;

import android.content.Context;
import com.aliyun.utils.NativeLoader;

/* JADX INFO: loaded from: classes2.dex */
public class JniListPlayerBase {
    private long mNativeContext = 0;

    static {
        NativeLoader.loadPlayer();
    }

    public JniListPlayerBase(Context context, long j11) {
        nConstruct(j11);
    }

    public static void loadClass() {
    }

    public void clear() {
        nClear();
    }

    public String getCurrentUid() {
        return nGetCurrentUid();
    }

    public int getMaxPreloadMemorySizeMB() {
        return nGetMaxPreloadMemorySizeMB();
    }

    protected long getNativeListContext() {
        return this.mNativeContext;
    }

    native void nClear();

    native void nConstruct(long j11);

    native String nGetCurrentUid();

    native int nGetMaxPreloadMemorySizeMB();

    native void nRelease();

    native void nRemoveSource(String str);

    native void nSetMaxPreloadMemorySizeMB(int i11);

    native void nSetPreloadCount(int i11);

    native void nStop();

    public void release() {
        nRelease();
    }

    public void removeSource(String str) {
        nRemoveSource(str);
    }

    public void setMaxPreloadMemorySizeMB(int i11) {
        nSetMaxPreloadMemorySizeMB(i11);
    }

    protected void setNativeListContext(long j11) {
        this.mNativeContext = j11;
    }

    public void setPreloadCount(int i11) {
        nSetPreloadCount(i11);
    }

    public void stop() {
        nStop();
    }
}
