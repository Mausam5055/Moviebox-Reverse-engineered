package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbhm implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzbhy zzb;

    zzbhm(zzbhy zzbhyVar, int i11) {
        this.zza = i11;
        this.zzb = zzbhyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzc.zzn(this.zza);
    }
}
