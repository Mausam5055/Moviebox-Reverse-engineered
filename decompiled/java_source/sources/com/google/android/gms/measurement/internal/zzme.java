package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzme implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzls zzb;

    zzme(zzls zzlsVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar = this.zzb.zzb;
        if (zzgbVar == null) {
            this.zzb.zzj().zzu().zza("Failed to send app backgrounded");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzgbVar.zzc(this.zza);
            this.zzb.zzar();
        } catch (RemoteException e11) {
            this.zzb.zzj().zzg().zza("Failed to send app backgrounded to the service", e11);
        }
    }
}
