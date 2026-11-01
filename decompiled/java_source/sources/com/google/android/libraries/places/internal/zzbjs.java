package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbjs extends zzbio {
    final /* synthetic */ zzbft zza;
    final /* synthetic */ zzbjt zzb;

    zzbjs(zzbjt zzbjtVar, zzbft zzbftVar) {
        this.zza = zzbftVar;
        this.zzb = zzbjtVar;
    }

    @Override // com.google.android.libraries.places.internal.zzbio
    protected final zzbft zza() {
        return this.zza;
    }

    @Override // com.google.android.libraries.places.internal.zzbio, com.google.android.libraries.places.internal.zzbft
    public final void zzd(zzbdo zzbdoVar, zzbfs zzbfsVar, zzbcf zzbcfVar) {
        this.zzb.zzb.zzb.zza(zzbdoVar.zzl());
        this.zza.zzd(zzbdoVar, zzbfsVar, zzbcfVar);
    }
}
