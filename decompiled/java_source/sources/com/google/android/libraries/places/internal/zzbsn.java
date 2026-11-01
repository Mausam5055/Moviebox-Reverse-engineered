package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbsn implements zzbra {
    private final zzbwb zza;
    private int zzb;
    private int zzc;

    zzbsn(zzbwb zzbwbVar, int i11) {
        this.zza = zzbwbVar;
        this.zzb = i11;
    }

    @Override // com.google.android.libraries.places.internal.zzbra
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.libraries.places.internal.zzbra
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.libraries.places.internal.zzbra
    public final void zzc(byte b11) {
        this.zza.zzm(b11);
        this.zzb--;
        this.zzc++;
    }

    @Override // com.google.android.libraries.places.internal.zzbra
    public final void zzd(byte[] bArr, int i11, int i12) {
        this.zza.zzl(bArr, i11, i12);
        this.zzb -= i12;
        this.zzc += i12;
    }

    final zzbwb zze() {
        return this.zza;
    }
}
