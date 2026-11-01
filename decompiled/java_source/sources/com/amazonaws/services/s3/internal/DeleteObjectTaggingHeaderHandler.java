package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.DeleteObjectTaggingResult;

/* JADX INFO: loaded from: classes2.dex */
public class DeleteObjectTaggingHeaderHandler implements HeaderHandler<DeleteObjectTaggingResult> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(DeleteObjectTaggingResult deleteObjectTaggingResult, HttpResponse httpResponse) {
        deleteObjectTaggingResult.a((String) httpResponse.c().get("x-amz-version-id"));
    }
}
