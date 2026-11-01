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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003JV\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\u0005HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR\"\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0019\u0010\u0011\"\u0004\b\u001a\u0010\u0013R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000f¨\u0006+"}, d2 = {"Lcom/transsion/moviedetailapi/bean/FirstFrame;", "Ljava/io/Serializable;", "format", "", "height", "", "size", "url", "width", "thumbnail", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getFormat", "()Ljava/lang/String;", "setFormat", "(Ljava/lang/String;)V", "getHeight", "()Ljava/lang/Integer;", "setHeight", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSize", "setSize", "getUrl", "setUrl", "getWidth", "setWidth", "getThumbnail", "setThumbnail", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/FirstFrame;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FirstFrame implements Serializable {

    @SerializedName("format")
    private String format;

    @SerializedName("height")
    private Integer height;

    @SerializedName("size")
    private Integer size;
    private String thumbnail;

    @SerializedName("url")
    private String url;

    @SerializedName("width")
    private Integer width;

    public FirstFrame(String str, Integer num, Integer num2, String str2, Integer num3, String str3) {
        this.format = str;
        this.height = num;
        this.size = num2;
        this.url = str2;
        this.width = num3;
        this.thumbnail = str3;
    }

    public static /* synthetic */ FirstFrame copy$default(FirstFrame firstFrame, String str, Integer num, Integer num2, String str2, Integer num3, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = firstFrame.format;
        }
        if ((i11 & 2) != 0) {
            num = firstFrame.height;
        }
        Integer num4 = num;
        if ((i11 & 4) != 0) {
            num2 = firstFrame.size;
        }
        Integer num5 = num2;
        if ((i11 & 8) != 0) {
            str2 = firstFrame.url;
        }
        String str4 = str2;
        if ((i11 & 16) != 0) {
            num3 = firstFrame.width;
        }
        Integer num6 = num3;
        if ((i11 & 32) != 0) {
            str3 = firstFrame.thumbnail;
        }
        return firstFrame.copy(str, num4, num5, str4, num6, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFormat() {
        return this.format;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final FirstFrame copy(String format, Integer height, Integer size, String url, Integer width, String thumbnail) {
        return new FirstFrame(format, height, size, url, width, thumbnail);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FirstFrame)) {
            return false;
        }
        FirstFrame firstFrame = (FirstFrame) other;
        return Intrinsics.c(this.format, firstFrame.format) && Intrinsics.c(this.height, firstFrame.height) && Intrinsics.c(this.size, firstFrame.size) && Intrinsics.c(this.url, firstFrame.url) && Intrinsics.c(this.width, firstFrame.width) && Intrinsics.c(this.thumbnail, firstFrame.thumbnail);
    }

    public final String getFormat() {
        return this.format;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final Integer getSize() {
        return this.size;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.format;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.height;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.size;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.url;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num3 = this.width;
        int iHashCode5 = (iHashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str3 = this.thumbnail;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setFormat(String str) {
        this.format = str;
    }

    public final void setHeight(Integer num) {
        this.height = num;
    }

    public final void setSize(Integer num) {
        this.size = num;
    }

    public final void setThumbnail(String str) {
        this.thumbnail = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public String toString() {
        return "FirstFrame(format=" + this.format + ", height=" + this.height + ", size=" + this.size + ", url=" + this.url + ", width=" + this.width + ", thumbnail=" + this.thumbnail + ")";
    }
}
