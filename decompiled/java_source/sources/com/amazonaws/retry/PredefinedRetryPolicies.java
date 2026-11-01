package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class PredefinedRetryPolicies {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RetryPolicy f18569a = new RetryPolicy(RetryPolicy.RetryCondition.f18582a, RetryPolicy.BackoffStrategy.f18581a, 0, false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final RetryPolicy.RetryCondition f18572d = new SDKDefaultRetryCondition();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RetryPolicy.BackoffStrategy f18573e = new SDKDefaultBackoffStrategy(100, 20000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RetryPolicy f18570b = a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RetryPolicy f18571c = b();

    private static final class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Random f18574b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f18575c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f18576d;

        private SDKDefaultBackoffStrategy(int i11, int i12) {
            this.f18574b = new Random();
            this.f18575c = i11;
            this.f18576d = i12;
        }

        @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
        public final long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11) {
            if (i11 <= 0) {
                return 0L;
            }
            return this.f18574b.nextInt(Math.min(this.f18576d, (1 << i11) * this.f18575c));
        }
    }

    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
        public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11) {
            if ((amazonClientException.getCause() instanceof IOException) && !(amazonClientException.getCause() instanceof InterruptedIOException)) {
                return true;
            }
            if (!(amazonClientException instanceof AmazonServiceException)) {
                return false;
            }
            AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
            int statusCode = amazonServiceException.getStatusCode();
            return statusCode == 500 || statusCode == 503 || statusCode == 502 || statusCode == 504 || RetryUtils.c(amazonServiceException) || RetryUtils.a(amazonServiceException);
        }
    }

    public static RetryPolicy a() {
        return new RetryPolicy(f18572d, f18573e, 3, true);
    }

    public static RetryPolicy b() {
        return new RetryPolicy(f18572d, f18573e, 10, true);
    }
}
