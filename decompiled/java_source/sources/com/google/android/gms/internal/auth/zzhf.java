package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzhf extends zzhh {
    zzhf(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final double zza(Object obj, long j11) {
        return Double.longBitsToDouble(zzj(obj, j11));
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final float zzb(Object obj, long j11) {
        return Float.intBitsToFloat(zzi(obj, j11));
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final void zzc(Object obj, long j11, boolean z10) {
        if (zzhi.zza) {
            zzhi.zzi(obj, j11, z10);
        } else {
            zzhi.zzj(obj, j11, z10);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final void zzd(Object obj, long j11, double d11) {
        zzn(obj, j11, Double.doubleToLongBits(d11));
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final void zze(Object obj, long j11, float f11) {
        zzm(obj, j11, Float.floatToIntBits(f11));
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final boolean zzf(Object obj, long j11) {
        return zzhi.zza ? zzhi.zzq(obj, j11) : zzhi.zzr(obj, j11);
    }
}
