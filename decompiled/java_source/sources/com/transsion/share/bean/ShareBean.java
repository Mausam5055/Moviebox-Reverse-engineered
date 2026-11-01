package com.transsion.share.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001e\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001e\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR \u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/transsion/share/bean/ShareBean;", "", "<init>", "()V", CampaignEx.JSON_KEY_TITLE, "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", CampaignEx.JSON_KEY_DESC, "getDesc", "setDesc", "downUrl", "getDownUrl", "setDownUrl", "coverUrl", "getCoverUrl", "setCoverUrl", "shortUrl", "getShortUrl", "setShortUrl", "shareType", "Lcom/transsion/share/bean/ShareType;", "getShareType", "()Lcom/transsion/share/bean/ShareType;", "setShareType", "(Lcom/transsion/share/bean/ShareType;)V", "ShareLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShareBean {
    private ShareType shareType;

    @SerializedName("url")
    private String shortUrl;

    @SerializedName(CampaignEx.JSON_KEY_TITLE)
    private String title = "";

    @SerializedName(CampaignEx.JSON_KEY_DESC)
    private String desc = "";

    @SerializedName("downUrl")
    private String downUrl = "";

    @SerializedName("coverUrl")
    private String coverUrl = "";

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getDownUrl() {
        return this.downUrl;
    }

    public final ShareType getShareType() {
        return this.shareType;
    }

    public final String getShortUrl() {
        return this.shortUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setCoverUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.coverUrl = str;
    }

    public final void setDesc(String str) {
        Intrinsics.h(str, "<set-?>");
        this.desc = str;
    }

    public final void setDownUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.downUrl = str;
    }

    public final void setShareType(ShareType shareType) {
        this.shareType = shareType;
    }

    public final void setShortUrl(String str) {
        this.shortUrl = str;
    }

    public final void setTitle(String str) {
        Intrinsics.h(str, "<set-?>");
        this.title = str;
    }
}
