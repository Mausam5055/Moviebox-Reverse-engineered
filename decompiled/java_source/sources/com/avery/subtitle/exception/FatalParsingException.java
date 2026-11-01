package com.avery.subtitle.exception;

/* JADX INFO: loaded from: classes2.dex */
public class FatalParsingException extends Exception {
    private static final long serialVersionUID = 6798827566637277804L;
    private String parsingError;

    public FatalParsingException(String str) {
        super(str);
        this.parsingError = str;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.parsingError;
    }
}
