package com.google.zxing;

/* JADX INFO: loaded from: classes4.dex */
public final class FormatException extends ReaderException {
    private static final FormatException INSTANCE;

    static {
        FormatException formatException = new FormatException();
        INSTANCE = formatException;
        formatException.setStackTrace(ReaderException.NO_TRACE);
    }

    private FormatException() {
    }

    private FormatException(Throwable th2) {
        super(th2);
    }

    public static FormatException getFormatInstance() {
        return ReaderException.isStackTrace ? new FormatException() : INSTANCE;
    }

    public static FormatException getFormatInstance(Throwable th2) {
        return ReaderException.isStackTrace ? new FormatException(th2) : INSTANCE;
    }
}
