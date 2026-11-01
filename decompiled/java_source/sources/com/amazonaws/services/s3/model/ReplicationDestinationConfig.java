package com.amazonaws.services.s3.model;

/* JADX INFO: loaded from: classes2.dex */
public class ReplicationDestinationConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18792b;

    public void a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Bucket name cannot be null");
        }
        this.f18791a = str;
    }

    public void b(String str) {
        this.f18792b = str;
    }
}
