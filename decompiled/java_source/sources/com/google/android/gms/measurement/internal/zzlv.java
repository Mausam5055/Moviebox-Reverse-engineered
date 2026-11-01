package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
final class zzlv implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzls zzd;

    zzlv(zzls zzlsVar, AtomicReference atomicReference, zzo zzoVar, boolean z10) {
        this.zza = atomicReference;
        this.zzb = zzoVar;
        this.zzc = z10;
        this.zzd = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    zzgb zzgbVar = this.zzd.zzb;
                    if (zzgbVar == null) {
                        this.zzd.zzj().zzg().zza("Failed to get all user properties; not connected to service");
                        this.zza.notify();
                    } else {
                        Preconditions.checkNotNull(this.zzb);
                        this.zza.set(zzgbVar.zza(this.zzb, this.zzc));
                        this.zzd.zzar();
                        this.zza.notify();
                    }
                } catch (RemoteException e11) {
                    this.zzd.zzj().zzg().zza("Failed to get all user properties; remote exception", e11);
                    this.zza.notify();
                }
            } catch (Throwable th2) {
                this.zza.notify();
                throw th2;
            }
        }
    }
}
