package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/transsion/moviedetailapi/bean/GifBean;", "Ljava/io/Serializable;", "firstFrameUrl", "", "videoUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getFirstFrameUrl", "()Ljava/lang/String;", "setFirstFrameUrl", "(Ljava/lang/String;)V", "getVideoUrl", "setVideoUrl", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GifBean implements Serializable {

    @SerializedName("firstFrameUrl")
    private String firstFrameUrl;

    @SerializedName("videoUrl")
    private String videoUrl;

    public GifBean(String str, String str2) {
        this.firstFrameUrl = str;
        this.videoUrl = str2;
    }

    public static /* synthetic */ GifBean copy$default(GifBean gifBean, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = gifBean.firstFrameUrl;
        }
        if ((i11 & 2) != 0) {
            str2 = gifBean.videoUrl;
        }
        return gifBean.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFirstFrameUrl() {
        return this.firstFrameUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final GifBean copy(String firstFrameUrl, String videoUrl) {
        return new GifBean(firstFrameUrl, videoUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GifBean)) {
            return false;
        }
        GifBean gifBean = (GifBean) other;
        return Intrinsics.c(this.firstFrameUrl, gifBean.firstFrameUrl) && Intrinsics.c(this.videoUrl, gifBean.videoUrl);
    }

    public final String getFirstFrameUrl() {
        return this.firstFrameUrl;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        String str = this.firstFrameUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.videoUrl;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setFirstFrameUrl(String str) {
        this.firstFrameUrl = str;
    }

    public final void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public String toString() {
        return "GifBean(firstFrameUrl=" + this.firstFrameUrl + ", videoUrl=" + this.videoUrl + ")";
    }
}
