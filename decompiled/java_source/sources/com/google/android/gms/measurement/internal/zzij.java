package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzij implements Runnable {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzic zzb;

    zzij(zzic zzicVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzr();
        zznv zznvVar = this.zzb.zza;
        zzo zzoVar = this.zza;
        zznvVar.zzl().zzt();
        zznvVar.zzs();
        Preconditions.checkNotEmpty(zzoVar.zza);
        zznvVar.zza(zzoVar);
    }
}
