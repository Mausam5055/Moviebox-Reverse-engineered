package com.cloud.tmc.kernel.bridge.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class BaseResultModel<T> implements Serializable {
    protected T data;
    protected String errorCode;
    protected String errorMsg;
    protected boolean success;

    public T getData() {
        return this.data;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMsg() {
        return this.errorMsg;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setData(T t11) {
        this.data = t11;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public void setSuccess(boolean z10) {
        this.success = z10;
    }
}
