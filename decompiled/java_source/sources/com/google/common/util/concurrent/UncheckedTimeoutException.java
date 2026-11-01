package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
public class UncheckedTimeoutException extends RuntimeException {
    private static final long serialVersionUID = 0;

    public UncheckedTimeoutException() {
    }

    public UncheckedTimeoutException(String str) {
        super(str);
    }

    public UncheckedTimeoutException(String str, Throwable th2) {
        super(str, th2);
    }

    public UncheckedTimeoutException(Throwable th2) {
        super(th2);
    }
}
