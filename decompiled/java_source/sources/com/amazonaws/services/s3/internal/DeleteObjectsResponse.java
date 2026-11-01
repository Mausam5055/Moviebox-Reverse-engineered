package com.amazonaws.services.s3.internal;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DeleteObjectsResponse implements S3RequesterChargedResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f18621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f18622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f18623c;

    public DeleteObjectsResponse() {
        this(new ArrayList(), new ArrayList());
    }

    public DeleteObjectsResponse(List list, List list2) {
        this.f18621a = list;
        this.f18622b = list2;
    }

    public List a() {
        return this.f18621a;
    }

    public List b() {
        return this.f18622b;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z10) {
        this.f18623c = z10;
    }
}
