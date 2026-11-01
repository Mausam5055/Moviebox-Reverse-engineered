package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbhl implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzbhy zzb;

    zzbhl(zzbhy zzbhyVar, int i11) {
        this.zza = i11;
        this.zzb = zzbhyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzc.zzm(this.zza);
    }
}
