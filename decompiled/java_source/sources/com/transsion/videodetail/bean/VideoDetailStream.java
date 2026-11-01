package com.transsion.videodetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J_\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0010\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006+"}, d2 = {"Lcom/transsion/videodetail/bean/VideoDetailStream;", "Ljava/io/Serializable;", "format", "", "id", "url", "resolutions", "size", "duration", "signCookie", "extCaptions", "", "Lcom/transsion/videodetail/bean/ExtCaption;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getFormat", "()Ljava/lang/String;", "getId", "getUrl", "setUrl", "(Ljava/lang/String;)V", "getResolutions", "getSize", "getDuration", "getSignCookie", "getExtCaptions", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VideoDetailStream implements Serializable {
    private final String duration;
    private final List<ExtCaption> extCaptions;
    private final String format;
    private final String id;
    private final String resolutions;
    private final String signCookie;
    private final String size;
    private String url;

    public VideoDetailStream(String format, String id2, String url, String resolutions, String size, String duration, String signCookie, List<ExtCaption> extCaptions) {
        Intrinsics.h(format, "format");
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(resolutions, "resolutions");
        Intrinsics.h(size, "size");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(signCookie, "signCookie");
        Intrinsics.h(extCaptions, "extCaptions");
        this.format = format;
        this.id = id2;
        this.url = url;
        this.resolutions = resolutions;
        this.size = size;
        this.duration = duration;
        this.signCookie = signCookie;
        this.extCaptions = extCaptions;
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
    public final String getSignCookie() {
        return this.signCookie;
    }

    public final List<ExtCaption> component8() {
        return this.extCaptions;
    }

    public final VideoDetailStream copy(String format, String id2, String url, String resolutions, String size, String duration, String signCookie, List<ExtCaption> extCaptions) {
        Intrinsics.h(format, "format");
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(resolutions, "resolutions");
        Intrinsics.h(size, "size");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(signCookie, "signCookie");
        Intrinsics.h(extCaptions, "extCaptions");
        return new VideoDetailStream(format, id2, url, resolutions, size, duration, signCookie, extCaptions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoDetailStream)) {
            return false;
        }
        VideoDetailStream videoDetailStream = (VideoDetailStream) other;
        return Intrinsics.c(this.format, videoDetailStream.format) && Intrinsics.c(this.id, videoDetailStream.id) && Intrinsics.c(this.url, videoDetailStream.url) && Intrinsics.c(this.resolutions, videoDetailStream.resolutions) && Intrinsics.c(this.size, videoDetailStream.size) && Intrinsics.c(this.duration, videoDetailStream.duration) && Intrinsics.c(this.signCookie, videoDetailStream.signCookie) && Intrinsics.c(this.extCaptions, videoDetailStream.extCaptions);
    }

    public final String getDuration() {
        return this.duration;
    }

    public final List<ExtCaption> getExtCaptions() {
        return this.extCaptions;
    }

    public final String getFormat() {
        return this.format;
    }

    public final String getId() {
        return this.id;
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
        return (((((((((((((this.format.hashCode() * 31) + this.id.hashCode()) * 31) + this.url.hashCode()) * 31) + this.resolutions.hashCode()) * 31) + this.size.hashCode()) * 31) + this.duration.hashCode()) * 31) + this.signCookie.hashCode()) * 31) + this.extCaptions.hashCode();
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public String toString() {
        return "VideoDetailStream(format=" + this.format + ", id=" + this.id + ", url=" + this.url + ", resolutions=" + this.resolutions + ", size=" + this.size + ", duration=" + this.duration + ", signCookie=" + this.signCookie + ", extCaptions=" + this.extCaptions + ")";
    }
}
