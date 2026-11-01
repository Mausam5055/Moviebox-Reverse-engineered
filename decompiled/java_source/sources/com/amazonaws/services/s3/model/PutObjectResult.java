package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.SSEResultBase;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class PutObjectResult extends SSEResultBase implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Date f18781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f18782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f18783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ObjectMetadata f18784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f18785g;

    public void a(String str) {
        this.f18783e = str;
    }

    public void b(ObjectMetadata objectMetadata) {
        this.f18784f = objectMetadata;
    }

    public void setETag(String str) {
        this.f18780b = str;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void setExpirationTime(Date date) {
        this.f18781c = date;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void setExpirationTimeRuleId(String str) {
        this.f18782d = str;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z10) {
        this.f18785g = z10;
    }

    @Override // com.amazonaws.services.s3.internal.S3VersionResult
    public void setVersionId(String str) {
        this.f18779a = str;
    }
}
