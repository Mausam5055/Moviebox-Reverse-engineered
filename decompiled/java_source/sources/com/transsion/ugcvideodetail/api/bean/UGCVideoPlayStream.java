package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003Jc\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010)\u001a\u00020\u001d2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000fR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R\u0011\u0010\u001c\u001a\u00020\u001d8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001e¨\u0006/"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;", "Ljava/io/Serializable;", "format", "", "id", "url", "resolutions", "size", "duration", "codecName", "signCookie", "idType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFormat", "()Ljava/lang/String;", "setFormat", "(Ljava/lang/String;)V", "getId", "getUrl", "setUrl", "getResolutions", "getSize", "getDuration", "getCodecName", "getSignCookie", "getIdType", "setIdType", "isOnline", "", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoPlayStream implements Serializable {
    private final String codecName;
    private final String duration;
    private String format;
    private final String id;
    private String idType;
    private final String resolutions;
    private final String signCookie;
    private final String size;
    private String url;

    public UGCVideoPlayStream(String format, String id2, String url, String resolutions, String size, String duration, String codecName, String signCookie, String idType) {
        Intrinsics.h(format, "format");
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(resolutions, "resolutions");
        Intrinsics.h(size, "size");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(codecName, "codecName");
        Intrinsics.h(signCookie, "signCookie");
        Intrinsics.h(idType, "idType");
        this.format = format;
        this.id = id2;
        this.url = url;
        this.resolutions = resolutions;
        this.size = size;
        this.duration = duration;
        this.codecName = codecName;
        this.signCookie = signCookie;
        this.idType = idType;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFormat() {
        return this.format;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getResolutions() {
        return this.resolutions;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCodecName() {
        return this.codecName;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getSignCookie() {
        return this.signCookie;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getIdType() {
        return this.idType;
    }

    public final UGCVideoPlayStream copy(String format, String id2, String url, String resolutions, String size, String duration, String codecName, String signCookie, String idType) {
        Intrinsics.h(format, "format");
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(resolutions, "resolutions");
        Intrinsics.h(size, "size");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(codecName, "codecName");
        Intrinsics.h(signCookie, "signCookie");
        Intrinsics.h(idType, "idType");
        return new UGCVideoPlayStream(format, id2, url, resolutions, size, duration, codecName, signCookie, idType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoPlayStream)) {
            return false;
        }
        UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) other;
        return Intrinsics.c(this.format, uGCVideoPlayStream.format) && Intrinsics.c(this.id, uGCVideoPlayStream.id) && Intrinsics.c(this.url, uGCVideoPlayStream.url) && Intrinsics.c(this.resolutions, uGCVideoPlayStream.resolutions) && Intrinsics.c(this.size, uGCVideoPlayStream.size) && Intrinsics.c(this.duration, uGCVideoPlayStream.duration) && Intrinsics.c(this.codecName, uGCVideoPlayStream.codecName) && Intrinsics.c(this.signCookie, uGCVideoPlayStream.signCookie) && Intrinsics.c(this.idType, uGCVideoPlayStream.idType);
    }

    public final String getCodecName() {
        return this.codecName;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getFormat() {
        return this.format;
    }

    public final String getId() {
        return this.id;
    }

    public final String getIdType() {
        return this.idType;
    }

    public final String getResolutions() {
        return this.resolutions;
    }

    public final String getSignCookie() {
        return this.signCookie;
    }

    public final String getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((((((((((((this.format.hashCode() * 31) + this.id.hashCode()) * 31) + this.url.hashCode()) * 31) + this.resolutions.hashCode()) * 31) + this.size.hashCode()) * 31) + this.duration.hashCode()) * 31) + this.codecName.hashCode()) * 31) + this.signCookie.hashCode()) * 31) + this.idType.hashCode();
    }

    public final boolean isOnline() {
        return StringsKt.W(this.url, "http", false, 2, null);
    }

    public final void setFormat(String str) {
        Intrinsics.h(str, "<set-?>");
        this.format = str;
    }

    public final void setIdType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.idType = str;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public String toString() {
        return "UGCVideoPlayStream(format=" + this.format + ", id=" + this.id + ", url=" + this.url + ", resolutions=" + this.resolutions + ", size=" + this.size + ", duration=" + this.duration + ", codecName=" + this.codecName + ", signCookie=" + this.signCookie + ", idType=" + this.idType + ")";
    }
}
