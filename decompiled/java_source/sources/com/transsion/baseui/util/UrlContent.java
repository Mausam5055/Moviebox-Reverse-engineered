package com.transsion.baseui.util;

import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\nHÆ\u0003J=\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\nHÖ\u0001J\t\u0010*\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006+"}, d2 = {"Lcom/transsion/baseui/util/UrlContent;", "Ljava/io/Serializable;", "clickableSpan", "Landroid/text/style/ClickableSpan;", "iconSpan", "Landroid/text/style/ImageSpan;", "originUrl", "", "url", "indexOfUrl", "", "<init>", "(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V", "getClickableSpan", "()Landroid/text/style/ClickableSpan;", "setClickableSpan", "(Landroid/text/style/ClickableSpan;)V", "getIconSpan", "()Landroid/text/style/ImageSpan;", "setIconSpan", "(Landroid/text/style/ImageSpan;)V", "getOriginUrl", "()Ljava/lang/String;", "setOriginUrl", "(Ljava/lang/String;)V", "getUrl", "setUrl", "getIndexOfUrl", "()I", "setIndexOfUrl", "(I)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UrlContent implements Serializable {
    public static final int $stable = 8;
    private ClickableSpan clickableSpan;
    private ImageSpan iconSpan;
    private int indexOfUrl;
    private String originUrl;
    private String url;

    public UrlContent(ClickableSpan clickableSpan, ImageSpan imageSpan, String originUrl, String url, int i11) {
        Intrinsics.h(clickableSpan, "clickableSpan");
        Intrinsics.h(originUrl, "originUrl");
        Intrinsics.h(url, "url");
        this.clickableSpan = clickableSpan;
        this.iconSpan = imageSpan;
        this.originUrl = originUrl;
        this.url = url;
        this.indexOfUrl = i11;
    }

    public static /* synthetic */ UrlContent copy$default(UrlContent urlContent, ClickableSpan clickableSpan, ImageSpan imageSpan, String str, String str2, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            clickableSpan = urlContent.clickableSpan;
        }
        if ((i12 & 2) != 0) {
            imageSpan = urlContent.iconSpan;
        }
        ImageSpan imageSpan2 = imageSpan;
        if ((i12 & 4) != 0) {
            str = urlContent.originUrl;
        }
        String str3 = str;
        if ((i12 & 8) != 0) {
            str2 = urlContent.url;
        }
        String str4 = str2;
        if ((i12 & 16) != 0) {
            i11 = urlContent.indexOfUrl;
        }
        return urlContent.copy(clickableSpan, imageSpan2, str3, str4, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ClickableSpan getClickableSpan() {
        return this.clickableSpan;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ImageSpan getIconSpan() {
        return this.iconSpan;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOriginUrl() {
        return this.originUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getIndexOfUrl() {
        return this.indexOfUrl;
    }

    public final UrlContent copy(ClickableSpan clickableSpan, ImageSpan iconSpan, String originUrl, String url, int indexOfUrl) {
        Intrinsics.h(clickableSpan, "clickableSpan");
        Intrinsics.h(originUrl, "originUrl");
        Intrinsics.h(url, "url");
        return new UrlContent(clickableSpan, iconSpan, originUrl, url, indexOfUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UrlContent)) {
            return false;
        }
        UrlContent urlContent = (UrlContent) other;
        return Intrinsics.c(this.clickableSpan, urlContent.clickableSpan) && Intrinsics.c(this.iconSpan, urlContent.iconSpan) && Intrinsics.c(this.originUrl, urlContent.originUrl) && Intrinsics.c(this.url, urlContent.url) && this.indexOfUrl == urlContent.indexOfUrl;
    }

    public final ClickableSpan getClickableSpan() {
        return this.clickableSpan;
    }

    public final ImageSpan getIconSpan() {
        return this.iconSpan;
    }

    public final int getIndexOfUrl() {
        return this.indexOfUrl;
    }

    public final String getOriginUrl() {
        return this.originUrl;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int iHashCode = this.clickableSpan.hashCode() * 31;
        ImageSpan imageSpan = this.iconSpan;
        return ((((((iHashCode + (imageSpan == null ? 0 : imageSpan.hashCode())) * 31) + this.originUrl.hashCode()) * 31) + this.url.hashCode()) * 31) + this.indexOfUrl;
    }

    public final void setClickableSpan(ClickableSpan clickableSpan) {
        Intrinsics.h(clickableSpan, "<set-?>");
        this.clickableSpan = clickableSpan;
    }

    public final void setIconSpan(ImageSpan imageSpan) {
        this.iconSpan = imageSpan;
    }

    public final void setIndexOfUrl(int i11) {
        this.indexOfUrl = i11;
    }

    public final void setOriginUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.originUrl = str;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public String toString() {
        return "UrlContent(clickableSpan=" + this.clickableSpan + ", iconSpan=" + this.iconSpan + ", originUrl=" + this.originUrl + ", url=" + this.url + ", indexOfUrl=" + this.indexOfUrl + ")";
    }
}
