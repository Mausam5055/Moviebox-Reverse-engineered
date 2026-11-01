package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzmp implements Runnable {
    private final /* synthetic */ zzgb zza;
    private final /* synthetic */ zzmq zzb;

    zzmp(zzmq zzmqVar, zzgb zzgbVar) {
        this.zza = zzgbVar;
        this.zzb = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            try {
                this.zzb.zzb = false;
                if (!this.zzb.zza.zzal()) {
                    this.zzb.zza.zzj().zzp().zza("Connected to service");
                    this.zzb.zza.zza(this.zza);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
