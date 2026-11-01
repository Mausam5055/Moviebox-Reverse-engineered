package com.mbridge.msdk.thrid.okhttp.internal.connection;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IOException f37956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IOException f37957b;

    public e(IOException iOException) {
        super(iOException);
        this.f37956a = iOException;
        this.f37957b = iOException;
    }

    public IOException a() {
        return this.f37956a;
    }

    public void a(IOException iOException) {
        com.mbridge.msdk.thrid.okhttp.internal.c.a((Throwable) this.f37956a, (Throwable) iOException);
        this.f37957b = iOException;
    }

    public IOException b() {
        return this.f37957b;
    }
}
