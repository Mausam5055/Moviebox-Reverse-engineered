package com.transsion.moviedetailapi.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/transsion/moviedetailapi/bean/PlayUrl;", "Ljava/io/Serializable;", "playUrl", "", "urlType", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPlayUrl", "()Ljava/lang/String;", "getUrlType", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlayUrl implements Serializable {
    private final String playUrl;
    private final String urlType;

    public PlayUrl(String playUrl, String urlType) {
        Intrinsics.h(playUrl, "playUrl");
        Intrinsics.h(urlType, "urlType");
        this.playUrl = playUrl;
        this.urlType = urlType;
    }

    public static /* synthetic */ PlayUrl copy$default(PlayUrl playUrl, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = playUrl.playUrl;
        }
        if ((i11 & 2) != 0) {
            str2 = playUrl.urlType;
        }
        return playUrl.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPlayUrl() {
        return this.playUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrlType() {
        return this.urlType;
    }

    public final PlayUrl copy(String playUrl, String urlType) {
        Intrinsics.h(playUrl, "playUrl");
        Intrinsics.h(urlType, "urlType");
        return new PlayUrl(playUrl, urlType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayUrl)) {
            return false;
        }
        PlayUrl playUrl = (PlayUrl) other;
        return Intrinsics.c(this.playUrl, playUrl.playUrl) && Intrinsics.c(this.urlType, playUrl.urlType);
    }

    public final String getPlayUrl() {
        return this.playUrl;
    }

    public final String getUrlType() {
        return this.urlType;
    }

    public int hashCode() {
        return (this.playUrl.hashCode() * 31) + this.urlType.hashCode();
    }

    public String toString() {
        return "PlayUrl(playUrl=" + this.playUrl + ", urlType=" + this.urlType + ")";
    }
}
