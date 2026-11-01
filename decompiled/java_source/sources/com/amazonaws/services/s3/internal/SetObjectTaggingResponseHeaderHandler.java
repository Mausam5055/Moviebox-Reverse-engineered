package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.SetObjectTaggingResult;

/* JADX INFO: loaded from: classes2.dex */
public class SetObjectTaggingResponseHeaderHandler implements HeaderHandler<SetObjectTaggingResult> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(SetObjectTaggingResult setObjectTaggingResult, HttpResponse httpResponse) {
        setObjectTaggingResult.a((String) httpResponse.c().get("x-amz-version-id"));
    }
}
