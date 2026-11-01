package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzhx implements Thread.UncaughtExceptionHandler {
    private final String zza;
    private final /* synthetic */ zzhv zzb;

    public zzhx(zzhv zzhvVar, String str) {
        this.zzb = zzhvVar;
        Preconditions.checkNotNull(str);
        this.zza = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th2) {
        this.zzb.zzj().zzg().zza(this.zza, th2);
    }
}
