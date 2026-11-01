package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t f38475d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f38476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f38477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f38478c;

    static class a extends t {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public t a(long j11) {
            return this;
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public t a(long j11, TimeUnit timeUnit) {
            return this;
        }

        @Override // com.mbridge.msdk.thrid.okio.t
        public void e() throws IOException {
        }
    }

    public t a() {
        this.f38476a = false;
        return this;
    }

    public t a(long j11) {
        this.f38476a = true;
        this.f38477b = j11;
        return this;
    }

    public t a(long j11, TimeUnit timeUnit) {
        if (j11 >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f38478c = timeUnit.toNanos(j11);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j11);
    }

    public t b() {
        this.f38478c = 0L;
        return this;
    }

    public long c() {
        if (this.f38476a) {
            return this.f38477b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f38476a;
    }

    public void e() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f38476a && this.f38477b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public long f() {
        return this.f38478c;
    }
}
