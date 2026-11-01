package com.amazonaws.internal.keyvaluestore;

/* JADX INFO: loaded from: classes2.dex */
public class KeyNotFoundException extends Exception {
    private static final long serialVersionUID = 1;

    public KeyNotFoundException(String str) {
        super(str);
    }

    public KeyNotFoundException(String str, Throwable th2) {
        super(str, th2);
    }

    public KeyNotFoundException(Throwable th2) {
        super(th2);
    }
}
