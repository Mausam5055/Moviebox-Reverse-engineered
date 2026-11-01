package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;

/* JADX INFO: loaded from: classes2.dex */
public class S3RequesterChargedHeaderHandler<T extends S3RequesterChargedResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(S3RequesterChargedResult s3RequesterChargedResult, HttpResponse httpResponse) {
        s3RequesterChargedResult.setRequesterCharged(httpResponse.c().get("x-amz-request-charged") != null);
    }
}
