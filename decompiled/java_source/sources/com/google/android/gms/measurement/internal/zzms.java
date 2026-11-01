package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes4.dex */
final class zzms implements Runnable {
    private final /* synthetic */ ComponentName zza;
    private final /* synthetic */ zzmq zzb;

    zzms(zzmq zzmqVar, ComponentName componentName) {
        this.zza = componentName;
        this.zzb = zzmqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzls.zza(this.zzb.zza, this.zza);
    }
}
