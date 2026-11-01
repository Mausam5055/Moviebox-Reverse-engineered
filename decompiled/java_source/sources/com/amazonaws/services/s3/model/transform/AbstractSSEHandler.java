package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractSSEHandler extends AbstractHandler implements ServerSideEncryptionResult {
    AbstractSSEHandler() {
    }

    protected abstract ServerSideEncryptionResult f();

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void setSSEAlgorithm(String str) {
        ServerSideEncryptionResult serverSideEncryptionResultF = f();
        if (serverSideEncryptionResultF != null) {
            serverSideEncryptionResultF.setSSEAlgorithm(str);
        }
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerAlgorithm(String str) {
        ServerSideEncryptionResult serverSideEncryptionResultF = f();
        if (serverSideEncryptionResultF != null) {
            serverSideEncryptionResultF.setSSECustomerAlgorithm(str);
        }
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerKeyMd5(String str) {
        ServerSideEncryptionResult serverSideEncryptionResultF = f();
        if (serverSideEncryptionResultF != null) {
            serverSideEncryptionResultF.setSSECustomerKeyMd5(str);
        }
    }
}
