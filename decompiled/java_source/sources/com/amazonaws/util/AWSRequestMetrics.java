package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class AWSRequestMetrics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final TimingInfo f18978a;

    public enum Field implements MetricType {
        AWSErrorCode,
        AWSRequestID,
        BytesProcessed,
        ClientExecuteTime,
        CredentialsRequestTime,
        Exception,
        HttpRequestTime,
        RedirectLocation,
        RequestMarshallTime,
        RequestSigningTime,
        ResponseProcessingTime,
        RequestCount,
        RetryCount,
        HttpClientRetryCount,
        HttpClientSendRequestTime,
        HttpClientReceiveResponseTime,
        RetryPauseTime,
        ServiceEndpoint,
        ServiceName,
        StatusCode
    }

    public AWSRequestMetrics() {
        this.f18978a = TimingInfo.m();
    }

    protected AWSRequestMetrics(TimingInfo timingInfo) {
        this.f18978a = timingInfo;
    }

    public void a(MetricType metricType, Object obj) {
    }

    public void b(MetricType metricType) {
    }

    public final TimingInfo c() {
        return this.f18978a;
    }

    public void d(MetricType metricType) {
    }

    public void e() {
    }

    public void f(MetricType metricType, long j11) {
    }

    public void g(MetricType metricType) {
    }
}
