package com.amazonaws.auth;

/* JADX INFO: loaded from: classes2.dex */
public class BasicAWSCredentials implements AWSCredentials {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18351b;

    public BasicAWSCredentials(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Access key cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Secret key cannot be null.");
        }
        this.f18350a = str;
        this.f18351b = str2;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.f18350a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String c() {
        return this.f18351b;
    }
}
