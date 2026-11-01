package com.transsion.tinker.lib.custom.adapter;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public final class BffHotUpdateInfo {

    @SerializedName("abiFilter")
    public String abiFilter;

    @SerializedName("bundleMd5")
    public String bundleMd5;

    @SerializedName("bundleUrl")
    public String bundleUrl;

    @SerializedName(TrackingKey.DESCRIPTION)
    public String description;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @SerializedName("id")
    public String f55074id;

    @SerializedName("patchSize")
    public long patchSize;

    @SerializedName("targetVersionCode")
    public long targetVersionCode;

    @SerializedName("tinkerId")
    public String tinkerId;
}
