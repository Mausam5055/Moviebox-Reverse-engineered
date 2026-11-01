package com.amazonaws;

/* JADX INFO: loaded from: classes2.dex */
public class AbortedException extends AmazonClientException {
    private static final long serialVersionUID = 1;

    public AbortedException() {
        super("");
    }

    public AbortedException(String str) {
        super(str);
    }

    public AbortedException(String str, Throwable th2) {
        super(str, th2);
    }

    public AbortedException(Throwable th2) {
        super("", th2);
    }

    @Override // com.amazonaws.AmazonClientException
    public boolean isRetryable() {
        return false;
    }
}
