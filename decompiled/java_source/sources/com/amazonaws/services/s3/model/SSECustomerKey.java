package com.amazonaws.services.s3.model;

/* JADX INFO: loaded from: classes2.dex */
public class SSECustomerKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18825a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18827c;

    private SSECustomerKey() {
    }

    public static SSECustomerKey a(String str) {
        if (str != null) {
            return new SSECustomerKey().f(str);
        }
        throw new IllegalArgumentException();
    }

    public String b() {
        return this.f18827c;
    }

    public String c() {
        return this.f18825a;
    }

    public String d() {
        return this.f18826b;
    }

    public void e(String str) {
        this.f18827c = str;
    }

    public SSECustomerKey f(String str) {
        e(str);
        return this;
    }
}
