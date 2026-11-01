package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzmm implements Runnable {
    private final /* synthetic */ boolean zza = true;
    private final /* synthetic */ zzo zzb;
    private final /* synthetic */ boolean zzc;
    private final /* synthetic */ zzae zzd;
    private final /* synthetic */ zzae zze;
    private final /* synthetic */ zzls zzf;

    zzmm(zzls zzlsVar, boolean z10, zzo zzoVar, boolean z11, zzae zzaeVar, zzae zzaeVar2) {
        this.zzb = zzoVar;
        this.zzc = z11;
        this.zzd = zzaeVar;
        this.zze = zzaeVar2;
        this.zzf = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzf.zzb;
        if (zzgbVar == null) {
            this.zzf.zzj().zzg().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zza) {
            Preconditions.checkNotNull(this.zzb);
            this.zzf.zza(zzgbVar, this.zzc ? null : this.zzd, this.zzb);
        } else {
            try {
                if (TextUtils.isEmpty(this.zze.zza)) {
                    Preconditions.checkNotNull(this.zzb);
                    zzgbVar.zza(this.zzd, this.zzb);
                } else {
                    zzgbVar.zza(this.zzd);
                }
            } catch (RemoteException e11) {
                this.zzf.zzj().zzg().zza("Failed to send conditional user property to the service", e11);
            }
        }
        this.zzf.zzar();
    }
}
