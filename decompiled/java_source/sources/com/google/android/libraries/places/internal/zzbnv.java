package com.google.android.libraries.places.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public interface zzbnv extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void zzb();

    void zzc();

    boolean zzd();

    int zze();

    int zzf();

    zzbnv zzg(int i11);

    void zzi(ByteBuffer byteBuffer);

    void zzj(OutputStream outputStream, int i11) throws IOException;

    void zzk(byte[] bArr, int i11, int i12);

    void zzl(int i11);
}
