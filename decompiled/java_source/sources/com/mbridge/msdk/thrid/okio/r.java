package com.mbridge.msdk.thrid.okio;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface r extends Closeable, Flushable {
    void a(c cVar, long j11) throws IOException;

    t b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;
}
