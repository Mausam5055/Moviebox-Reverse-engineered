package com.amazonaws.services.s3.metrics;

import com.amazonaws.metrics.ServiceMetricType;
import com.amazonaws.metrics.SimpleMetricType;
import com.amazonaws.metrics.ThroughputMetricType;

/* JADX INFO: loaded from: classes2.dex */
public class S3ServiceMetric extends SimpleMetricType implements ServiceMetricType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final S3ThroughputMetric f18679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final S3ServiceMetric f18680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final S3ThroughputMetric f18681d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final S3ServiceMetric f18682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final S3ServiceMetric[] f18683f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18684a;

    /* JADX INFO: Access modifiers changed from: private */
    public static abstract class S3ThroughputMetric extends S3ServiceMetric implements ThroughputMetricType {
        private S3ThroughputMetric(String str) {
            super(str);
        }
    }

    static {
        S3ThroughputMetric s3ThroughputMetric = new S3ThroughputMetric(a("DownloadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.1
        };
        f18679b = s3ThroughputMetric;
        S3ServiceMetric s3ServiceMetric = new S3ServiceMetric(a("DownloadByteCount"));
        f18680c = s3ServiceMetric;
        S3ThroughputMetric s3ThroughputMetric2 = new S3ThroughputMetric(a("UploadThroughput")) { // from class: com.amazonaws.services.s3.metrics.S3ServiceMetric.2
        };
        f18681d = s3ThroughputMetric2;
        S3ServiceMetric s3ServiceMetric2 = new S3ServiceMetric(a("UploadByteCount"));
        f18682e = s3ServiceMetric2;
        f18683f = new S3ServiceMetric[]{s3ThroughputMetric, s3ServiceMetric, s3ThroughputMetric2, s3ServiceMetric2};
    }

    private S3ServiceMetric(String str) {
        this.f18684a = str;
    }

    private static final String a(String str) {
        return "S3" + str;
    }

    public static S3ServiceMetric[] b() {
        return (S3ServiceMetric[]) f18683f.clone();
    }

    @Override // com.amazonaws.metrics.SimpleMetricType, com.amazonaws.metrics.MetricType
    public String name() {
        return this.f18684a;
    }
}
