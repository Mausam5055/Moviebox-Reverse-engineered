package com.tn.tranpay.bean;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\b¨\u0006$"}, d2 = {"Lcom/tn/tranpay/bean/PrePayRequestEntity;", "Ljava/io/Serializable;", "()V", RewardPlus.AMOUNT, "", "getAmount", "()Ljava/lang/String;", "setAmount", "(Ljava/lang/String;)V", PushConstants.PROVIDER_FIELD_APP_KEY, "getAppKey", "setAppKey", "countryCode", "getCountryCode", "setCountryCode", "currency", "getCurrency", "setCurrency", TmcConstants.KEY_LANGUAGE, "getLanguage", "setLanguage", "orderDescription", "getOrderDescription", "setOrderDescription", "orderId", "getOrderId", "setOrderId", "payByLocalCurrency", "", "getPayByLocalCurrency", "()Z", "setPayByLocalCurrency", "(Z)V", "payMethod", "getPayMethod", "setPayMethod", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrePayRequestEntity implements Serializable {
    private String language;
    private boolean payByLocalCurrency;
    private String payMethod;
    private String appKey = "";
    private String amount = "";
    private String countryCode = "";
    private String orderId = "";
    private String orderDescription = "";
    private String currency = "";

    public final String getAmount() {
        return this.amount;
    }

    public final String getAppKey() {
        return this.appKey;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getOrderDescription() {
        return this.orderDescription;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final boolean getPayByLocalCurrency() {
        return this.payByLocalCurrency;
    }

    public final String getPayMethod() {
        return this.payMethod;
    }

    public final void setAmount(String str) {
        Intrinsics.h(str, "<set-?>");
        this.amount = str;
    }

    public final void setAppKey(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appKey = str;
    }

    public final void setCountryCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.countryCode = str;
    }

    public final void setCurrency(String str) {
        Intrinsics.h(str, "<set-?>");
        this.currency = str;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setOrderDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderDescription = str;
    }

    public final void setOrderId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderId = str;
    }

    public final void setPayByLocalCurrency(boolean z10) {
        this.payByLocalCurrency = z10;
    }

    public final void setPayMethod(String str) {
        this.payMethod = str;
    }
}
