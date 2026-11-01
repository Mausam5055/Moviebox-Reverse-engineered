package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzhm {
    final Unsafe zza;

    zzhm(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract double zza(Object obj, long j11);

    public abstract float zzb(Object obj, long j11);

    public abstract void zzc(Object obj, long j11, boolean z10);

    public abstract void zzd(Object obj, long j11, byte b11);

    public abstract void zze(Object obj, long j11, double d11);

    public abstract void zzf(Object obj, long j11, float f11);

    public abstract boolean zzg(Object obj, long j11);
}
