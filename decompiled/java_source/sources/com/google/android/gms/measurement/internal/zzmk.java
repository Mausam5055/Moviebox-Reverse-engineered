package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzmk implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzls zzb;

    zzmk(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzg().zza("Failed to send consent settings to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zzf(this.zza);
            this.zzb.zzar();
        } catch (RemoteException e11) {
            this.zzb.zzj().zzg().zza("Failed to send consent settings to the service", e11);
        }
    }
}
