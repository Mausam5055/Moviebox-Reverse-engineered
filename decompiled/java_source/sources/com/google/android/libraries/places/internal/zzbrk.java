package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
final class zzbrk implements zzbts {
    private static final Logger zza = Logger.getLogger(zzbsf.class.getName());
    private final zzbrj zzb;
    private final zzbts zzc;
    private final zzbsi zzd = new zzbsi(Level.FINE, zzbsf.class);

    zzbrk(zzbrj zzbrjVar, zzbts zzbtsVar) {
        this.zzb = zzbrjVar;
        this.zzc = zzbtsVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.zzc.close();
        } catch (IOException e11) {
            zza.logp(e11.getClass().equals(IOException.class) ? Level.FINE : Level.INFO, "io.grpc.okhttp.ExceptionHandlingFrameWriter", "close", "Failed closing connection", (Throwable) e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zza(zzbue zzbueVar) {
        this.zzd.zzi(2);
        try {
            this.zzc.zza(zzbueVar);
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzb(boolean z10, int i11, int i12) {
        long j11 = (((long) i11) << 32) | (((long) i12) & 4294967295L);
        if (z10) {
            this.zzd.zze(2, j11);
        } else {
            this.zzd.zzd(2, j11);
        }
        try {
            this.zzc.zzb(z10, i11, i12);
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzc(int i11, zzbtp zzbtpVar) {
        this.zzd.zzg(2, i11, zzbtpVar);
        try {
            this.zzc.zzc(i11, zzbtpVar);
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final int zzd() {
        return this.zzc.zzd();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zze() {
        try {
            this.zzc.zze();
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzf(boolean z10, int i11, zzbwb zzbwbVar, int i12) {
        this.zzd.zza(2, i11, zzbwbVar, i12, z10);
        try {
            this.zzc.zzf(z10, i11, zzbwbVar, i12);
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzg() {
        try {
            this.zzc.zzg();
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzh(int i11, zzbtp zzbtpVar, byte[] bArr) {
        zzbwe zzbweVar = zzbwf.zza;
        this.zzd.zzb(2, 0, zzbtpVar, zzbwe.zzb(bArr));
        try {
            this.zzc.zzh(0, zzbtpVar, bArr);
            this.zzc.zzg();
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzi(zzbue zzbueVar) {
        this.zzd.zzh(2, zzbueVar);
        try {
            this.zzc.zzi(zzbueVar);
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzj(boolean z10, boolean z11, int i11, int i12, List list) {
        try {
            this.zzc.zzj(false, false, i11, 0, list);
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzk(int i11, long j11) {
        this.zzd.zzj(2, i11, j11);
        try {
            this.zzc.zzk(i11, j11);
        } catch (IOException e11) {
            this.zzb.zzb(e11);
        }
    }
}
