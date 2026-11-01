package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b'\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010,\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010.\u001a\u0004\u0018\u00010\nHÆ\u0003Jz\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u00100J\u0013\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000104HÖ\u0003J\t\u00105\u001a\u00020\u0003HÖ\u0001J\t\u00106\u001a\u00020\nHÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0016\u0010\u0010\"\u0004\b\u0017\u0010\u0012R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0018\u0010\u0010\"\u0004\b\u0019\u0010\u0012R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\"\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u001c\u0010\u0010\"\u0004\b\u001d\u0010\u0012R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\"\u0010\u0010\"\u0004\b#\u0010\u0012R \u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!¨\u00067"}, d2 = {"Lcom/transsion/shorttv/bean/Video;", "Ljava/io/Serializable;", "bitrate", "", "definition", "duration", LauncherMiniAppConfigHelper.KEY_FPS, "height", "size", "url", "", "width", "resolution", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getBitrate", "()Ljava/lang/Integer;", "setBitrate", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDefinition", "setDefinition", "getDuration", "setDuration", "getFps", "setFps", "getHeight", "setHeight", "getSize", "setSize", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getWidth", "setWidth", "getResolution", "setResolution", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/shorttv/bean/Video;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Video implements Serializable {

    @SerializedName("bitrate")
    private Integer bitrate;

    @SerializedName("definition")
    private Integer definition;

    @SerializedName("duration")
    private Integer duration;

    @SerializedName(LauncherMiniAppConfigHelper.KEY_FPS)
    private Integer fps;

    @SerializedName("height")
    private Integer height;

    @SerializedName("resolution")
    private String resolution;

    @SerializedName("size")
    private Integer size;

    @SerializedName("url")
    private String url;

    @SerializedName("width")
    private Integer width;

    public Video(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, String str, Integer num7, String str2) {
        this.bitrate = num;
        this.definition = num2;
        this.duration = num3;
        this.fps = num4;
        this.height = num5;
        this.size = num6;
        this.url = str;
        this.width = num7;
        this.resolution = str2;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getBitrate() {
        return this.bitrate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getDefinition() {
        return this.definition;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getFps() {
        return this.fps;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getResolution() {
        return this.resolution;
    }

    public final Video copy(Integer bitrate, Integer definition, Integer duration, Integer fps, Integer height, Integer size, String url, Integer width, String resolution) {
        return new Video(bitrate, definition, duration, fps, height, size, url, width, resolution);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Video)) {
            return false;
        }
        Video video = (Video) other;
        return Intrinsics.c(this.bitrate, video.bitrate) && Intrinsics.c(this.definition, video.definition) && Intrinsics.c(this.duration, video.duration) && Intrinsics.c(this.fps, video.fps) && Intrinsics.c(this.height, video.height) && Intrinsics.c(this.size, video.size) && Intrinsics.c(this.url, video.url) && Intrinsics.c(this.width, video.width) && Intrinsics.c(this.resolution, video.resolution);
    }

    public final Integer getBitrate() {
        return this.bitrate;
    }

    public final Integer getDefinition() {
        return this.definition;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final Integer getFps() {
        return this.fps;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final String getResolution() {
        return this.resolution;
    }

    public final Integer getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.bitrate;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.definition;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.duration;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.fps;
        int iHashCode4 = (iHashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.height;
        int iHashCode5 = (iHashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.size;
        int iHashCode6 = (iHashCode5 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str = this.url;
        int iHashCode7 = (iHashCode6 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num7 = this.width;
        int iHashCode8 = (iHashCode7 + (num7 == null ? 0 : num7.hashCode())) * 31;
        String str2 = this.resolution;
        return iHashCode8 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setBitrate(Integer num) {
        this.bitrate = num;
    }

    public final void setDefinition(Integer num) {
        this.definition = num;
    }

    public final void setDuration(Integer num) {
        this.duration = num;
    }

    public final void setFps(Integer num) {
        this.fps = num;
    }

    public final void setHeight(Integer num) {
        this.height = num;
    }

    public final void setResolution(String str) {
        this.resolution = str;
    }

    public final void setSize(Integer num) {
        this.size = num;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public String toString() {
        return "Video(bitrate=" + this.bitrate + ", definition=" + this.definition + ", duration=" + this.duration + ", fps=" + this.fps + ", height=" + this.height + ", size=" + this.size + ", url=" + this.url + ", width=" + this.width + ", resolution=" + this.resolution + ")";
    }
}
