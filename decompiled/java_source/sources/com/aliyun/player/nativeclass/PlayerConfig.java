package com.aliyun.player.nativeclass;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

/* JADX INFO: loaded from: classes2.dex */
public class PlayerConfig {
    public String mHttpProxy = "";
    public String mReferrer = "";
    public int mNetworkTimeout = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
    public int mMaxDelayTime = 5000;
    public int mMaxBufferDuration = DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;
    public int mHighBufferDuration = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
    public int mStartBufferDuration = 500;
    public int mMaxProbeSize = -1;
    public boolean mClearFrameWhenStop = false;
    public boolean mEnableVideoTunnelRender = false;
    public boolean mEnableVideoBufferRender = false;
    public boolean mEnableSEI = false;
    public String mUserAgent = "";
    public int mNetworkRetryCount = 2;
    public int mLiveStartIndex = -3;
    public boolean mDisableAudio = false;
    public boolean mDisableVideo = false;
    public int mPositionTimerIntervalMs = 500;
    public long mMaxBackwardBufferDurationMs = 0;
    public boolean mPreferAudio = false;
    public boolean mEnableLocalCache = false;
    public int mEnableHttpDns = -1;
    private String[] mCustomHeaders = null;

    private PlayerConfig() {
    }

    public String[] getCustomHeaders() {
        return this.mCustomHeaders;
    }

    public void setCustomHeaders(String[] strArr) {
        this.mCustomHeaders = strArr;
    }
}
