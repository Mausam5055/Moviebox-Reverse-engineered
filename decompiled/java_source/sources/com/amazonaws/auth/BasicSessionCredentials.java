package com.amazonaws.auth;

/* JADX INFO: loaded from: classes2.dex */
public class BasicSessionCredentials implements AWSSessionCredentials {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f18354c;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.f18352a = str;
        this.f18353b = str2;
        this.f18354c = str3;
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    public String a() {
        return this.f18354c;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.f18352a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String c() {
        return this.f18353b;
    }
}
