package com.google.android.libraries.places.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
final class zzbsl extends zzbeg {
    private final zzbwb zza;

    zzbsl(zzbwb zzbwbVar) {
        this.zza = zzbwbVar;
    }

    @Override // com.google.android.libraries.places.internal.zzbeg, com.google.android.libraries.places.internal.zzbnv, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws EOFException {
        zzbwb zzbwbVar = this.zza;
        zzbwbVar.zzF(zzbwbVar.zzg());
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final int zze() {
        try {
            return this.zza.zzc() & 255;
        } catch (EOFException e11) {
            throw new IndexOutOfBoundsException(e11.getMessage());
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final int zzf() {
        return (int) this.zza.zzg();
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final zzbnv zzg(int i11) {
        zzbwb zzbwbVar = new zzbwb();
        zzbwbVar.zzn(this.zza, i11);
        return new zzbsl(zzbwbVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzi(ByteBuffer byteBuffer) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzj(OutputStream outputStream, int i11) throws IOException {
        this.zza.zzr(outputStream, i11);
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzk(byte[] bArr, int i11, int i12) {
        while (i12 > 0) {
            int iZzd = this.zza.zzd(bArr, i11, i12);
            if (iZzd == -1) {
                throw new IndexOutOfBoundsException("EOF trying to read " + i12 + " bytes");
            }
            i12 -= iZzd;
            i11 += iZzd;
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbnv
    public final void zzl(int i11) {
        try {
            this.zza.zzF(i11);
        } catch (EOFException e11) {
            throw new IndexOutOfBoundsException(e11.getMessage());
        }
    }
}
