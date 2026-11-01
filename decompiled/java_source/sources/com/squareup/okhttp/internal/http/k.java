package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class k implements Sink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f40529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f40530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Buffer f40531c;

    public k() {
        this(-1);
    }

    public k(int i11) {
        this.f40531c = new Buffer();
        this.f40530b = i11;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws ProtocolException {
        if (this.f40529a) {
            return;
        }
        this.f40529a = true;
        if (this.f40531c.size() >= this.f40530b) {
            return;
        }
        throw new ProtocolException("content-length promised " + this.f40530b + " bytes, but received " + this.f40531c.size());
    }

    public long d() {
        return this.f40531c.size();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
    }

    public void h(Sink sink) throws IOException {
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.f40531c;
        buffer2.copyTo(buffer, 0L, buffer2.size());
        sink.write(buffer, buffer.size());
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j11) throws ProtocolException {
        if (this.f40529a) {
            throw new IllegalStateException("closed");
        }
        com.squareup.okhttp.internal.g.a(buffer.size(), 0L, j11);
        if (this.f40530b == -1 || this.f40531c.size() <= ((long) this.f40530b) - j11) {
            this.f40531c.write(buffer, j11);
            return;
        }
        throw new ProtocolException("exceeded content-length limit of " + this.f40530b + " bytes");
    }
}
