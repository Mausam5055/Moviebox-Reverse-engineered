package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzln implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzlj zzb;

    zzln(zzlj zzljVar, long j11) {
        this.zza = j11;
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzc().zza(this.zza);
        this.zzb.zza = null;
    }
}
