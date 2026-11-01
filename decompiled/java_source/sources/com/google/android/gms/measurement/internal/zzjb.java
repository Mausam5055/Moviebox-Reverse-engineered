package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzjb implements Callable<List<zzop>> {
    private final /* synthetic */ String zza;
    private final /* synthetic */ zzic zzb;

    zzjb(zzic zzicVar, String str) {
        this.zza = str;
        this.zzb = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzop> call() throws Exception {
        this.zzb.zza.zzr();
        return this.zzb.zza.zzf().zzl(this.zza);
    }
}
