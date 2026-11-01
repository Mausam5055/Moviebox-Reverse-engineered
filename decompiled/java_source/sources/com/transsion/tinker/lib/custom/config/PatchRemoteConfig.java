package com.transsion.tinker.lib.custom.config;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.meituan.android.walle.ChannelReader;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public final class PatchRemoteConfig {

    @SerializedName(ChannelReader.CHANNEL_KEY)
    public String channel;

    @SerializedName("downloadPolicy")
    public String downloadPolicy;

    @SerializedName("enabled")
    public Boolean enabled;

    @SerializedName("expiresAt")
    public Long expiresAt;

    @SerializedName("mandatory")
    public Boolean mandatory;

    @SerializedName("md5")
    public String md5;

    @SerializedName("patchId")
    public String patchId;

    @SerializedName("size")
    public Long size;

    @SerializedName("tinkerId")
    public String tinkerId;

    @SerializedName("url")
    public String url;

    @SerializedName("versionCodeMax")
    public Integer versionCodeMax;

    @SerializedName("versionCodeMin")
    public Integer versionCodeMin;
}
