package com.transsion.usercenter.message.bean;

import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/transsion/usercenter/message/bean/MessageVideoEntity;", "Ljava/io/Serializable;", "<init>", "()V", "videoId", "", "getVideoId", "()Ljava/lang/String;", "setVideoId", "(Ljava/lang/String;)V", "pictureUrl", "getPictureUrl", "setPictureUrl", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MessageVideoEntity implements Serializable {

    @SerializedName("picture_url")
    private String pictureUrl;

    @SerializedName("video_id")
    private String videoId;

    public final String getPictureUrl() {
        return this.pictureUrl;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final void setPictureUrl(String str) {
        this.pictureUrl = str;
    }

    public final void setVideoId(String str) {
        this.videoId = str;
    }
}
