package com.google.android.libraries.places.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzawn {
    zzawn() {
    }

    abstract int zza(Object obj);

    abstract int zzb(Object obj);

    abstract Object zzc(Object obj);

    abstract Object zzd(Object obj);

    abstract Object zze(Object obj, Object obj2);

    abstract Object zzf();

    abstract Object zzg(Object obj);

    abstract void zzh(Object obj, int i11, int i12);

    abstract void zzi(Object obj, int i11, long j11);

    abstract void zzj(Object obj, int i11, Object obj2);

    abstract void zzk(Object obj, int i11, zzask zzaskVar);

    abstract void zzl(Object obj, int i11, long j11);

    abstract void zzm(Object obj);

    abstract void zzn(Object obj, Object obj2);

    abstract void zzo(Object obj, Object obj2);

    final boolean zzp(Object obj, zzavs zzavsVar) throws IOException {
        int iZzd = zzavsVar.zzd();
        int i11 = iZzd >>> 3;
        int i12 = iZzd & 7;
        if (i12 == 0) {
            zzl(obj, i11, zzavsVar.zzl());
            return true;
        }
        if (i12 == 1) {
            zzi(obj, i11, zzavsVar.zzk());
            return true;
        }
        if (i12 == 2) {
            zzk(obj, i11, zzavsVar.zzp());
            return true;
        }
        if (i12 != 3) {
            if (i12 == 4) {
                return false;
            }
            if (i12 != 5) {
                throw zzauf.zza();
            }
            zzh(obj, i11, zzavsVar.zzf());
            return true;
        }
        Object objZzf = zzf();
        int i13 = i11 << 3;
        while (zzavsVar.zzc() != Integer.MAX_VALUE && zzp(objZzf, zzavsVar)) {
        }
        if ((4 | i13) != zzavsVar.zzd()) {
            throw zzauf.zzb();
        }
        zzg(objZzf);
        zzj(obj, i11, objZzf);
        return true;
    }

    abstract boolean zzq(zzavs zzavsVar);

    abstract void zzr(Object obj, zzasy zzasyVar) throws IOException;

    abstract void zzs(Object obj, zzasy zzasyVar) throws IOException;
}
