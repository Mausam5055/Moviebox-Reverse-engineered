package com.google.android.libraries.places.internal;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public interface zzbwq extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    void zzn(zzbwb zzbwbVar, long j11) throws IOException;
}
