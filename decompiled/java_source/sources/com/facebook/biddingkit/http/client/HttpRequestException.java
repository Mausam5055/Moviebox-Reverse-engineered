package com.facebook.biddingkit.http.client;

import l8.e;

/* JADX INFO: loaded from: classes3.dex */
public class HttpRequestException extends Exception {
    private static final long serialVersionUID = -2413629666163901633L;
    private e httpResponse;

    public HttpRequestException(Exception exc, e eVar) {
        super(exc);
        this.httpResponse = eVar;
    }

    public e getHttpResponse() {
        return this.httpResponse;
    }
}
