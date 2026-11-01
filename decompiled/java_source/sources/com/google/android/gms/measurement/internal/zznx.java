package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zznx implements Runnable {
    private final /* synthetic */ zzok zza;
    private final /* synthetic */ zznv zzb;

    zznx(zznv zznvVar, zzok zzokVar) {
        this.zza = zzokVar;
        this.zzb = zznvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv.zza(this.zzb, this.zza);
        this.zzb.zzv();
    }
}
