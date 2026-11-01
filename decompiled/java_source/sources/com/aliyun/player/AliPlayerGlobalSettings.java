package com.aliyun.player;

import com.aliyun.utils.NativeLoader;
import com.cicada.player.utils.NativeUsed;

/* JADX INFO: loaded from: classes2.dex */
public class AliPlayerGlobalSettings {
    private static OnGetUrlHashCallback sOnGetUrlHashCallback;

    public interface OnGetUrlHashCallback {
        String getUrlHashCallback(String str);
    }

    public enum StreamType {
        STREAM_VOICE_CALL,
        STREAM_SYSTEM,
        STREAM_RING,
        STREAM_MUSIC,
        STREAM_ALARM,
        STREAM_NOTIFICATION
    }

    static {
        NativeLoader.loadPlayer();
        sOnGetUrlHashCallback = null;
    }

    public static void clearCaches() {
        nClearCaches();
    }

    public static void enableHttpDns(boolean z10) {
        nEnableHttpDns(z10);
    }

    public static void enableLocalCache(boolean z10, int i11, String str) {
        nEnableLocalCache(z10, i11, str);
    }

    public static void enableNetworkBalance(boolean z10) {
        nEnableNetworkBalance(z10);
    }

    public static void forceAudioRendingFormat(boolean z10, String str, int i11, int i12) {
        nForceAudioRendingFormat(z10, str, i11, i12);
    }

    public static void loadClass() {
    }

    private static native void nClearCaches();

    private static native void nEnableHttpDns(boolean z10);

    private static native void nEnableLocalCache(boolean z10, int i11, String str);

    private static native void nEnableNetworkBalance(boolean z10);

    private static native void nForceAudioRendingFormat(boolean z10, String str, int i11, int i12);

    @NativeUsed
    private static synchronized String nOnGetUrlHashCallback(String str) {
        OnGetUrlHashCallback onGetUrlHashCallback = sOnGetUrlHashCallback;
        if (onGetUrlHashCallback == null) {
            return null;
        }
        return onGetUrlHashCallback.getUrlHashCallback(str);
    }

    private static native void nSetAudioStreamType(int i11);

    private static native void nSetCacheFileClearConfig(long j11, long j12, long j13);

    private static native void nSetCacheUrlHashCallback(boolean z10);

    private static native void nSetDNSResolve(String str, String str2);

    private static native void nSetIPResolveType(int i11);

    private static native void nSetUseHttp2(boolean z10);

    public static void setAudioStreamType(StreamType streamType) {
        nSetAudioStreamType(streamType.ordinal());
    }

    public static void setCacheFileClearConfig(long j11, long j12, long j13) {
        nSetCacheFileClearConfig(j11, j12, j13);
    }

    public static synchronized void setCacheUrlHashCallback(OnGetUrlHashCallback onGetUrlHashCallback) {
        sOnGetUrlHashCallback = onGetUrlHashCallback;
        nSetCacheUrlHashCallback(onGetUrlHashCallback != null);
    }

    public static void setDNSResolve(String str, String str2) {
        nSetDNSResolve(str, str2);
    }

    public static void setIPResolveType(IPlayer.IPResolveType iPResolveType) {
        nSetIPResolveType(iPResolveType.ordinal());
    }

    public static void setUseHttp2(boolean z10) {
        nSetUseHttp2(z10);
    }
}
