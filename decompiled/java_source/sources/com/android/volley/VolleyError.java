package com.android.volley;

/* JADX INFO: loaded from: classes2.dex */
public class VolleyError extends Exception {
    public final g networkResponse;
    private long networkTimeMs;

    public VolleyError() {
        this.networkResponse = null;
    }

    public VolleyError(g gVar) {
        this.networkResponse = gVar;
    }

    public VolleyError(String str) {
        super(str);
        this.networkResponse = null;
    }

    public VolleyError(String str, Throwable th2) {
        super(str, th2);
        this.networkResponse = null;
    }

    public VolleyError(Throwable th2) {
        super(th2);
        this.networkResponse = null;
    }

    public long getNetworkTimeMs() {
        return this.networkTimeMs;
    }

    void setNetworkTimeMs(long j11) {
        this.networkTimeMs = j11;
    }
}
