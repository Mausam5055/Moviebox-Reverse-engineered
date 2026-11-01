package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
final class zzll implements Runnable {
    private final /* synthetic */ zzlk zza;
    private final /* synthetic */ zzlk zzb;
    private final /* synthetic */ long zzc;
    private final /* synthetic */ boolean zzd;
    private final /* synthetic */ zzlj zze;

    zzll(zzlj zzljVar, zzlk zzlkVar, zzlk zzlkVar2, long j11, boolean z10) {
        this.zza = zzlkVar;
        this.zzb = zzlkVar2;
        this.zzc = j11;
        this.zzd = z10;
        this.zze = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zza(this.zza, this.zzb, this.zzc, this.zzd, (Bundle) null);
    }
}
