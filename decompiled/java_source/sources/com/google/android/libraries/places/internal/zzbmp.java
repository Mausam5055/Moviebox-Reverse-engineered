package com.google.android.libraries.places.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
final class zzbmp extends FilterInputStream {
    private final int zza;
    private final zzbqo zzb;
    private long zzc;
    private long zzd;
    private long zze;

    zzbmp(InputStream inputStream, int i11, zzbqo zzbqoVar) {
        super(inputStream);
        this.zze = -1L;
        this.zza = i11;
        this.zzb = zzbqoVar;
    }

    private final void zza() {
        long j11 = this.zzd;
        long j12 = this.zzc;
        if (j11 > j12) {
            this.zzb.zzg(j11 - j12);
            this.zzc = this.zzd;
        }
    }

    private final void zzb() {
        long j11 = this.zzd;
        int i11 = this.zza;
        if (j11 <= i11) {
            return;
        }
        throw new zzbdq(zzbdo.zzj.zzg("Decompressed gRPC message exceeds maximum size " + i11), null);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i11) {
        ((FilterInputStream) this).in.mark(i11);
        this.zze = this.zzd;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i11 = ((FilterInputStream) this).in.read();
        if (i11 != -1) {
            this.zzd++;
        }
        zzb();
        zza();
        return i11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i11, int i12) throws IOException {
        int i13 = ((FilterInputStream) this).in.read(bArr, i11, i12);
        if (i13 != -1) {
            this.zzd += (long) i13;
        }
        zzb();
        zza();
        return i13;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.zze == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.zzd = this.zze;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j11) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(j11);
        this.zzd += jSkip;
        zzb();
        zza();
        return jSkip;
    }
}
