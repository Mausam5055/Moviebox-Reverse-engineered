package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;

/* JADX INFO: loaded from: classes2.dex */
public class ServerSideEncryptionHeaderHandler<T extends ServerSideEncryptionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(ServerSideEncryptionResult serverSideEncryptionResult, HttpResponse httpResponse) {
        serverSideEncryptionResult.setSSEAlgorithm((String) httpResponse.c().get("x-amz-server-side-encryption"));
        serverSideEncryptionResult.setSSECustomerAlgorithm((String) httpResponse.c().get("x-amz-server-side-encryption-customer-algorithm"));
        serverSideEncryptionResult.setSSECustomerKeyMd5((String) httpResponse.c().get("x-amz-server-side-encryption-customer-key-MD5"));
    }
}
