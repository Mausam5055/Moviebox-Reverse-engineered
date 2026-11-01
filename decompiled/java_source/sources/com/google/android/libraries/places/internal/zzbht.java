package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbht implements Runnable {
    final /* synthetic */ zzbqq zza;
    final /* synthetic */ zzbhx zzb;

    zzbht(zzbhx zzbhxVar, zzbqq zzbqqVar) {
        this.zza = zzbqqVar;
        this.zzb = zzbhxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzf(this.zza);
    }
}
