package com.amazonaws.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CRC32MismatchException extends IOException {
    private static final long serialVersionUID = 1;

    public CRC32MismatchException(String str) {
        super(str);
    }

    public CRC32MismatchException(String str, Throwable th2) {
        super(str, th2);
    }
}
