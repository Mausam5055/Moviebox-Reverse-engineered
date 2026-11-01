package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzv {
    private String zza;
    private boolean zzb;
    private com.google.android.gms.internal.measurement.zzfy.zzm zzc;
    private BitSet zzd;
    private BitSet zze;
    private Map<Integer, Long> zzf;
    private Map<Integer, List<Long>> zzg;
    private final /* synthetic */ zzt zzh;

    private zzv(zzt zztVar, String str) {
        this.zzh = zztVar;
        this.zza = str;
        this.zzb = true;
        this.zzd = new BitSet();
        this.zze = new BitSet();
        this.zzf = new androidx.collection.a();
        this.zzg = new androidx.collection.a();
    }

    private zzv(zzt zztVar, String str, com.google.android.gms.internal.measurement.zzfy.zzm zzmVar, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.zzh = zztVar;
        this.zza = str;
        this.zzd = bitSet;
        this.zze = bitSet2;
        this.zzf = map;
        this.zzg = new androidx.collection.a();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.zzg.put(num, arrayList);
            }
        }
        this.zzb = false;
        this.zzc = zzmVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.zzfy$zzd$zza, com.google.android.gms.internal.measurement.zzjt$zzb] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r8v5, types: [com.google.android.gms.internal.measurement.zzfy$zzm$zza] */
    @NonNull
    final com.google.android.gms.internal.measurement.zzfy.zzd zza(int i11) {
        ArrayList arrayList;
        ?? arrayList2;
        ?? Zzb = com.google.android.gms.internal.measurement.zzfy.zzd.zzb();
        Zzb.zza(i11);
        Zzb.zza(this.zzb);
        com.google.android.gms.internal.measurement.zzfy.zzm zzmVar = this.zzc;
        if (zzmVar != null) {
            Zzb.zza(zzmVar);
        }
        ?? Zzd = com.google.android.gms.internal.measurement.zzfy.zzm.zze().zzb(zzoo.zza(this.zzd)).zzd(zzoo.zza(this.zze));
        if (this.zzf == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(this.zzf.size());
            for (Integer num : this.zzf.keySet()) {
                int iIntValue = num.intValue();
                Long l11 = this.zzf.get(num);
                if (l11 != null) {
                    arrayList.add((com.google.android.gms.internal.measurement.zzfy.zze) ((com.google.android.gms.internal.measurement.zzjt) com.google.android.gms.internal.measurement.zzfy.zze.zzc().zza(iIntValue).zza(l11.longValue()).zzai()));
                }
            }
        }
        if (arrayList != null) {
            Zzd.zza(arrayList);
        }
        if (this.zzg == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(this.zzg.size());
            for (Integer num2 : this.zzg.keySet()) {
                com.google.android.gms.internal.measurement.zzfy.zzn.zza zzaVarZza = com.google.android.gms.internal.measurement.zzfy.zzn.zzc().zza(num2.intValue());
                List<Long> list = this.zzg.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    zzaVarZza.zza(list);
                }
                arrayList2.add((com.google.android.gms.internal.measurement.zzfy.zzn) ((com.google.android.gms.internal.measurement.zzjt) zzaVarZza.zzai()));
            }
        }
        Zzd.zzc(arrayList2);
        Zzb.zza(Zzd);
        return (com.google.android.gms.internal.measurement.zzfy.zzd) ((com.google.android.gms.internal.measurement.zzjt) Zzb.zzai());
    }

    final void zza(@NonNull zzaa zzaaVar) {
        int iZza = zzaaVar.zza();
        Boolean bool = zzaaVar.zzc;
        if (bool != null) {
            this.zze.set(iZza, bool.booleanValue());
        }
        Boolean bool2 = zzaaVar.zzd;
        if (bool2 != null) {
            this.zzd.set(iZza, bool2.booleanValue());
        }
        if (zzaaVar.zze != null) {
            Long l11 = this.zzf.get(Integer.valueOf(iZza));
            long jLongValue = zzaaVar.zze.longValue() / 1000;
            if (l11 == null || jLongValue > l11.longValue()) {
                this.zzf.put(Integer.valueOf(iZza), Long.valueOf(jLongValue));
            }
        }
        if (zzaaVar.zzf != null) {
            List<Long> arrayList = this.zzg.get(Integer.valueOf(iZza));
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.zzg.put(Integer.valueOf(iZza), arrayList);
            }
            if (zzaaVar.zzc()) {
                arrayList.clear();
            }
            if (com.google.android.gms.internal.measurement.zzoe.zza() && this.zzh.zze().zzf(this.zza, zzbh.zzbp) && zzaaVar.zzb()) {
                arrayList.clear();
            }
            if (!com.google.android.gms.internal.measurement.zzoe.zza() || !this.zzh.zze().zzf(this.zza, zzbh.zzbp)) {
                arrayList.add(Long.valueOf(zzaaVar.zzf.longValue() / 1000));
                return;
            }
            long jLongValue2 = zzaaVar.zzf.longValue() / 1000;
            if (arrayList.contains(Long.valueOf(jLongValue2))) {
                return;
            }
            arrayList.add(Long.valueOf(jLongValue2));
        }
    }
}
