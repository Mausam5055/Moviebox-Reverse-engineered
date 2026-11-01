package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
public class ExecutionError extends Error {
    private static final long serialVersionUID = 0;

    @Deprecated
    protected ExecutionError() {
    }

    public ExecutionError(Error error) {
        super(error);
    }

    @Deprecated
    protected ExecutionError(String str) {
        super(str);
    }

    public ExecutionError(String str, Error error) {
        super(str, error);
    }
}
