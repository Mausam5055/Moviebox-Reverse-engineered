package com.cloud.hisavana.sdk.common.bean;

import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J&\u0010\u0010\u001a\u00020\u00002\u001e\u0010\u0005\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0006j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0006j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfoBuilder;", "", "()V", TrackingKey.DESCRIPTION, "", "keywords", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "parentUrl", "query", CampaignEx.JSON_KEY_TITLE, "url", "webPageName", "build", "Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;", "setDescription", "setKeywords", "setParentUrl", "setQuery", "setTitle", "setUrl", "setWebPageName", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SSPWebPageReqInfoBuilder {
    private String description;
    private ArrayList<String> keywords;
    private String parentUrl;
    private String query;
    private String title;
    private String url;
    private String webPageName;

    public final SSPWebPageReqInfo build() {
        SSPWebPageReqInfo sSPWebPageReqInfo = new SSPWebPageReqInfo();
        sSPWebPageReqInfo.setUrl(this.url);
        sSPWebPageReqInfo.setParentUrl(this.parentUrl);
        sSPWebPageReqInfo.setTitle(this.title);
        sSPWebPageReqInfo.setDescription(this.description);
        sSPWebPageReqInfo.setKeywords(this.keywords);
        sSPWebPageReqInfo.setQuery(this.query);
        sSPWebPageReqInfo.setWebPageName(this.webPageName);
        return sSPWebPageReqInfo;
    }

    public final SSPWebPageReqInfoBuilder setDescription(String description) {
        this.description = description;
        return this;
    }

    public final SSPWebPageReqInfoBuilder setKeywords(ArrayList<String> keywords) {
        this.keywords = keywords;
        return this;
    }

    public final SSPWebPageReqInfoBuilder setParentUrl(String parentUrl) {
        this.parentUrl = parentUrl;
        return this;
    }

    public final SSPWebPageReqInfoBuilder setQuery(String query) {
        this.query = query;
        return this;
    }

    public final SSPWebPageReqInfoBuilder setTitle(String title) {
        this.title = title;
        return this;
    }

    public final SSPWebPageReqInfoBuilder setUrl(String url) {
        this.url = url;
        return this;
    }

    public final SSPWebPageReqInfoBuilder setWebPageName(String webPageName) {
        this.webPageName = webPageName;
        return this;
    }
}
