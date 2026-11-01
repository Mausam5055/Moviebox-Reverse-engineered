package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.SSEResultBase;

/* JADX INFO: loaded from: classes2.dex */
public class UploadPartResult extends SSEResultBase implements S3RequesterChargedResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f18831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f18833c;

    public String getETag() {
        return this.f18832b;
    }

    public int getPartNumber() {
        return this.f18831a;
    }

    public void setETag(String str) {
        this.f18832b = str;
    }

    public void setPartNumber(int i11) {
        this.f18831a = i11;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z10) {
        this.f18833c = z10;
    }
}
