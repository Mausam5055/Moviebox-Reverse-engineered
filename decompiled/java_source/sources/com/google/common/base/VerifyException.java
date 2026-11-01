package com.google.common.base;

/* JADX INFO: loaded from: classes4.dex */
public class VerifyException extends RuntimeException {
    public VerifyException() {
    }

    public VerifyException(String str) {
        super(str);
    }

    public VerifyException(String str, Throwable th2) {
        super(str, th2);
    }

    public VerifyException(Throwable th2) {
        super(th2);
    }
}
