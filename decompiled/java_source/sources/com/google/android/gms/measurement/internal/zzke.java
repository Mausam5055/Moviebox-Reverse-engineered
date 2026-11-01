package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzke implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzjq zzb;

    zzke(zzjq zzjqVar, boolean z10) {
        this.zza = z10;
        this.zzb = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zZzac = this.zzb.zzu.zzac();
        boolean zZzab = this.zzb.zzu.zzab();
        this.zzb.zzu.zza(this.zza);
        if (zZzab == this.zza) {
            this.zzb.zzu.zzj().zzp().zza("Default data collection state already set to", Boolean.valueOf(this.zza));
        }
        if (this.zzb.zzu.zzac() == zZzac || this.zzb.zzu.zzac() != this.zzb.zzu.zzab()) {
            this.zzb.zzu.zzj().zzv().zza("Default data collection is different than actual status", Boolean.valueOf(this.zza), Boolean.valueOf(zZzac));
        }
        this.zzb.zzav();
    }
}
