package com.facebook.biddingkit.http.client;

/* JADX INFO: loaded from: classes3.dex */
public enum HttpMethod {
    GET(true, false),
    POST(true, true);

    private boolean doInput;
    private boolean doOutput;

    HttpMethod(boolean z10, boolean z11) {
        this.doInput = z10;
        this.doOutput = z11;
    }

    public boolean getDoInput() {
        return this.doInput;
    }

    public boolean getDoOutput() {
        return this.doOutput;
    }

    public String getMethodName() {
        return toString();
    }
}
