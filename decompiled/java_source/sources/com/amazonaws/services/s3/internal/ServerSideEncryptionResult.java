package com.amazonaws.services.s3.internal;

/* JADX INFO: loaded from: classes2.dex */
public interface ServerSideEncryptionResult {
    void setSSEAlgorithm(String str);

    void setSSECustomerAlgorithm(String str);

    void setSSECustomerKeyMd5(String str);
}
