package com.google.android.libraries.places.internal;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzawv extends zzaww {
    zzawv(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.libraries.places.internal.zzaww
    public final double zza(Object obj, long j11) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j11));
    }

    @Override // com.google.android.libraries.places.internal.zzaww
    public final float zzb(Object obj, long j11) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j11));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.libraries.places.internal.zzawx.zzi(java.lang.Object, long, boolean):void
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:80)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:50)
        Caused by: java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList.removeIf(Unknown Source)
        */
    @Override // com.google.android.libraries.places.internal.zzaww
    public final void zzc(java.lang.Object r2, long r3, boolean r5) {
        /*
            r1 = this;
            boolean r0 = com.google.android.libraries.places.internal.zzawx.zzb
            if (r0 == 0) goto L8
            com.google.android.libraries.places.internal.zzawx.zzi(r2, r3, r5)
            return
        L8:
            com.google.android.libraries.places.internal.zzawx.zzj(r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.places.internal.zzawv.zzc(java.lang.Object, long, boolean):void");
    }

    @Override // com.google.android.libraries.places.internal.zzaww
    public final void zzd(Object obj, long j11, byte b11) {
        if (zzawx.zzb) {
            zzawx.zzD(obj, j11, b11);
        } else {
            zzawx.zzE(obj, j11, b11);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzaww
    public final void zze(Object obj, long j11, double d11) {
        this.zza.putLong(obj, j11, Double.doubleToLongBits(d11));
    }

    @Override // com.google.android.libraries.places.internal.zzaww
    public final void zzf(Object obj, long j11, float f11) {
        this.zza.putInt(obj, j11, Float.floatToIntBits(f11));
    }

    @Override // com.google.android.libraries.places.internal.zzaww
    public final boolean zzg(Object obj, long j11) {
        return zzawx.zzb ? zzawx.zzt(obj, j11) : zzawx.zzu(obj, j11);
    }
}
