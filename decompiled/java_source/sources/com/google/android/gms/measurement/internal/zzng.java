package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzng {
    final /* synthetic */ zznb zza;
    private zznf zzb;

    zzng(zznb zznbVar) {
        this.zza = zznbVar;
    }

    final void zza() {
        this.zza.zzt();
        if (this.zzb != null) {
            this.zza.zzc.removeCallbacks(this.zzb);
        }
        this.zza.zzk().zzn.zza(false);
        this.zza.zza(false);
        if (this.zza.zze().zza(zzbh.zzcl) && this.zza.zzm().zzau()) {
            this.zza.zzj().zzp().zza("Retrying trigger URI registration in foreground");
            this.zza.zzm().zzas();
        }
    }

    final void zza(long j11) {
        this.zzb = new zznf(this, this.zza.zzb().currentTimeMillis(), j11);
        this.zza.zzc.postDelayed(this.zzb, 2000L);
    }
}
