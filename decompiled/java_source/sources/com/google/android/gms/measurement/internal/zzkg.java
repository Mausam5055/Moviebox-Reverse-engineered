package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzkg implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzjq zzb;

    zzkg(zzjq zzjqVar, long j11) {
        this.zza = j11;
        this.zzb = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzk().zzf.zza(this.zza);
        this.zzb.zzj().zzc().zza("Session timeout duration set", Long.valueOf(this.zza));
    }
}
