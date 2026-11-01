package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.SSEResultBase;

/* JADX INFO: loaded from: classes2.dex */
public class InitiateMultipartUploadResult extends SSEResultBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18711c;

    public String a() {
        return this.f18711c;
    }

    public void b(String str) {
        this.f18711c = str;
    }

    public void setBucketName(String str) {
        this.f18709a = str;
    }

    public void setKey(String str) {
        this.f18710b = str;
    }
}
