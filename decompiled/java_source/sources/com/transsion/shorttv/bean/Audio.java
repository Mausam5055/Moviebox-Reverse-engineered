package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J>\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\t\u0010&\u001a\u00020\bHÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006'"}, d2 = {"Lcom/transsion/shorttv/bean/Audio;", "Ljava/io/Serializable;", "bitrate", "", "duration", "", "size", "url", "", "<init>", "(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V", "getBitrate", "()Ljava/lang/Integer;", "setBitrate", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDuration", "()Ljava/lang/Long;", "setDuration", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getSize", "setSize", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/shorttv/bean/Audio;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Audio implements Serializable {

    @SerializedName("bitrate")
    private Integer bitrate;

    @SerializedName("duration")
    private Long duration;

    @SerializedName("size")
    private Integer size;

    @SerializedName("url")
    private String url;

    public Audio(Integer num, Long l11, Integer num2, String str) {
        this.bitrate = num;
        this.duration = l11;
        this.size = num2;
        this.url = str;
    }

    public static /* synthetic */ Audio copy$default(Audio audio, Integer num, Long l11, Integer num2, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = audio.bitrate;
        }
        if ((i11 & 2) != 0) {
            l11 = audio.duration;
        }
        if ((i11 & 4) != 0) {
            num2 = audio.size;
        }
        if ((i11 & 8) != 0) {
            str = audio.url;
        }
        return audio.copy(num, l11, num2, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getBitrate() {
        return this.bitrate;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    public final Audio copy(Integer bitrate, Long duration, Integer size, String url) {
        return new Audio(bitrate, duration, size, url);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Audio)) {
            return false;
        }
        Audio audio = (Audio) other;
        return Intrinsics.c(this.bitrate, audio.bitrate) && Intrinsics.c(this.duration, audio.duration) && Intrinsics.c(this.size, audio.size) && Intrinsics.c(this.url, audio.url);
    }

    public final Integer getBitrate() {
        return this.bitrate;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Integer getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        Integer num = this.bitrate;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Long l11 = this.duration;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        Integer num2 = this.size;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.url;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final void setBitrate(Integer num) {
        this.bitrate = num;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setSize(Integer num) {
        this.size = num;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "Audio(bitrate=" + this.bitrate + ", duration=" + this.duration + ", size=" + this.size + ", url=" + this.url + ")";
    }
}
