package com.alibaba.sdk.android.oss.callback;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;

/* JADX INFO: loaded from: classes2.dex */
public interface OSSCompletedCallback<T1 extends OSSRequest, T2 extends OSSResult> {
    void onFailure(T1 t11, ClientException clientException, ServiceException serviceException);

    void onSuccess(T1 t11, T2 t12);
}
