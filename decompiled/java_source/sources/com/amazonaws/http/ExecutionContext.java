package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetricsFullSupport;
import java.net.URI;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ExecutionContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AWSRequestMetrics f18384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f18385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AmazonWebServiceClient f18387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AWSCredentials f18388e;

    public ExecutionContext() {
        this(null, false, null);
    }

    public ExecutionContext(List list, boolean z10, AmazonWebServiceClient amazonWebServiceClient) {
        this.f18385b = list;
        this.f18384a = z10 ? new AWSRequestMetricsFullSupport() : new AWSRequestMetrics();
        this.f18387d = amazonWebServiceClient;
    }

    public AWSRequestMetrics a() {
        return this.f18384a;
    }

    public String b() {
        return this.f18386c;
    }

    public AWSCredentials c() {
        return this.f18388e;
    }

    public List d() {
        return this.f18385b;
    }

    public Signer e(URI uri) {
        AmazonWebServiceClient amazonWebServiceClient = this.f18387d;
        if (amazonWebServiceClient == null) {
            return null;
        }
        return amazonWebServiceClient.p(uri);
    }

    public void f(AWSCredentials aWSCredentials) {
        this.f18388e = aWSCredentials;
    }

    public void g(Signer signer) {
    }
}
