package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzmr implements Runnable {
    private final /* synthetic */ zzgb zza;
    private final /* synthetic */ zzmq zzb;

    zzmr(zzmq zzmqVar, zzgb zzgbVar) {
        this.zza = zzgbVar;
        this.zzb = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            try {
                this.zzb.zzb = false;
                if (!this.zzb.zza.zzal()) {
                    this.zzb.zza.zzj().zzc().zza("Connected to remote service");
                    this.zzb.zza.zza(this.zza);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
