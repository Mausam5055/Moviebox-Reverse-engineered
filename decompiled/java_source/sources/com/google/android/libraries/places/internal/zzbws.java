package com.google.android.libraries.places.internal;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public interface zzbws extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long zza(zzbwb zzbwbVar, long j11) throws IOException;
}
