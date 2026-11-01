package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzkl implements zzkm {
    zzkl() {
    }

    private static <E> zzkc<E> zzc(Object obj, long j11) {
        return (zzkc) zzml.zze(obj, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzkm
    public final <L> List<L> zza(Object obj, long j11) {
        zzkc zzkcVarZzc = zzc(obj, j11);
        if (zzkcVarZzc.zzc()) {
            return zzkcVarZzc;
        }
        int size = zzkcVarZzc.size();
        zzkc zzkcVarZza = zzkcVarZzc.zza(size == 0 ? 10 : size << 1);
        zzml.zza(obj, j11, zzkcVarZza);
        return zzkcVarZza;
    }

    @Override // com.google.android.gms.internal.measurement.zzkm
    public final <E> void zza(Object obj, Object obj2, long j11) {
        zzkc zzkcVarZzc = zzc(obj, j11);
        zzkc zzkcVarZzc2 = zzc(obj2, j11);
        int size = zzkcVarZzc.size();
        int size2 = zzkcVarZzc2.size();
        if (size > 0 && size2 > 0) {
            if (!zzkcVarZzc.zzc()) {
                zzkcVarZzc = zzkcVarZzc.zza(size2 + size);
            }
            zzkcVarZzc.addAll(zzkcVarZzc2);
        }
        if (size > 0) {
            zzkcVarZzc2 = zzkcVarZzc;
        }
        zzml.zza(obj, j11, zzkcVarZzc2);
    }

    @Override // com.google.android.gms.internal.measurement.zzkm
    public final void zzb(Object obj, long j11) {
        zzc(obj, j11).zzb();
    }
}
