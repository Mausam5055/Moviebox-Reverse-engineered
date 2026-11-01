package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbog implements Runnable {
    final /* synthetic */ zzboh zza;

    zzbog(zzboh zzbohVar) {
        this.zza = zzbohVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzf.zzD = true;
        zzbpo zzbpoVar = this.zza.zzf;
        zzbpoVar.zzy.zzd(zzbpoVar.zzw.zza, this.zza.zzf.zzw.zzb, this.zza.zzf.zzw.zzc);
    }
}
