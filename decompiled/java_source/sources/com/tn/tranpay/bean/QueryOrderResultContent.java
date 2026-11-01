package com.tn.tranpay.bean;

import androidx.core.app.NotificationCompat;
import com.tn.tranpay.network.BaseContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b5\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001c\u0010'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001c\u00103\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0006\"\u0004\b5\u0010\bR\u001c\u00106\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\b¨\u00069"}, d2 = {"Lcom/tn/tranpay/bean/QueryOrderResultContent;", "Lcom/tn/tranpay/network/BaseContent;", "()V", "coins", "", "getCoins", "()Ljava/lang/String;", "setCoins", "(Ljava/lang/String;)V", "completeTime", "getCompleteTime", "setCompleteTime", "countryLogo", "getCountryLogo", "setCountryLogo", "countryName", "getCountryName", "setCountryName", "cpFrontPage", "getCpFrontPage", "setCpFrontPage", "cpLogo", "getCpLogo", "setCpLogo", "cpName", "getCpName", "setCpName", "currency", "getCurrency", "setCurrency", "orderDescription", "getOrderDescription", "setOrderDescription", "orderId", "getOrderId", "setOrderId", "payMethod", "getPayMethod", "setPayMethod", "payMethodLogo", "getPayMethodLogo", "setPayMethodLogo", "payMethodName", "getPayMethodName", "setPayMethodName", "resultInterceptUrl", "getResultInterceptUrl", "setResultInterceptUrl", NotificationCompat.CATEGORY_STATUS, "getStatus", "setStatus", "stepStatus", "getStepStatus", "setStepStatus", "symbol", "getSymbol", "setSymbol", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class QueryOrderResultContent extends BaseContent {
    private String coins;
    private String completeTime;
    private String countryLogo;
    private String countryName;
    private String cpFrontPage;
    private String cpLogo;
    private String cpName;
    private String currency;
    private String orderDescription;
    private String orderId;
    private String payMethod;
    private String payMethodLogo;
    private String payMethodName;
    private String resultInterceptUrl;
    private String status;
    private String stepStatus;
    private String symbol;

    public final String getCoins() {
        return this.coins;
    }

    public final String getCompleteTime() {
        return this.completeTime;
    }

    public final String getCountryLogo() {
        return this.countryLogo;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final String getCpLogo() {
        return this.cpLogo;
    }

    public final String getCpName() {
        return this.cpName;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getOrderDescription() {
        return this.orderDescription;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getPayMethod() {
        return this.payMethod;
    }

    public final String getPayMethodLogo() {
        return this.payMethodLogo;
    }

    public final String getPayMethodName() {
        return this.payMethodName;
    }

    public final String getResultInterceptUrl() {
        return this.resultInterceptUrl;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getStepStatus() {
        return this.stepStatus;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final void setCoins(String str) {
        this.coins = str;
    }

    public final void setCompleteTime(String str) {
        this.completeTime = str;
    }

    public final void setCountryLogo(String str) {
        this.countryLogo = str;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCpFrontPage(String str) {
        this.cpFrontPage = str;
    }

    public final void setCpLogo(String str) {
        this.cpLogo = str;
    }

    public final void setCpName(String str) {
        this.cpName = str;
    }

    public final void setCurrency(String str) {
        this.currency = str;
    }

    public final void setOrderDescription(String str) {
        this.orderDescription = str;
    }

    public final void setOrderId(String str) {
        this.orderId = str;
    }

    public final void setPayMethod(String str) {
        this.payMethod = str;
    }

    public final void setPayMethodLogo(String str) {
        this.payMethodLogo = str;
    }

    public final void setPayMethodName(String str) {
        this.payMethodName = str;
    }

    public final void setResultInterceptUrl(String str) {
        this.resultInterceptUrl = str;
    }

    public final void setStatus(String str) {
        this.status = str;
    }

    public final void setStepStatus(String str) {
        this.stepStatus = str;
    }

    public final void setSymbol(String str) {
        this.symbol = str;
    }
}
