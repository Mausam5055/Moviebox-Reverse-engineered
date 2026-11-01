package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AWSCredentialsProviderChain implements AWSCredentialsProvider {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Log f18330d = LogFactory.b(AWSCredentialsProviderChain.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f18331a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f18332b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AWSCredentialsProvider f18333c;

    public AWSCredentialsProviderChain(AWSCredentialsProvider... aWSCredentialsProviderArr) {
        if (aWSCredentialsProviderArr == null || aWSCredentialsProviderArr.length == 0) {
            throw new IllegalArgumentException("No credential providers specified");
        }
        for (AWSCredentialsProvider aWSCredentialsProvider : aWSCredentialsProviderArr) {
            this.f18331a.add(aWSCredentialsProvider);
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        AWSCredentialsProvider aWSCredentialsProvider;
        if (this.f18332b && (aWSCredentialsProvider = this.f18333c) != null) {
            return aWSCredentialsProvider.a();
        }
        for (AWSCredentialsProvider aWSCredentialsProvider2 : this.f18331a) {
            try {
                AWSCredentials aWSCredentialsA = aWSCredentialsProvider2.a();
                if (aWSCredentialsA.b() != null && aWSCredentialsA.c() != null) {
                    f18330d.a("Loading credentials from " + aWSCredentialsProvider2.toString());
                    this.f18333c = aWSCredentialsProvider2;
                    return aWSCredentialsA;
                }
            } catch (Exception e11) {
                f18330d.a("Unable to load credentials from " + aWSCredentialsProvider2.toString() + ": " + e11.getMessage());
            }
        }
        throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
    }
}
