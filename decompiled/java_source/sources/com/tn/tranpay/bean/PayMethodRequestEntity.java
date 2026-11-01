package com.tn.tranpay.bean;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u0014\u0010\f\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/tn/tranpay/bean/PayMethodRequestEntity;", "Ljava/io/Serializable;", "()V", "countryCode", "", "getCountryCode", "()Ljava/lang/String;", "setCountryCode", "(Ljava/lang/String;)V", "currency", "getCurrency", "setCurrency", "txnType", "getTxnType", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PayMethodRequestEntity implements Serializable {
    private String countryCode = "";
    private String currency = "";
    private final String txnType = "payment";

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getTxnType() {
        return this.txnType;
    }

    public final void setCountryCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.countryCode = str;
    }

    public final void setCurrency(String str) {
        Intrinsics.h(str, "<set-?>");
        this.currency = str;
    }
}
