package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
final class zzt extends zznr {
    private String zza;
    private Set<Integer> zzb;
    private Map<Integer, zzv> zzc;
    private Long zzd;
    private Long zze;

    zzt(zznv zznvVar) {
        super(zznvVar);
    }

    private final zzv zza(Integer num) {
        if (this.zzc.containsKey(num)) {
            return this.zzc.get(num);
        }
        zzv zzvVar = new zzv(this, this.zza);
        this.zzc.put(num, zzvVar);
        return zzvVar;
    }

    private final void zza(List<com.google.android.gms.internal.measurement.zzfy.zzo> list) {
        if (list.isEmpty()) {
            return;
        }
        androidx.collection.a aVar = new androidx.collection.a();
        for (com.google.android.gms.internal.measurement.zzfy.zzo zzoVar : list) {
            String strZzg = zzoVar.zzg();
            Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zze>> mapZzg = (Map) aVar.get(strZzg);
            if (mapZzg == null) {
                mapZzg = zzh().zzg(this.zza, strZzg);
                aVar.put(strZzg, mapZzg);
            }
            for (Integer num : mapZzg.keySet()) {
                int iIntValue = num.intValue();
                if (this.zzb.contains(num)) {
                    zzj().zzp().zza("Skipping failed audience ID", num);
                    break;
                }
                boolean zZza = true;
                for (com.google.android.gms.internal.measurement.zzfo.zze zzeVar : mapZzg.get(num)) {
                    if (zzj().zza(2)) {
                        zzj().zzp().zza("Evaluating filter. audience, filter, property", num, zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null, zzi().zzc(zzeVar.zze()));
                        zzj().zzp().zza("Filter definition", g_().zza(zzeVar));
                    }
                    if (!zzeVar.zzi() || zzeVar.zza() > 256) {
                        zzj().zzu().zza("Invalid property filter ID. appId, id", zzgo.zza(this.zza), String.valueOf(zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null));
                        zZza = false;
                        break;
                    }
                    zzz zzzVar = new zzz(this, this.zza, iIntValue, zzeVar);
                    zZza = zzzVar.zza(this.zzd, this.zze, zzoVar, zza(iIntValue, zzeVar.zza()));
                    if (!zZza) {
                        this.zzb.add(num);
                        break;
                    }
                    zza(num).zza(zzzVar);
                }
                if (!zZza) {
                    this.zzb.add(num);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(List<com.google.android.gms.internal.measurement.zzfy.zzf> list, boolean z10) {
        zzbb zzbbVar;
        zzy zzyVar;
        Integer num;
        Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> map;
        long j11;
        if (list.isEmpty()) {
            return;
        }
        String str = null;
        zzy zzyVar2 = new zzy(this);
        androidx.collection.a aVar = new androidx.collection.a();
        for (com.google.android.gms.internal.measurement.zzfy.zzf zzfVar : list) {
            com.google.android.gms.internal.measurement.zzfy.zzf zzfVarZza = zzyVar2.zza(this.zza, zzfVar);
            if (zzfVarZza != null) {
                zzal zzalVarZzh = zzh();
                String str2 = this.zza;
                String strZzg = zzfVarZza.zzg();
                zzbb zzbbVarZzd = zzalVarZzh.zzd(str2, zzfVar.zzg());
                if (zzbbVarZzd == null) {
                    zzalVarZzh.zzj().zzu().zza("Event aggregate wasn't created during raw event logging. appId, event", zzgo.zza(str2), zzalVarZzh.zzi().zza(strZzg));
                    zzbbVar = new zzbb(str2, zzfVar.zzg(), 1L, 1L, 1L, zzfVar.zzd(), 0L, null, null, null, null);
                } else {
                    zzbbVar = new zzbb(zzbbVarZzd.zza, zzbbVarZzd.zzb, zzbbVarZzd.zzc + 1, zzbbVarZzd.zzd + 1, zzbbVarZzd.zze + 1, zzbbVarZzd.zzf, zzbbVarZzd.zzg, zzbbVarZzd.zzh, zzbbVarZzd.zzi, zzbbVarZzd.zzj, zzbbVarZzd.zzk);
                }
                zzbb zzbbVar2 = zzbbVar;
                zzh().zza(zzbbVar2);
                if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zzf(str, zzbh.zzcy) || !z10) {
                    long j12 = zzbbVar2.zzc;
                    String strZzg2 = zzfVarZza.zzg();
                    Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> mapZzf = (Map) aVar.get(strZzg2);
                    if (mapZzf == null) {
                        mapZzf = zzh().zzf(this.zza, strZzg2);
                        aVar.put(strZzg2, mapZzf);
                    }
                    Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> map2 = mapZzf;
                    Iterator<Integer> it = map2.keySet().iterator();
                    while (it.hasNext()) {
                        Integer next = it.next();
                        int iIntValue = next.intValue();
                        if (this.zzb.contains(next)) {
                            zzj().zzp().zza("Skipping failed audience ID", next);
                        } else {
                            Iterator<com.google.android.gms.internal.measurement.zzfo.zzb> it2 = map2.get(next).iterator();
                            boolean zZza = true;
                            while (true) {
                                if (!it2.hasNext()) {
                                    zzyVar = zzyVar2;
                                    num = next;
                                    map = map2;
                                    j11 = j12;
                                    break;
                                }
                                com.google.android.gms.internal.measurement.zzfo.zzb next2 = it2.next();
                                zzx zzxVar = new zzx(this, this.zza, iIntValue, next2);
                                zzyVar = zzyVar2;
                                num = next;
                                int i11 = iIntValue;
                                map = map2;
                                j11 = j12;
                                zZza = zzxVar.zza(this.zzd, this.zze, zzfVarZza, j12, zzbbVar2, zza(iIntValue, next2.zzb()));
                                if (!zZza) {
                                    this.zzb.add(num);
                                    break;
                                }
                                zza(num).zza(zzxVar);
                                next = num;
                                zzyVar2 = zzyVar;
                                iIntValue = i11;
                                map2 = map;
                                j12 = j11;
                            }
                            if (!zZza) {
                                this.zzb.add(num);
                            }
                            zzyVar2 = zzyVar;
                            map2 = map;
                            j12 = j11;
                            str = null;
                        }
                    }
                }
            }
        }
    }

    private final boolean zza(int i11, int i12) {
        zzv zzvVar = this.zzc.get(Integer.valueOf(i11));
        if (zzvVar == null) {
            return false;
        }
        return zzvVar.zzd.get(i12);
    }

    @NonNull
    private final List<com.google.android.gms.internal.measurement.zzfy.zzd> zzu() {
        ArrayList arrayList = new ArrayList();
        Set<Integer> setKeySet = this.zzc.keySet();
        setKeySet.removeAll(this.zzb);
        for (Integer num : setKeySet) {
            int iIntValue = num.intValue();
            zzv zzvVar = this.zzc.get(num);
            Preconditions.checkNotNull(zzvVar);
            com.google.android.gms.internal.measurement.zzfy.zzd zzdVarZza = zzvVar.zza(iIntValue);
            arrayList.add(zzdVarZza);
            zzal zzalVarZzh = zzh();
            String str = this.zza;
            com.google.android.gms.internal.measurement.zzfy.zzm zzmVarZzd = zzdVarZza.zzd();
            zzalVarZzh.zzal();
            zzalVarZzh.zzt();
            Preconditions.checkNotEmpty(str);
            Preconditions.checkNotNull(zzmVarZzd);
            byte[] bArrZzca = zzmVarZzd.zzca();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", num);
            contentValues.put("current_results", bArrZzca);
            try {
                if (zzalVarZzh.e_().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                    zzalVarZzh.zzj().zzg().zza("Failed to insert filter results (got -1). appId", zzgo.zza(str));
                }
            } catch (SQLiteException e11) {
                zzalVarZzh.zzj().zzg().zza("Error storing filter results. appId", zzgo.zza(str), e11);
            }
        }
        return arrayList;
    }

    final List<com.google.android.gms.internal.measurement.zzfy.zzd> zza(String str, List<com.google.android.gms.internal.measurement.zzfy.zzf> list, List<com.google.android.gms.internal.measurement.zzfy.zzo> list2, Long l11, Long l12) {
        return zza(str, list, list2, l11, l12, false);
    }

    final List<com.google.android.gms.internal.measurement.zzfy.zzd> zza(String str, List<com.google.android.gms.internal.measurement.zzfy.zzf> list, List<com.google.android.gms.internal.measurement.zzfy.zzo> list2, Long l11, Long l12, boolean z10) {
        boolean z11;
        Map<Integer, com.google.android.gms.internal.measurement.zzfy.zzm> map;
        List<com.google.android.gms.internal.measurement.zzfo.zzb> list3;
        Iterator it;
        Map<Integer, List<Integer>> map2;
        Iterator<Integer> it2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.zza = str;
        this.zzb = new HashSet();
        this.zzc = new androidx.collection.a();
        this.zzd = l11;
        this.zze = l12;
        Iterator<com.google.android.gms.internal.measurement.zzfy.zzf> it3 = list.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z11 = false;
                break;
            }
            if ("_s".equals(it3.next().zzg())) {
                z11 = true;
                break;
            }
        }
        boolean z12 = com.google.android.gms.internal.measurement.zzoe.zza() && zze().zzf(this.zza, zzbh.zzbp);
        boolean z13 = com.google.android.gms.internal.measurement.zzoe.zza() && zze().zzf(this.zza, zzbh.zzbo);
        if (z11) {
            zzal zzalVarZzh = zzh();
            String str2 = this.zza;
            zzalVarZzh.zzal();
            zzalVarZzh.zzt();
            Preconditions.checkNotEmpty(str2);
            ContentValues contentValues = new ContentValues();
            contentValues.put("current_session_count", (Integer) 0);
            try {
                zzalVarZzh.e_().update("events", contentValues, "app_id = ?", new String[]{str2});
            } catch (SQLiteException e11) {
                zzalVarZzh.zzj().zzg().zza("Error resetting session-scoped event counts. appId", zzgo.zza(str2), e11);
            }
        }
        Map<Integer, List<com.google.android.gms.internal.measurement.zzfo.zzb>> mapEmptyMap = Collections.emptyMap();
        if (z13 && z12) {
            mapEmptyMap = zzh().zzn(this.zza);
        }
        Map<Integer, com.google.android.gms.internal.measurement.zzfy.zzm> mapZzm = zzh().zzm(this.zza);
        if (!mapZzm.isEmpty()) {
            HashSet hashSet = new HashSet(mapZzm.keySet());
            if (z11) {
                String str3 = this.zza;
                Map<Integer, List<Integer>> mapZzo = zzh().zzo(this.zza);
                Preconditions.checkNotEmpty(str3);
                Preconditions.checkNotNull(mapZzm);
                androidx.collection.a aVar = new androidx.collection.a();
                if (!mapZzm.isEmpty()) {
                    Iterator<Integer> it4 = mapZzm.keySet().iterator();
                    while (it4.hasNext()) {
                        Integer next = it4.next();
                        next.intValue();
                        com.google.android.gms.internal.measurement.zzfy.zzm zzmVar = mapZzm.get(next);
                        List<Integer> list4 = mapZzo.get(next);
                        if (list4 == null || list4.isEmpty()) {
                            map2 = mapZzo;
                            it2 = it4;
                            aVar.put(next, zzmVar);
                        } else {
                            List<Long> listZza = g_().zza(zzmVar.zzi(), list4);
                            if (!listZza.isEmpty()) {
                                com.google.android.gms.internal.measurement.zzfy.zzm.zza zzaVarZzb = zzmVar.zzcd().zzb().zzb(listZza);
                                zzaVarZzb.zzd().zzd(g_().zza(zzmVar.zzk(), list4));
                                ArrayList arrayList = new ArrayList();
                                for (com.google.android.gms.internal.measurement.zzfy.zze zzeVar : zzmVar.zzh()) {
                                    Map<Integer, List<Integer>> map3 = mapZzo;
                                    Iterator<Integer> it5 = it4;
                                    if (!list4.contains(Integer.valueOf(zzeVar.zza()))) {
                                        arrayList.add(zzeVar);
                                    }
                                    mapZzo = map3;
                                    it4 = it5;
                                }
                                map2 = mapZzo;
                                it2 = it4;
                                zzaVarZzb.zza().zza(arrayList);
                                ArrayList arrayList2 = new ArrayList();
                                for (com.google.android.gms.internal.measurement.zzfy.zzn zznVar : zzmVar.zzj()) {
                                    if (!list4.contains(Integer.valueOf(zznVar.zzb()))) {
                                        arrayList2.add(zznVar);
                                    }
                                }
                                zzaVarZzb.zzc().zzc(arrayList2);
                                aVar.put(next, (com.google.android.gms.internal.measurement.zzfy.zzm) ((com.google.android.gms.internal.measurement.zzjt) zzaVarZzb.zzai()));
                            }
                        }
                        mapZzo = map2;
                        it4 = it2;
                    }
                }
                map = aVar;
            } else {
                map = mapZzm;
            }
            Iterator it6 = hashSet.iterator();
            while (it6.hasNext()) {
                Integer num = (Integer) it6.next();
                num.intValue();
                com.google.android.gms.internal.measurement.zzfy.zzm zzmVar2 = map.get(num);
                BitSet bitSet = new BitSet();
                BitSet bitSet2 = new BitSet();
                androidx.collection.a aVar2 = new androidx.collection.a();
                if (zzmVar2 != null && zzmVar2.zza() != 0) {
                    for (com.google.android.gms.internal.measurement.zzfy.zze zzeVar2 : zzmVar2.zzh()) {
                        if (zzeVar2.zzf()) {
                            aVar2.put(Integer.valueOf(zzeVar2.zza()), zzeVar2.zze() ? Long.valueOf(zzeVar2.zzb()) : null);
                        }
                    }
                }
                androidx.collection.a aVar3 = new androidx.collection.a();
                if (zzmVar2 != null && zzmVar2.zzc() != 0) {
                    Iterator<com.google.android.gms.internal.measurement.zzfy.zzn> it7 = zzmVar2.zzj().iterator();
                    while (it7.hasNext()) {
                        com.google.android.gms.internal.measurement.zzfy.zzn next2 = it7.next();
                        if (next2.zzf() && next2.zza() > 0) {
                            aVar3.put(Integer.valueOf(next2.zzb()), Long.valueOf(next2.zza(next2.zza() - 1)));
                        }
                        it7 = it7;
                        map = map;
                    }
                }
                Map<Integer, com.google.android.gms.internal.measurement.zzfy.zzm> map4 = map;
                if (zzmVar2 != null) {
                    int i11 = 0;
                    while (i11 < (zzmVar2.zzd() << 6)) {
                        if (zzoo.zza(zzmVar2.zzk(), i11)) {
                            it = it6;
                            zzj().zzp().zza("Filter already evaluated. audience ID, filter ID", num, Integer.valueOf(i11));
                            bitSet2.set(i11);
                            if (zzoo.zza(zzmVar2.zzi(), i11)) {
                                bitSet.set(i11);
                            }
                            i11++;
                            it6 = it;
                        } else {
                            it = it6;
                        }
                        aVar2.remove(Integer.valueOf(i11));
                        i11++;
                        it6 = it;
                    }
                }
                Iterator it8 = it6;
                com.google.android.gms.internal.measurement.zzfy.zzm zzmVar3 = mapZzm.get(num);
                if (z13 && z12 && (list3 = mapEmptyMap.get(num)) != null && this.zze != null && this.zzd != null) {
                    for (com.google.android.gms.internal.measurement.zzfo.zzb zzbVar : list3) {
                        int iZzb = zzbVar.zzb();
                        long jLongValue = this.zze.longValue() / 1000;
                        if (zzbVar.zzi()) {
                            jLongValue = this.zzd.longValue() / 1000;
                        }
                        if (aVar2.containsKey(Integer.valueOf(iZzb))) {
                            aVar2.put(Integer.valueOf(iZzb), Long.valueOf(jLongValue));
                        }
                        if (aVar3.containsKey(Integer.valueOf(iZzb))) {
                            aVar3.put(Integer.valueOf(iZzb), Long.valueOf(jLongValue));
                        }
                    }
                }
                this.zzc.put(num, new zzv(this, this.zza, zzmVar3, bitSet, bitSet2, aVar2, aVar3));
                it6 = it8;
                mapZzm = mapZzm;
                map = map4;
            }
        }
        if (!com.google.android.gms.internal.measurement.zznm.zza() || !zze().zzf(null, zzbh.zzcy)) {
            zza(list, true);
            zza(list2);
            return zzu();
        }
        zza(list, z10);
        if (z10) {
            return new ArrayList();
        }
        zza(list2);
        return zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }
}
