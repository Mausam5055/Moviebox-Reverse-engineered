package com.mbridge.msdk.thrid.okio;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f38439a;

    public g(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f38439a = rVar;
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j11) throws IOException {
        this.f38439a.a(cVar, j11);
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public t b() {
        return this.f38439a.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f38439a.close();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() throws IOException {
        this.f38439a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f38439a.toString() + ")";
    }
}
