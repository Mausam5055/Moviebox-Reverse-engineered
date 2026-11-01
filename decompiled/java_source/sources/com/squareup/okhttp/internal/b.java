package com.squareup.okhttp.internal;

import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* JADX INFO: loaded from: classes5.dex */
abstract class b extends ForwardingSink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f40288a;

    public b(Sink sink) {
        super(sink);
    }

    protected abstract void b(IOException iOException);

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f40288a) {
            return;
        }
        try {
            super.close();
        } catch (IOException e11) {
            this.f40288a = true;
            b(e11);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (this.f40288a) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e11) {
            this.f40288a = true;
            b(e11);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer buffer, long j11) throws EOFException {
        if (this.f40288a) {
            buffer.skip(j11);
            return;
        }
        try {
            super.write(buffer, j11);
        } catch (IOException e11) {
            this.f40288a = true;
            b(e11);
        }
    }
}
