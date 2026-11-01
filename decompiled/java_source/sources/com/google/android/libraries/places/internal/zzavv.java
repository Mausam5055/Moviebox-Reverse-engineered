package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzavv {
    public static final /* synthetic */ int zza = 0;
    private static final Class zzb;
    private static final zzawn zzc;
    private static final zzawn zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzawn zzawnVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zzb = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzawnVar = (zzawn) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzawnVar;
        zzd = new zzawp();
    }

    public static void zzA(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzs(i11, list, z10);
    }

    public static void zzB(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzu(i11, list, z10);
    }

    public static void zzC(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzy(i11, list, z10);
    }

    public static void zzD(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzA(i11, list, z10);
    }

    public static void zzE(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzC(i11, list, z10);
    }

    public static void zzF(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzE(i11, list, z10);
    }

    public static void zzG(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzJ(i11, list, z10);
    }

    public static void zzH(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzL(i11, list, z10);
    }

    static int zza(List list) {
        int iZzC;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(zzatvVar.zze(i11));
                i11++;
            }
        } else {
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return iZzC;
    }

    static int zzb(int i11, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzasx.zzB(i11 << 3) + 4);
    }

    static int zzc(List list) {
        return list.size() * 4;
    }

    static int zzd(int i11, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzasx.zzB(i11 << 3) + 8);
    }

    static int zze(List list) {
        return list.size() * 8;
    }

    static int zzf(List list) {
        int iZzC;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(zzatvVar.zze(i11));
                i11++;
            }
        } else {
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return iZzC;
    }

    static int zzg(List list) {
        int iZzC;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzauu) {
            zzauu zzauuVar = (zzauu) list;
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(zzauuVar.zze(i11));
                i11++;
            }
        } else {
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return iZzC;
    }

    static int zzh(int i11, Object obj, zzavt zzavtVar) {
        int i12 = i11 << 3;
        if (!(obj instanceof zzaul)) {
            return zzasx.zzB(i12) + zzasx.zzz((zzavf) obj, zzavtVar);
        }
        int iZzB = zzasx.zzB(i12);
        int iZza = ((zzaul) obj).zza();
        return iZzB + zzasx.zzB(iZza) + iZza;
    }

    static int zzi(List list) {
        int iZzB;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzB = 0;
            while (i11 < size) {
                int iZze = zzatvVar.zze(i11);
                iZzB += zzasx.zzB((iZze >> 31) ^ (iZze + iZze));
                i11++;
            }
        } else {
            iZzB = 0;
            while (i11 < size) {
                int iIntValue = ((Integer) list.get(i11)).intValue();
                iZzB += zzasx.zzB((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i11++;
            }
        }
        return iZzB;
    }

    static int zzj(List list) {
        int iZzC;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzauu) {
            zzauu zzauuVar = (zzauu) list;
            iZzC = 0;
            while (i11 < size) {
                long jZze = zzauuVar.zze(i11);
                iZzC += zzasx.zzC((jZze >> 63) ^ (jZze + jZze));
                i11++;
            }
        } else {
            iZzC = 0;
            while (i11 < size) {
                long jLongValue = ((Long) list.get(i11)).longValue();
                iZzC += zzasx.zzC((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i11++;
            }
        }
        return iZzC;
    }

    static int zzk(List list) {
        int iZzB;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzatv) {
            zzatv zzatvVar = (zzatv) list;
            iZzB = 0;
            while (i11 < size) {
                iZzB += zzasx.zzB(zzatvVar.zze(i11));
                i11++;
            }
        } else {
            iZzB = 0;
            while (i11 < size) {
                iZzB += zzasx.zzB(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return iZzB;
    }

    static int zzl(List list) {
        int iZzC;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzauu) {
            zzauu zzauuVar = (zzauu) list;
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(zzauuVar.zze(i11));
                i11++;
            }
        } else {
            iZzC = 0;
            while (i11 < size) {
                iZzC += zzasx.zzC(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return iZzC;
    }

    public static zzawn zzm() {
        return zzc;
    }

    public static zzawn zzn() {
        return zzd;
    }

    static Object zzo(Object obj, int i11, List list, zzaty zzatyVar, Object obj2, zzawn zzawnVar) {
        if (zzatyVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                Integer num = (Integer) list.get(i13);
                int iIntValue = num.intValue();
                if (zzatyVar.zza(iIntValue)) {
                    if (i13 != i12) {
                        list.set(i12, num);
                    }
                    i12++;
                } else {
                    obj2 = zzp(obj, i11, iIntValue, obj2, zzawnVar);
                }
            }
            if (i12 != size) {
                list.subList(i12, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzatyVar.zza(iIntValue2)) {
                    obj2 = zzp(obj, i11, iIntValue2, obj2, zzawnVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    static Object zzp(Object obj, int i11, int i12, Object obj2, zzawn zzawnVar) {
        if (obj2 == null) {
            obj2 = zzawnVar.zzc(obj);
        }
        zzawnVar.zzl(obj2, i11, i12);
        return obj2;
    }

    static void zzq(zzatg zzatgVar, Object obj, Object obj2) {
        zzatk zzatkVarZzb = zzatgVar.zzb(obj2);
        if (zzatkVarZzb.zza.isEmpty()) {
            return;
        }
        zzatgVar.zzc(obj).zzh(zzatkVarZzb);
    }

    static void zzr(zzawn zzawnVar, Object obj, Object obj2) {
        zzawnVar.zzo(obj, zzawnVar.zze(zzawnVar.zzd(obj), zzawnVar.zzd(obj2)));
    }

    public static void zzs(Class cls) {
        Class cls2;
        if (!zzatu.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean zzt(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzu(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzc(i11, list, z10);
    }

    public static void zzv(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzg(i11, list, z10);
    }

    public static void zzw(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzj(i11, list, z10);
    }

    public static void zzx(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzl(i11, list, z10);
    }

    public static void zzy(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzn(i11, list, z10);
    }

    public static void zzz(int i11, List list, zzasy zzasyVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzasyVar.zzp(i11, list, z10);
    }
}
