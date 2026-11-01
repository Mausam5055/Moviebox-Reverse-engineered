package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
final class zzmn implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzo zze;
    private final /* synthetic */ boolean zzf;
    private final /* synthetic */ zzls zzg;

    zzmn(zzls zzlsVar, AtomicReference atomicReference, String str, String str2, String str3, zzo zzoVar, boolean z10) {
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzoVar;
        this.zzf = z10;
        this.zzg = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    zzgb zzgbVar = this.zzg.zzb;
                    if (zzgbVar == null) {
                        this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; not connected to service", zzgo.zza(this.zzb), this.zzc, this.zzd);
                        this.zza.set(Collections.emptyList());
                        this.zza.notify();
                    } else {
                        if (TextUtils.isEmpty(this.zzb)) {
                            Preconditions.checkNotNull(this.zze);
                            this.zza.set(zzgbVar.zza(this.zzc, this.zzd, this.zzf, this.zze));
                        } else {
                            this.zza.set(zzgbVar.zza(this.zzb, this.zzc, this.zzd, this.zzf));
                        }
                        this.zzg.zzar();
                        this.zza.notify();
                    }
                } catch (RemoteException e11) {
                    this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; remote exception", zzgo.zza(this.zzb), this.zzc, e11);
                    this.zza.set(Collections.emptyList());
                    this.zza.notify();
                }
            } catch (Throwable th2) {
                this.zza.notify();
                throw th2;
            }
        }
    }
}
