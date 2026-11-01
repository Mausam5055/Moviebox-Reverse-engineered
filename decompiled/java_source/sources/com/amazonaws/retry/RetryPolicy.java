package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;

/* JADX INFO: loaded from: classes2.dex */
public final class RetryPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RetryCondition f18577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BackoffStrategy f18578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f18579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f18580d;

    public interface BackoffStrategy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BackoffStrategy f18581a = new BackoffStrategy() { // from class: com.amazonaws.retry.RetryPolicy.BackoffStrategy.1
            @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
            public long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11) {
                return 0L;
            }
        };

        long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11);
    }

    public interface RetryCondition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RetryCondition f18582a = new RetryCondition() { // from class: com.amazonaws.retry.RetryPolicy.RetryCondition.1
            @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
            public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11) {
                return false;
            }
        };

        boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11);
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i11, boolean z10) {
        retryCondition = retryCondition == null ? PredefinedRetryPolicies.f18572d : retryCondition;
        backoffStrategy = backoffStrategy == null ? PredefinedRetryPolicies.f18573e : backoffStrategy;
        if (i11 < 0) {
            throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
        }
        this.f18577a = retryCondition;
        this.f18578b = backoffStrategy;
        this.f18579c = i11;
        this.f18580d = z10;
    }

    public BackoffStrategy a() {
        return this.f18578b;
    }

    public int b() {
        return this.f18579c;
    }

    public RetryCondition c() {
        return this.f18577a;
    }

    public boolean d() {
        return this.f18580d;
    }
}
