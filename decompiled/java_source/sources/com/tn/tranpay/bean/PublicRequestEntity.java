package com.tn.tranpay.bean;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/tn/tranpay/bean/PublicRequestEntity;", "Ljava/io/Serializable;", "()V", PushConstants.PROVIDER_FIELD_APP_KEY, "", "getAppKey", "()Ljava/lang/String;", "setAppKey", "(Ljava/lang/String;)V", "content", "getContent", "setContent", TmcConstants.EXTRA_APP_DEV_TOKEN, "getSign", "setSign", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PublicRequestEntity implements Serializable {
    private String content = "";
    private String sign = "";
    private String appKey = "";

    public final String getAppKey() {
        return this.appKey;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getSign() {
        return this.sign;
    }

    public final void setAppKey(String str) {
        this.appKey = str;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setSign(String str) {
        this.sign = str;
    }
}
