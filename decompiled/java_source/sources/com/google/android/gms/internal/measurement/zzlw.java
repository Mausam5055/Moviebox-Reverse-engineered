package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzlw {
    private static final zzmk<?, ?> zza = new zzmm();

    static int zza(int i11, Object obj, zzlu<?> zzluVar) {
        return obj instanceof zzkk ? zzjc.zzb(i11, (zzkk) obj) : zzjc.zzc(i11, (zzlc) obj, zzluVar);
    }

    static int zza(int i11, List<zzik> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = size * zzjc.zzi(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZzi += zzjc.zzb(list.get(i12));
        }
        return iZzi;
    }

    static int zza(int i11, List<zzlc> list, zzlu<?> zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzb = 0;
        for (int i12 = 0; i12 < size; i12++) {
            iZzb += zzjc.zzb(i11, list.get(i12), zzluVar);
        }
        return iZzb;
    }

    static int zza(int i11, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjc.zzb(i11, true);
    }

    static int zza(List<?> list) {
        return list.size();
    }

    public static zzmk<?, ?> zza() {
        return zza;
    }

    static <UT, UB> UB zza(Object obj, int i11, int i12, UB ub2, zzmk<UT, UB> zzmkVar) {
        if (ub2 == null) {
            ub2 = zzmkVar.zzc(obj);
        }
        zzmkVar.zzb(ub2, i11, i12);
        return ub2;
    }

    static <UT, UB> UB zza(Object obj, int i11, List<Integer> list, zzjx zzjxVar, UB ub2, zzmk<UT, UB> zzmkVar) {
        if (zzjxVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                Integer num = list.get(i13);
                int iIntValue = num.intValue();
                if (zzjxVar.zza(iIntValue)) {
                    if (i13 != i12) {
                        list.set(i12, num);
                    }
                    i12++;
                } else {
                    ub2 = (UB) zza(obj, i11, iIntValue, ub2, zzmkVar);
                }
            }
            if (i12 != size) {
                list.subList(i12, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!zzjxVar.zza(iIntValue2)) {
                    ub2 = (UB) zza(obj, i11, iIntValue2, ub2, zzmkVar);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    public static void zza(int i11, List<zzik> list, zznb zznbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zza(i11, list);
    }

    public static void zza(int i11, List<?> list, zznb zznbVar, zzlu<?> zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zza(i11, list, (zzlu) zzluVar);
    }

    public static void zza(int i11, List<Boolean> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zza(i11, list, z10);
    }

    static <T, FT extends zzjo<FT>> void zza(zzji<FT> zzjiVar, T t11, T t12) {
        zzjm<T> zzjmVarZza = zzjiVar.zza(t12);
        if (zzjmVarZza.zza.isEmpty()) {
            return;
        }
        zzjiVar.zzb(t11).zza((zzjm) zzjmVarZza);
    }

    static <T> void zza(zzkv zzkvVar, T t11, T t12, long j11) {
        zzml.zza(t11, j11, zzkvVar.zza(zzml.zze(t11, j11), zzml.zze(t12, j11)));
    }

    static <T, UT, UB> void zza(zzmk<UT, UB> zzmkVar, T t11, T t12) {
        zzmkVar.zzc(t11, zzmkVar.zza(zzmkVar.zzd(t11), zzmkVar.zzd(t12)));
    }

    public static void zza(Class<?> cls) {
        zzjt.class.isAssignableFrom(cls);
    }

    static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int zzb(int i11, List<?> list) {
        int size = list.size();
        int i12 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzi = zzjc.zzi(i11) * size;
        if (list instanceof zzkj) {
            zzkj zzkjVar = (zzkj) list;
            while (i12 < size) {
                Object objZza = zzkjVar.zza(i12);
                iZzi += objZza instanceof zzik ? zzjc.zzb((zzik) objZza) : zzjc.zzb((String) objZza);
                i12++;
            }
        } else {
            while (i12 < size) {
                Object obj = list.get(i12);
                iZzi += obj instanceof zzik ? zzjc.zzb((zzik) obj) : zzjc.zzb((String) obj);
                i12++;
            }
        }
        return iZzi;
    }

    static int zzb(int i11, List<?> list, zzlu<?> zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzi = zzjc.zzi(i11) * size;
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = list.get(i12);
            iZzi += obj instanceof zzkk ? zzjc.zza((zzkk) obj) : zzjc.zza((zzlc) obj, zzluVar);
        }
        return iZzi;
    }

    static int zzb(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzjc.zzi(i11));
    }

    static int zzb(List<Integer> list) {
        int iZzd;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzd = 0;
            while (i11 < size) {
                iZzd += zzjc.zzd(zzjwVar.zzb(i11));
                i11++;
            }
        } else {
            iZzd = 0;
            while (i11 < size) {
                iZzd += zzjc.zzd(list.get(i11).intValue());
                i11++;
            }
        }
        return iZzd;
    }

    public static void zzb(int i11, List<String> list, zznb zznbVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzb(i11, list);
    }

    public static void zzb(int i11, List<?> list, zznb zznbVar, zzlu<?> zzluVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzb(i11, list, (zzlu) zzluVar);
    }

    public static void zzb(int i11, List<Double> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzb(i11, list, z10);
    }

    static int zzc(int i11, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjc.zzf(i11, 0);
    }

    static int zzc(List<?> list) {
        return list.size() << 2;
    }

    public static void zzc(int i11, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzc(i11, list, z10);
    }

    static int zzd(int i11, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzjc.zzc(i11, 0L);
    }

    static int zzd(List<?> list) {
        return list.size() << 3;
    }

    public static void zzd(int i11, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzd(i11, list, z10);
    }

    static int zze(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzjc.zzi(i11));
    }

    static int zze(List<Integer> list) {
        int iZzf;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzf = 0;
            while (i11 < size) {
                iZzf += zzjc.zzf(zzjwVar.zzb(i11));
                i11++;
            }
        } else {
            iZzf = 0;
            while (i11 < size) {
                iZzf += zzjc.zzf(list.get(i11).intValue());
                i11++;
            }
        }
        return iZzf;
    }

    public static void zze(int i11, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zze(i11, list, z10);
    }

    static int zzf(int i11, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        return zzf(list) + (list.size() * zzjc.zzi(i11));
    }

    static int zzf(List<Long> list) {
        int iZzd;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            iZzd = 0;
            while (i11 < size) {
                iZzd += zzjc.zzd(zzknVar.zzb(i11));
                i11++;
            }
        } else {
            iZzd = 0;
            while (i11 < size) {
                iZzd += zzjc.zzd(list.get(i11).longValue());
                i11++;
            }
        }
        return iZzd;
    }

    public static void zzf(int i11, List<Float> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzf(i11, list, z10);
    }

    static int zzg(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzjc.zzi(i11));
    }

    static int zzg(List<Integer> list) {
        int iZzh;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzh = 0;
            while (i11 < size) {
                iZzh += zzjc.zzh(zzjwVar.zzb(i11));
                i11++;
            }
        } else {
            iZzh = 0;
            while (i11 < size) {
                iZzh += zzjc.zzh(list.get(i11).intValue());
                i11++;
            }
        }
        return iZzh;
    }

    public static void zzg(int i11, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzg(i11, list, z10);
    }

    static int zzh(int i11, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzjc.zzi(i11));
    }

    static int zzh(List<Long> list) {
        int iZzf;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            iZzf = 0;
            while (i11 < size) {
                iZzf += zzjc.zzf(zzknVar.zzb(i11));
                i11++;
            }
        } else {
            iZzf = 0;
            while (i11 < size) {
                iZzf += zzjc.zzf(list.get(i11).longValue());
                i11++;
            }
        }
        return iZzf;
    }

    public static void zzh(int i11, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzh(i11, list, z10);
    }

    static int zzi(int i11, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzjc.zzi(i11));
    }

    static int zzi(List<Integer> list) {
        int iZzj;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjw) {
            zzjw zzjwVar = (zzjw) list;
            iZzj = 0;
            while (i11 < size) {
                iZzj += zzjc.zzj(zzjwVar.zzb(i11));
                i11++;
            }
        } else {
            iZzj = 0;
            while (i11 < size) {
                iZzj += zzjc.zzj(list.get(i11).intValue());
                i11++;
            }
        }
        return iZzj;
    }

    public static void zzi(int i11, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzi(i11, list, z10);
    }

    static int zzj(int i11, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzjc.zzi(i11));
    }

    static int zzj(List<Long> list) {
        int iZzg;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkn) {
            zzkn zzknVar = (zzkn) list;
            iZzg = 0;
            while (i11 < size) {
                iZzg += zzjc.zzg(zzknVar.zzb(i11));
                i11++;
            }
        } else {
            iZzg = 0;
            while (i11 < size) {
                iZzg += zzjc.zzg(list.get(i11).longValue());
                i11++;
            }
        }
        return iZzg;
    }

    public static void zzj(int i11, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzj(i11, list, z10);
    }

    public static void zzk(int i11, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzk(i11, list, z10);
    }

    public static void zzl(int i11, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzl(i11, list, z10);
    }

    public static void zzm(int i11, List<Integer> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzm(i11, list, z10);
    }

    public static void zzn(int i11, List<Long> list, zznb zznbVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznbVar.zzn(i11, list, z10);
    }
}
