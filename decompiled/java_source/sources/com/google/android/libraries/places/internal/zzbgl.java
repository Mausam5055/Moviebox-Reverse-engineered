package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbgl implements Runnable {
    final /* synthetic */ StringBuilder zza;
    final /* synthetic */ zzbgz zzb;

    zzbgl(zzbgz zzbgzVar, StringBuilder sb2) {
        this.zza = sb2;
        this.zzb = zzbgzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzl(zzbdo.zze.zzg(this.zza.toString()), true);
    }
}
