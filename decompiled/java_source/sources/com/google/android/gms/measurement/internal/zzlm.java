package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
final class zzlm implements Runnable {
    private final /* synthetic */ Bundle zza;
    private final /* synthetic */ zzlk zzb;
    private final /* synthetic */ zzlk zzc;
    private final /* synthetic */ long zzd;
    private final /* synthetic */ zzlj zze;

    zzlm(zzlj zzljVar, Bundle bundle, zzlk zzlkVar, zzlk zzlkVar2, long j11) {
        this.zza = bundle;
        this.zzb = zzlkVar;
        this.zzc = zzlkVar2;
        this.zzd = j11;
        this.zze = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj.zza(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
