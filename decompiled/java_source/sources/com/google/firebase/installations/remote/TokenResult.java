package com.google.firebase.installations.remote;

/* JADX INFO: loaded from: classes.dex */
public abstract class TokenResult {

    public enum ResponseCode {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class a {
        public abstract TokenResult a();

        public abstract a b(ResponseCode responseCode);

        public abstract a c(String str);

        public abstract a d(long j11);
    }

    public static a a() {
        return new b.C0444b().d(0L);
    }

    public abstract ResponseCode b();

    public abstract String c();

    public abstract long d();
}
