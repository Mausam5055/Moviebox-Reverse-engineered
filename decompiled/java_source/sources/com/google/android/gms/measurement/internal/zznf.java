package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zznf implements Runnable {
    long zza;
    long zzb;
    final /* synthetic */ zzng zzc;

    zznf(zzng zzngVar, long j11, long j12) {
        this.zzc = zzngVar;
        this.zza = j11;
        this.zzb = j12;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzni
            @Override // java.lang.Runnable
            public final void run() {
                zznf zznfVar = this.zza;
                zzng zzngVar = zznfVar.zzc;
                long j11 = zznfVar.zza;
                long j12 = zznfVar.zzb;
                zzngVar.zza.zzt();
                zzngVar.zza.zzj().zzc().zza("Application going to the background");
                zzngVar.zza.zzk().zzn.zza(true);
                zzngVar.zza.zza(true);
                if (!zzngVar.zza.zze().zzw()) {
                    if (zzngVar.zza.zze().zza(zzbh.zzcp)) {
                        zzngVar.zza.zza(false, false, j12);
                        zzngVar.zza.zzb.zzb(j12);
                    } else {
                        zzngVar.zza.zzb.zzb(j12);
                        zzngVar.zza.zza(false, false, j12);
                    }
                }
                zzngVar.zza.zzj().zzo().zza("Application backgrounded at: timestamp_millis", Long.valueOf(j11));
                if (zzngVar.zza.zze().zza(zzbh.zzdd)) {
                    zzngVar.zza.zzm().zzam();
                }
            }
        });
    }
}
