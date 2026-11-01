package com.transsion.lib_web.domain;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u001e\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u000f\u0010\u0007\"\u0004\b\u0010\u0010\tR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\tR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\tR\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\tR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u001b\u0010\u0007\"\u0004\b\u001c\u0010\tR\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u001e\u0010\u0007\"\u0004\b\u001f\u0010\tR\u001e\u0010 \u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b!\u0010\u0007\"\u0004\b\"\u0010\tR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001e\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u0010\n\u0002\u0010/\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001c\u00100\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010&\"\u0004\b2\u0010(¨\u00063"}, d2 = {"Lcom/transsion/lib_web/domain/DomPerformance;", "", "<init>", "()V", "dnsLookup", "", "getDnsLookup", "()Ljava/lang/Long;", "setDnsLookup", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "tcpConnect", "getTcpConnect", "setTcpConnect", "requestTime", "getRequestTime", "setRequestTime", "responseTime", "getResponseTime", "setResponseTime", "domLoading", "getDomLoading", "setDomLoading", "domInteractive", "getDomInteractive", "setDomInteractive", "domComplete", "getDomComplete", "setDomComplete", "loadEventTime", "getLoadEventTime", "setLoadEventTime", "totalLoadTime", "getTotalLoadTime", "setTotalLoadTime", "readyState", "", "getReadyState", "()Ljava/lang/String;", "setReadyState", "(Ljava/lang/String;)V", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "getSuccess", "()Ljava/lang/Boolean;", "setSuccess", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "errorMsg", "getErrorMsg", "setErrorMsg", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DomPerformance {
    private String errorMsg;
    private String readyState;
    private Boolean success;
    private Long dnsLookup = 0L;
    private Long tcpConnect = 0L;
    private Long requestTime = 0L;
    private Long responseTime = 0L;
    private Long domLoading = 0L;
    private Long domInteractive = 0L;
    private Long domComplete = 0L;
    private Long loadEventTime = 0L;
    private Long totalLoadTime = 0L;

    public final Long getDnsLookup() {
        return this.dnsLookup;
    }

    public final Long getDomComplete() {
        return this.domComplete;
    }

    public final Long getDomInteractive() {
        return this.domInteractive;
    }

    public final Long getDomLoading() {
        return this.domLoading;
    }

    public final String getErrorMsg() {
        return this.errorMsg;
    }

    public final Long getLoadEventTime() {
        return this.loadEventTime;
    }

    public final String getReadyState() {
        return this.readyState;
    }

    public final Long getRequestTime() {
        return this.requestTime;
    }

    public final Long getResponseTime() {
        return this.responseTime;
    }

    public final Boolean getSuccess() {
        return this.success;
    }

    public final Long getTcpConnect() {
        return this.tcpConnect;
    }

    public final Long getTotalLoadTime() {
        return this.totalLoadTime;
    }

    public final void setDnsLookup(Long l11) {
        this.dnsLookup = l11;
    }

    public final void setDomComplete(Long l11) {
        this.domComplete = l11;
    }

    public final void setDomInteractive(Long l11) {
        this.domInteractive = l11;
    }

    public final void setDomLoading(Long l11) {
        this.domLoading = l11;
    }

    public final void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public final void setLoadEventTime(Long l11) {
        this.loadEventTime = l11;
    }

    public final void setReadyState(String str) {
        this.readyState = str;
    }

    public final void setRequestTime(Long l11) {
        this.requestTime = l11;
    }

    public final void setResponseTime(Long l11) {
        this.responseTime = l11;
    }

    public final void setSuccess(Boolean bool) {
        this.success = bool;
    }

    public final void setTcpConnect(Long l11) {
        this.tcpConnect = l11;
    }

    public final void setTotalLoadTime(Long l11) {
        this.totalLoadTime = l11;
    }
}
