package com.tn.tranpay.bean;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001e\u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u0010\n\u0002\u0010-\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\u001c\u00101\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0006\"\u0004\b3\u0010\bR\u001c\u00104\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0006\"\u0004\b6\u0010\b¨\u00067"}, d2 = {"Lcom/tn/tranpay/bean/CreateOrderRequestEntity;", "Ljava/io/Serializable;", "()V", RewardPlus.AMOUNT, "", "getAmount", "()Ljava/lang/String;", "setAmount", "(Ljava/lang/String;)V", "cnic", "getCnic", "setCnic", "countryCode", "getCountryCode", "setCountryCode", "cpFrontPage", "getCpFrontPage", "setCpFrontPage", "currency", "getCurrency", "setCurrency", "email", "getEmail", "setEmail", TmcConstants.KEY_LANGUAGE, "getLanguage", "setLanguage", "memo", "getMemo", "setMemo", "orderDescription", "getOrderDescription", "setOrderDescription", "orderId", "getOrderId", "setOrderId", "palmAuthCode", "getPalmAuthCode", "setPalmAuthCode", "payByLocalCurrency", "", "getPayByLocalCurrency", "()Ljava/lang/Boolean;", "setPayByLocalCurrency", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "payMethod", "getPayMethod", "setPayMethod", "phone", "getPhone", "setPhone", "referenceNo", "getReferenceNo", "setReferenceNo", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CreateOrderRequestEntity implements Serializable {
    private String cnic;
    private String cpFrontPage;
    private String email;
    private String language;
    private String memo;
    private String palmAuthCode;
    private Boolean payByLocalCurrency;
    private String payMethod;
    private String phone;
    private String referenceNo;
    private String amount = "";
    private String countryCode = "";
    private String currency = "";
    private String orderId = "";
    private String orderDescription = "";

    public final String getAmount() {
        return this.amount;
    }

    public final String getCnic() {
        return this.cnic;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getMemo() {
        return this.memo;
    }

    public final String getOrderDescription() {
        return this.orderDescription;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getPalmAuthCode() {
        return this.palmAuthCode;
    }

    public final Boolean getPayByLocalCurrency() {
        return this.payByLocalCurrency;
    }

    public final String getPayMethod() {
        return this.payMethod;
    }

    public final String getPhone() {
        return this.phone;
    }

    public final String getReferenceNo() {
        return this.referenceNo;
    }

    public final void setAmount(String str) {
        Intrinsics.h(str, "<set-?>");
        this.amount = str;
    }

    public final void setCnic(String str) {
        this.cnic = str;
    }

    public final void setCountryCode(String str) {
        Intrinsics.h(str, "<set-?>");
        this.countryCode = str;
    }

    public final void setCpFrontPage(String str) {
        this.cpFrontPage = str;
    }

    public final void setCurrency(String str) {
        Intrinsics.h(str, "<set-?>");
        this.currency = str;
    }

    public final void setEmail(String str) {
        this.email = str;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setMemo(String str) {
        this.memo = str;
    }

    public final void setOrderDescription(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderDescription = str;
    }

    public final void setOrderId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.orderId = str;
    }

    public final void setPalmAuthCode(String str) {
        this.palmAuthCode = str;
    }

    public final void setPayByLocalCurrency(Boolean bool) {
        this.payByLocalCurrency = bool;
    }

    public final void setPayMethod(String str) {
        this.payMethod = str;
    }

    public final void setPhone(String str) {
        this.phone = str;
    }

    public final void setReferenceNo(String str) {
        this.referenceNo = str;
    }
}
