package com.transsion.shorttv_pugc.bean;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\u001a\u0010\u001c\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\r\"\u0004\b\u001e\u0010\u000fR\u001a\u0010\u001f\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\r\"\u0004\b!\u0010\u000f¨\u0006\""}, d2 = {"Lcom/transsion/shorttv_pugc/bean/ImmVideoRequestEntity;", "Ljava/io/Serializable;", "<init>", "()V", "page", "", "getPage", "()Ljava/lang/String;", "setPage", "(Ljava/lang/String;)V", "perPage", "", "getPerPage", "()I", "setPerPage", "(I)V", "userPrefer", "getUserPrefer", "setUserPrefer", "deepLink", "getDeepLink", "setDeepLink", "sessionId", "getSessionId", "setSessionId", "postId", "getPostId", "setPostId", "tabId", "getTabId", "setTabId", "immersiveRecType", "getImmersiveRecType", "setImmersiveRecType", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImmVideoRequestEntity implements Serializable {
    private int immersiveRecType;
    private int tabId;
    private String page = "1";
    private int perPage = 6;
    private String userPrefer = "";
    private String deepLink = "";
    private String sessionId = "";
    private String postId = "";

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final int getImmersiveRecType() {
        return this.immersiveRecType;
    }

    public final String getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final int getTabId() {
        return this.tabId;
    }

    public final String getUserPrefer() {
        return this.userPrefer;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setImmersiveRecType(int i11) {
        this.immersiveRecType = i11;
    }

    public final void setPage(String str) {
        Intrinsics.h(str, "<set-?>");
        this.page = str;
    }

    public final void setPerPage(int i11) {
        this.perPage = i11;
    }

    public final void setPostId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.postId = str;
    }

    public final void setSessionId(String str) {
        this.sessionId = str;
    }

    public final void setTabId(int i11) {
        this.tabId = i11;
    }

    public final void setUserPrefer(String str) {
        this.userPrefer = str;
    }
}
