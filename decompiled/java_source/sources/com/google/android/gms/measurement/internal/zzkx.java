package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzkx implements Runnable {
    private final /* synthetic */ zzje zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ zzje zze;
    private final /* synthetic */ zzjq zzf;

    zzkx(zzjq zzjqVar, zzje zzjeVar, long j11, long j12, boolean z10, zzje zzjeVar2) {
        this.zza = zzjeVar;
        this.zzb = j11;
        this.zzc = j12;
        this.zzd = z10;
        this.zze = zzjeVar2;
        this.zzf = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzf.zza(this.zza);
        if (!com.google.android.gms.internal.measurement.zznm.zza() || !this.zzf.zze().zza(zzbh.zzcx)) {
            this.zzf.zza(this.zzb, false);
        }
        zzjq.zza(this.zzf, this.zza, this.zzc, true, this.zzd);
        zzjq.zza(this.zzf, this.zza, this.zze);
    }
}
