package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.S3VersionResult;

/* JADX INFO: loaded from: classes2.dex */
public class S3VersionHeaderHandler<T extends S3VersionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(S3VersionResult s3VersionResult, HttpResponse httpResponse) {
        s3VersionResult.setVersionId((String) httpResponse.c().get("x-amz-version-id"));
    }
}
