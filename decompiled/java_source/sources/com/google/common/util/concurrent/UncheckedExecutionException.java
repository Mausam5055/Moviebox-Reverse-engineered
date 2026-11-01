package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
public class UncheckedExecutionException extends RuntimeException {
    private static final long serialVersionUID = 0;

    @Deprecated
    protected UncheckedExecutionException() {
    }

    @Deprecated
    protected UncheckedExecutionException(String str) {
        super(str);
    }

    public UncheckedExecutionException(String str, Throwable th2) {
        super(str, th2);
    }

    public UncheckedExecutionException(Throwable th2) {
        super(th2);
    }
}
