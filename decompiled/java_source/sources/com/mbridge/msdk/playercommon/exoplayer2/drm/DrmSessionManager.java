package com.mbridge.msdk.playercommon.exoplayer2.drm;

import android.annotation.TargetApi;
import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.drm.ExoMediaCrypto;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(16)
public interface DrmSessionManager<T extends ExoMediaCrypto> {
    DrmSession<T> acquireSession(Looper looper, DrmInitData drmInitData);

    boolean canAcquireSession(DrmInitData drmInitData);

    void releaseSession(DrmSession<T> drmSession);
}
