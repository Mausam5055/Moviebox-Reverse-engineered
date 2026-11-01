package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzmk<T, B> {
    private static volatile int zza = 100;

    zzmk() {
    }

    abstract int zza(T t11);

    abstract B zza();

    abstract T zza(T t11, T t12);

    abstract void zza(B b11, int i11, int i12);

    abstract void zza(B b11, int i11, long j11);

    abstract void zza(B b11, int i11, zzik zzikVar);

    abstract void zza(B b11, int i11, T t11);

    abstract void zza(T t11, zznb zznbVar) throws IOException;

    abstract boolean zza(zzlr zzlrVar);

    final boolean zza(B b11, zzlr zzlrVar, int i11) throws IOException {
        int iZzd = zzlrVar.zzd();
        int i12 = iZzd >>> 3;
        int i13 = iZzd & 7;
        if (i13 == 0) {
            zzb(b11, i12, zzlrVar.zzl());
            return true;
        }
        if (i13 == 1) {
            zza(b11, i12, zzlrVar.zzk());
            return true;
        }
        if (i13 == 2) {
            zza((Object) b11, i12, zzlrVar.zzp());
            return true;
        }
        if (i13 != 3) {
            if (i13 == 4) {
                return false;
            }
            if (i13 != 5) {
                throw zzkb.zza();
            }
            zza((Object) b11, i12, zzlrVar.zzf());
            return true;
        }
        B bZza = zza();
        int i14 = 4 | (i12 << 3);
        int i15 = i11 + 1;
        if (i15 >= zza) {
            throw zzkb.zzh();
        }
        while (zzlrVar.zzc() != Integer.MAX_VALUE && zza(bZza, zzlrVar, i15)) {
        }
        if (i14 != zzlrVar.zzd()) {
            throw zzkb.zzb();
        }
        zza(b11, i12, zze(bZza));
        return true;
    }

    abstract int zzb(T t11);

    abstract void zzb(B b11, int i11, long j11);

    abstract void zzb(T t11, zznb zznbVar) throws IOException;

    abstract void zzb(Object obj, B b11);

    abstract B zzc(Object obj);

    abstract void zzc(Object obj, T t11);

    abstract T zzd(Object obj);

    abstract T zze(B b11);

    abstract void zzf(Object obj);
}
