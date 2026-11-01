package com.transsion.search_pugc.net;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0007\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bB)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/transsion/search_pugc/net/RequestSearchResultEntity;", "", "page", "", "perPage", "keyword", "", "<init>", "(IILjava/lang/String;)V", "tabId", "(IILjava/lang/String;Ljava/lang/String;)V", "getPage", "()I", "setPage", "(I)V", "getPerPage", "setPerPage", "getTabId", "()Ljava/lang/String;", "setTabId", "(Ljava/lang/String;)V", "getKeyword", "setKeyword", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestSearchResultEntity {
    private String keyword;
    private int page;
    private int perPage;
    private String tabId;

    public RequestSearchResultEntity(int i11, int i12, String keyword) {
        Intrinsics.h(keyword, "keyword");
        this.tabId = "";
        this.page = i11;
        this.perPage = i12;
        this.keyword = keyword;
    }

    public RequestSearchResultEntity(int i11, int i12, String tabId, String keyword) {
        Intrinsics.h(tabId, "tabId");
        Intrinsics.h(keyword, "keyword");
        this.tabId = "";
        this.page = i11;
        this.perPage = i12;
        this.keyword = keyword;
    }

    public final String getKeyword() {
        return this.keyword;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final String getTabId() {
        return this.tabId;
    }

    public final void setKeyword(String str) {
        Intrinsics.h(str, "<set-?>");
        this.keyword = str;
    }

    public final void setPage(int i11) {
        this.page = i11;
    }

    public final void setPerPage(int i11) {
        this.perPage = i11;
    }

    public final void setTabId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.tabId = str;
    }
}
