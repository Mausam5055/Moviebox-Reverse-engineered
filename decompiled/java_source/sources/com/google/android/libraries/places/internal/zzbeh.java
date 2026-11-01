package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbeh implements Runnable {
    final /* synthetic */ zzbvq zza;
    final /* synthetic */ zzbei zzb;

    zzbeh(zzbei zzbeiVar, zzbvq zzbvqVar, int i11) {
        this.zza = zzbvqVar;
        this.zzb = zzbeiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i11 = zzbvr.zza;
            this.zzb.zzr.zzc(2);
        } catch (Throwable th2) {
            this.zzb.zzF(th2);
        }
    }
}
