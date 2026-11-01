package com.cloud.hisavana.sdk.common.bean;

import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR2\u0010\t\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\nj\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\bR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\b¨\u0006\u001f"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;", "", "()V", TrackingKey.DESCRIPTION, "", "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "keywords", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getKeywords", "()Ljava/util/ArrayList;", "setKeywords", "(Ljava/util/ArrayList;)V", "parentUrl", "getParentUrl", "setParentUrl", "query", "getQuery", "setQuery", CampaignEx.JSON_KEY_TITLE, "getTitle", "setTitle", "url", "getUrl", "setUrl", "webPageName", "getWebPageName", "setWebPageName", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SSPWebPageReqInfo {
    private String description;
    private ArrayList<String> keywords;
    private String parentUrl;
    private String query;
    private String title;
    private String url;
    private String webPageName;

    public final String getDescription() {
        return this.description;
    }

    public final ArrayList<String> getKeywords() {
        return this.keywords;
    }

    public final String getParentUrl() {
        return this.parentUrl;
    }

    public final String getQuery() {
        return this.query;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getWebPageName() {
        return this.webPageName;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setKeywords(ArrayList<String> arrayList) {
        this.keywords = arrayList;
    }

    public final void setParentUrl(String str) {
        this.parentUrl = str;
    }

    public final void setQuery(String str) {
        this.query = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setWebPageName(String str) {
        this.webPageName = str;
    }
}
