package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zziv implements Callable<zzaj> {
    private final /* synthetic */ zzo zza;
    private final /* synthetic */ zzic zzb;

    zziv(zzic zzicVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzaj call() throws Exception {
        this.zzb.zza.zzr();
        return new zzaj(this.zzb.zza.zza(this.zza.zza));
    }
}
