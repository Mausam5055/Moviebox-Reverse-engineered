package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
final class zzmd implements Runnable {
    private final /* synthetic */ zzlk zza;
    private final /* synthetic */ zzls zzb;

    zzmd(zzls zzlsVar, zzlk zzlkVar) {
        this.zza = zzlkVar;
        this.zzb = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzg().zza("Failed to send current screen to service");
            return;
        }
        try {
            zzlk zzlkVar = this.zza;
            if (zzlkVar == null) {
                zzgbVar.zza(0L, (String) null, (String) null, this.zzb.zza().getPackageName());
            } else {
                zzgbVar.zza(zzlkVar.zzc, zzlkVar.zza, zzlkVar.zzb, this.zzb.zza().getPackageName());
            }
            this.zzb.zzar();
        } catch (RemoteException e11) {
            this.zzb.zzj().zzg().zza("Failed to send current screen to the service", e11);
        }
    }
}
