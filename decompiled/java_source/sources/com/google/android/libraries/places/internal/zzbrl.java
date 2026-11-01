package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class zzbrl implements zzbts {
    private final zzbts zza;

    public zzbrl(zzbts zzbtsVar) {
        this.zza = zzbtsVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zza.close();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public void zza(zzbue zzbueVar) throws IOException {
        this.zza.zza(zzbueVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public void zzb(boolean z10, int i11, int i12) throws IOException {
        this.zza.zzb(z10, i11, i12);
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public void zzc(int i11, zzbtp zzbtpVar) throws IOException {
        this.zza.zzc(i11, zzbtpVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final int zzd() {
        return this.zza.zzd();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zze() throws IOException {
        this.zza.zze();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzf(boolean z10, int i11, zzbwb zzbwbVar, int i12) throws IOException {
        this.zza.zzf(z10, i11, zzbwbVar, i12);
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzg() throws IOException {
        this.zza.zzg();
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzh(int i11, zzbtp zzbtpVar, byte[] bArr) throws IOException {
        this.zza.zzh(0, zzbtpVar, bArr);
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzi(zzbue zzbueVar) throws IOException {
        this.zza.zzi(zzbueVar);
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzj(boolean z10, boolean z11, int i11, int i12, List list) throws IOException {
        this.zza.zzj(false, false, i11, 0, list);
    }

    @Override // com.google.android.libraries.places.internal.zzbts
    public final void zzk(int i11, long j11) throws IOException {
        this.zza.zzk(i11, j11);
    }
}
