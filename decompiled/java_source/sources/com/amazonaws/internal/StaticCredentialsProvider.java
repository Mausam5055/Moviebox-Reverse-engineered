package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;

/* JADX INFO: loaded from: classes2.dex */
public class StaticCredentialsProvider implements AWSCredentialsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AWSCredentials f18413a;

    public StaticCredentialsProvider(AWSCredentials aWSCredentials) {
        this.f18413a = aWSCredentials;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        return this.f18413a;
    }
}
