package com.google.android.datatransport.runtime.backends;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BackendResponse {

    public enum Status {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR,
        INVALID_PAYLOAD
    }

    public static BackendResponse a() {
        return new a(Status.FATAL_ERROR, -1L);
    }

    public static BackendResponse d() {
        return new a(Status.INVALID_PAYLOAD, -1L);
    }

    public static BackendResponse e(long j11) {
        return new a(Status.OK, j11);
    }

    public static BackendResponse f() {
        return new a(Status.TRANSIENT_ERROR, -1L);
    }

    public abstract long b();

    public abstract Status c();
}
