package com.google.android.libraries.places.internal;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
final class zzbpn {
    final int zza;
    final int zzb;
    final int zzc;
    final AtomicInteger zzd;

    zzbpn(float f11, float f12) {
        AtomicInteger atomicInteger = new AtomicInteger();
        this.zzd = atomicInteger;
        this.zzc = (int) (f12 * 1000.0f);
        int i11 = (int) (f11 * 1000.0f);
        this.zza = i11;
        this.zzb = i11 / 2;
        atomicInteger.set(i11);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbpn)) {
            return false;
        }
        zzbpn zzbpnVar = (zzbpn) obj;
        return this.zza == zzbpnVar.zza && this.zzc == zzbpnVar.zzc;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zza), Integer.valueOf(this.zzc)});
    }

    final boolean zza() {
        return this.zzd.get() > this.zzb;
    }

    final boolean zzb() {
        int i11;
        int i12;
        do {
            i11 = this.zzd.get();
            if (i11 == 0) {
                return false;
            }
            i12 = i11 - 1000;
        } while (!this.zzd.compareAndSet(i11, Math.max(i12, 0)));
        return i12 > this.zzb;
    }
}
