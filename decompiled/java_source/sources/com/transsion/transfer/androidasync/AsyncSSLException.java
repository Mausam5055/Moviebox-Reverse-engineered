package com.transsion.transfer.androidasync;

/* JADX INFO: loaded from: classes6.dex */
public class AsyncSSLException extends Exception {
    private boolean mIgnore;

    public AsyncSSLException(Throwable th2) {
        super("Peer not trusted by any of the system trust managers.", th2);
        this.mIgnore = false;
    }

    public boolean getIgnore() {
        return this.mIgnore;
    }

    public void setIgnore(boolean z10) {
        this.mIgnore = z10;
    }
}
