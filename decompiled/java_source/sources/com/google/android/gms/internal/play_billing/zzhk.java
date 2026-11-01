package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzhk extends zzhm {
    zzhk(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final double zza(Object obj, long j11) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j11));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final float zzb(Object obj, long j11) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j11));
    }

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzhn.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzhn.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 'z' boolean)' in method call: com.google.android.gms.internal.play_billing.zzhn.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 boolean)' in method call: com.google.android.gms.internal.play_billing.zzhn.zzi(java.lang.Object, long, boolean):void */
    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zzc(Object obj, long j11, boolean z10) {
        if (zzhn.zzb) {
            zzhn.zzi(obj, j11, z10);
        } else {
            zzhn.zzj(obj, j11, z10);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zzd(Object obj, long j11, byte b11) {
        if (zzhn.zzb) {
            zzhn.zzD(obj, j11, b11);
        } else {
            zzhn.zzE(obj, j11, b11);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zze(Object obj, long j11, double d11) {
        this.zza.putLong(obj, j11, Double.doubleToLongBits(d11));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zzf(Object obj, long j11, float f11) {
        this.zza.putInt(obj, j11, Float.floatToIntBits(f11));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final boolean zzg(Object obj, long j11) {
        return zzhn.zzb ? zzhn.zzt(obj, j11) : zzhn.zzu(obj, j11);
    }
}
