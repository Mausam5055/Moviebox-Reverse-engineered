package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.GetObjectTaggingResult;

/* JADX INFO: loaded from: classes2.dex */
public class GetObjectTaggingResponseHeaderHandler implements HeaderHandler<GetObjectTaggingResult> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(GetObjectTaggingResult getObjectTaggingResult, HttpResponse httpResponse) {
        getObjectTaggingResult.a((String) httpResponse.c().get("x-amz-version-id"));
    }
}
