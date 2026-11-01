package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b3\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u00105\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u00107\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0092\u0001\u0010;\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010<J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010@HÖ\u0003J\t\u0010A\u001a\u00020\u0003HÖ\u0001J\t\u0010B\u001a\u00020\u0005HÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u001b\u0010\u0013\"\u0004\b\u001c\u0010\u0015R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\"\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u001f\u0010\u0013\"\u0004\b \u0010\u0015R\"\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010%\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010\u0015R \u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0018\"\u0004\b)\u0010\u001aR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0018\"\u0004\b+\u0010\u001aR\"\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b,\u0010\u0013\"\u0004\b-\u0010\u0015R \u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0018\"\u0004\b/\u0010\u001a¨\u0006C"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/PreVideoAddress;", "Ljava/io/Serializable;", "bitrate", "", "definition", "", "duration", LauncherMiniAppConfigHelper.KEY_FPS, "height", "size", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "url", "videoId", "width", "resolution", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getBitrate", "()Ljava/lang/Integer;", "setBitrate", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDefinition", "()Ljava/lang/String;", "setDefinition", "(Ljava/lang/String;)V", "getDuration", "setDuration", "getFps", "setFps", "getHeight", "setHeight", "getSize", "()Ljava/lang/Long;", "setSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getType", "setType", "getUrl", "setUrl", "getVideoId", "setVideoId", "getWidth", "setWidth", "getResolution", "setResolution", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/bean/PreVideoAddress;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PreVideoAddress implements Serializable {

    @SerializedName("bitrate")
    private Integer bitrate;

    @SerializedName("definition")
    private String definition;

    @SerializedName("duration")
    private Integer duration;

    @SerializedName(LauncherMiniAppConfigHelper.KEY_FPS)
    private Integer fps;

    @SerializedName("height")
    private Integer height;

    @SerializedName("resolution")
    private String resolution;

    @SerializedName("size")
    private Long size;

    @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
    private Integer type;

    @SerializedName("url")
    private String url;

    @SerializedName("videoId")
    private String videoId;

    @SerializedName("width")
    private Integer width;

    public PreVideoAddress(Integer num, String str, Integer num2, Integer num3, Integer num4, Long l11, Integer num5, String str2, String str3, Integer num6, String str4) {
        this.bitrate = num;
        this.definition = str;
        this.duration = num2;
        this.fps = num3;
        this.height = num4;
        this.size = l11;
        this.type = num5;
        this.url = str2;
        this.videoId = str3;
        this.width = num6;
        this.resolution = str4;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getBitrate() {
        return this.bitrate;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getResolution() {
        return this.resolution;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDefinition() {
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
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getVideoId() {
        return this.videoId;
    }

    public final PreVideoAddress copy(Integer bitrate, String definition, Integer duration, Integer fps, Integer height, Long size, Integer type, String url, String videoId, Integer width, String resolution) {
        return new PreVideoAddress(bitrate, definition, duration, fps, height, size, type, url, videoId, width, resolution);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreVideoAddress)) {
            return false;
        }
        PreVideoAddress preVideoAddress = (PreVideoAddress) other;
        return Intrinsics.c(this.bitrate, preVideoAddress.bitrate) && Intrinsics.c(this.definition, preVideoAddress.definition) && Intrinsics.c(this.duration, preVideoAddress.duration) && Intrinsics.c(this.fps, preVideoAddress.fps) && Intrinsics.c(this.height, preVideoAddress.height) && Intrinsics.c(this.size, preVideoAddress.size) && Intrinsics.c(this.type, preVideoAddress.type) && Intrinsics.c(this.url, preVideoAddress.url) && Intrinsics.c(this.videoId, preVideoAddress.videoId) && Intrinsics.c(this.width, preVideoAddress.width) && Intrinsics.c(this.resolution, preVideoAddress.resolution);
    }

    public final Integer getBitrate() {
        return this.bitrate;
    }

    public final String getDefinition() {
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

    public final Long getSize() {
        return this.size;
    }

    public final Integer getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.bitrate;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.definition;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.duration;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.fps;
        int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.height;
        int iHashCode5 = (iHashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Long l11 = this.size;
        int iHashCode6 = (iHashCode5 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Integer num5 = this.type;
        int iHashCode7 = (iHashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str2 = this.url;
        int iHashCode8 = (iHashCode7 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.videoId;
        int iHashCode9 = (iHashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num6 = this.width;
        int iHashCode10 = (iHashCode9 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str4 = this.resolution;
        return iHashCode10 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setBitrate(Integer num) {
        this.bitrate = num;
    }

    public final void setDefinition(String str) {
        this.definition = str;
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

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setVideoId(String str) {
        this.videoId = str;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public String toString() {
        return "PreVideoAddress(bitrate=" + this.bitrate + ", definition=" + this.definition + ", duration=" + this.duration + ", fps=" + this.fps + ", height=" + this.height + ", size=" + this.size + ", type=" + this.type + ", url=" + this.url + ", videoId=" + this.videoId + ", width=" + this.width + ", resolution=" + this.resolution + ")";
    }
}
