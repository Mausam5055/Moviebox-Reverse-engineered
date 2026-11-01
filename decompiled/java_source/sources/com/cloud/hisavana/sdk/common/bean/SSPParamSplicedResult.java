package com.cloud.hisavana.sdk.common.bean;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/SSPParamSplicedResult;", "", "()V", "originalUrl", "", "getOriginalUrl", "()Ljava/lang/String;", "setOriginalUrl", "(Ljava/lang/String;)V", "splicedURL", "getSplicedURL", "setSplicedURL", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SSPParamSplicedResult {
    private String originalUrl;
    private String splicedURL;

    public final String getOriginalUrl() {
        return this.originalUrl;
    }

    public final String getSplicedURL() {
        return this.splicedURL;
    }

    public final void setOriginalUrl(String str) {
        this.originalUrl = str;
    }

    public final void setSplicedURL(String str) {
        this.splicedURL = str;
    }
}
