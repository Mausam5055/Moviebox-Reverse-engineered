package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzlo implements Runnable {
    private final /* synthetic */ zzlj zza;

    zzlo(zzlj zzljVar) {
        this.zza = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zza;
        zzljVar.zza = zzljVar.zzh;
    }
}
