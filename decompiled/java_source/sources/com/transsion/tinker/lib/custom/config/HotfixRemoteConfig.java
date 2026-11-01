package com.transsion.tinker.lib.custom.config;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public final class HotfixRemoteConfig {

    @SerializedName("crashThreshold")
    public Integer crashThreshold;

    @SerializedName("crashWindowMs")
    public Long crashWindowMs;

    @SerializedName("defaultMaxRetry")
    public Integer defaultMaxRetry;

    @SerializedName("defaultRetryDelayMs")
    public Long defaultRetryDelayMs;

    @SerializedName("enabled")
    public Boolean enabled;

    @SerializedName("httpConnectTimeoutMs")
    public Integer httpConnectTimeoutMs;

    @SerializedName("httpReadTimeoutMs")
    public Integer httpReadTimeoutMs;

    @SerializedName("logEnabled")
    public Boolean logEnabled;

    @SerializedName("logFileMaxSizeBytes")
    public Long logFileMaxSizeBytes;

    @SerializedName("logFileName")
    public String logFileName;

    @SerializedName("maxPatchSizeBytes")
    public Long maxPatchSizeBytes;

    @SerializedName("maxRetryDelayMs")
    public Long maxRetryDelayMs;

    @SerializedName("patchCacheDir")
    public String patchCacheDir;

    @SerializedName("watchdogTimeoutMs")
    public Long watchdogTimeoutMs;

    @SerializedName("workManagerBackoffMs")
    public Long workManagerBackoffMs;
}
