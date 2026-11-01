package com.google.android.gms.measurement.internal;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
final class zzjz implements Executor {
    private final /* synthetic */ zzjq zza;

    zzjz(zzjq zzjqVar) {
        this.zza = zzjqVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zza.zzl().zzb(runnable);
    }
}
