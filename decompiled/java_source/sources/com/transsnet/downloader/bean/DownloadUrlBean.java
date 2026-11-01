package com.transsnet.downloader.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.DownloadItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003JG\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\nHÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006,"}, d2 = {"Lcom/transsnet/downloader/bean/DownloadUrlBean;", "Ljava/io/Serializable;", "method", "", "downloadUrl", "jsUrl", "name", "resource", "Lcom/transsion/moviedetailapi/DownloadItem;", "totalEpisode", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/DownloadItem;I)V", "getMethod", "()Ljava/lang/String;", "setMethod", "(Ljava/lang/String;)V", "getDownloadUrl", "setDownloadUrl", "getJsUrl", "setJsUrl", "getName", "setName", "getResource", "()Lcom/transsion/moviedetailapi/DownloadItem;", "setResource", "(Lcom/transsion/moviedetailapi/DownloadItem;)V", "getTotalEpisode", "()I", "setTotalEpisode", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownloadUrlBean implements Serializable {
    private String downloadUrl;
    private String jsUrl;
    private String method;
    private String name;
    private DownloadItem resource;
    private int totalEpisode;

    public DownloadUrlBean(String method, String downloadUrl, String jsUrl, String name, DownloadItem downloadItem, int i11) {
        Intrinsics.h(method, "method");
        Intrinsics.h(downloadUrl, "downloadUrl");
        Intrinsics.h(jsUrl, "jsUrl");
        Intrinsics.h(name, "name");
        this.method = method;
        this.downloadUrl = downloadUrl;
        this.jsUrl = jsUrl;
        this.name = name;
        this.resource = downloadItem;
        this.totalEpisode = i11;
    }

    public /* synthetic */ DownloadUrlBean(String str, String str2, String str3, String str4, DownloadItem downloadItem, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, downloadItem, (i12 & 32) != 0 ? 1 : i11);
    }

    public static /* synthetic */ DownloadUrlBean copy$default(DownloadUrlBean downloadUrlBean, String str, String str2, String str3, String str4, DownloadItem downloadItem, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = downloadUrlBean.method;
        }
        if ((i12 & 2) != 0) {
            str2 = downloadUrlBean.downloadUrl;
        }
        String str5 = str2;
        if ((i12 & 4) != 0) {
            str3 = downloadUrlBean.jsUrl;
        }
        String str6 = str3;
        if ((i12 & 8) != 0) {
            str4 = downloadUrlBean.name;
        }
        String str7 = str4;
        if ((i12 & 16) != 0) {
            downloadItem = downloadUrlBean.resource;
        }
        DownloadItem downloadItem2 = downloadItem;
        if ((i12 & 32) != 0) {
            i11 = downloadUrlBean.totalEpisode;
        }
        return downloadUrlBean.copy(str, str5, str6, str7, downloadItem2, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMethod() {
        return this.method;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getJsUrl() {
        return this.jsUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final DownloadItem getResource() {
        return this.resource;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getTotalEpisode() {
        return this.totalEpisode;
    }

    public final DownloadUrlBean copy(String method, String downloadUrl, String jsUrl, String name, DownloadItem resource, int totalEpisode) {
        Intrinsics.h(method, "method");
        Intrinsics.h(downloadUrl, "downloadUrl");
        Intrinsics.h(jsUrl, "jsUrl");
        Intrinsics.h(name, "name");
        return new DownloadUrlBean(method, downloadUrl, jsUrl, name, resource, totalEpisode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadUrlBean)) {
            return false;
        }
        DownloadUrlBean downloadUrlBean = (DownloadUrlBean) other;
        return Intrinsics.c(this.method, downloadUrlBean.method) && Intrinsics.c(this.downloadUrl, downloadUrlBean.downloadUrl) && Intrinsics.c(this.jsUrl, downloadUrlBean.jsUrl) && Intrinsics.c(this.name, downloadUrlBean.name) && Intrinsics.c(this.resource, downloadUrlBean.resource) && this.totalEpisode == downloadUrlBean.totalEpisode;
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final String getJsUrl() {
        return this.jsUrl;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getName() {
        return this.name;
    }

    public final DownloadItem getResource() {
        return this.resource;
    }

    public final int getTotalEpisode() {
        return this.totalEpisode;
    }

    public int hashCode() {
        int iHashCode = ((((((this.method.hashCode() * 31) + this.downloadUrl.hashCode()) * 31) + this.jsUrl.hashCode()) * 31) + this.name.hashCode()) * 31;
        DownloadItem downloadItem = this.resource;
        return ((iHashCode + (downloadItem == null ? 0 : downloadItem.hashCode())) * 31) + this.totalEpisode;
    }

    public final void setDownloadUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.downloadUrl = str;
    }

    public final void setJsUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.jsUrl = str;
    }

    public final void setMethod(String str) {
        Intrinsics.h(str, "<set-?>");
        this.method = str;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public final void setResource(DownloadItem downloadItem) {
        this.resource = downloadItem;
    }

    public final void setTotalEpisode(int i11) {
        this.totalEpisode = i11;
    }

    public String toString() {
        return "DownloadUrlBean(method=" + this.method + ", downloadUrl=" + this.downloadUrl + ", jsUrl=" + this.jsUrl + ", name=" + this.name + ", resource=" + this.resource + ", totalEpisode=" + this.totalEpisode + ")";
    }
}
