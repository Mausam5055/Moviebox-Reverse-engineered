package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbpi implements Runnable {
    final /* synthetic */ zzbpm zza;
    final /* synthetic */ zzbpl zzb;

    zzbpi(zzbpl zzbplVar, zzbpm zzbpmVar) {
        this.zza = zzbpmVar;
        this.zzb = zzbplVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb.zzai(this.zza);
    }
}
