package com.alibaba.sdk.android.oss;

import com.alibaba.sdk.android.oss.common.OSSLog;

/* JADX INFO: loaded from: classes2.dex */
public class ClientException extends Exception {
    private Boolean canceled;

    public ClientException() {
        this.canceled = Boolean.FALSE;
    }

    public ClientException(String str) {
        super("[ErrorMessage]: " + str);
        this.canceled = Boolean.FALSE;
    }

    public ClientException(String str, Throwable th2) {
        this(str, th2, Boolean.FALSE);
    }

    public ClientException(String str, Throwable th2, Boolean bool) {
        super("[ErrorMessage]: " + str, th2);
        this.canceled = bool;
        OSSLog.logThrowable2Local(this);
    }

    public ClientException(Throwable th2) {
        super(th2);
        this.canceled = Boolean.FALSE;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (getCause() == null) {
            return message;
        }
        return getCause().getMessage() + "\n" + message;
    }

    public Boolean isCanceledException() {
        return this.canceled;
    }
}
