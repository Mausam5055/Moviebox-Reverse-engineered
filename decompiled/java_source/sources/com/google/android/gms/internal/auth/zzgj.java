package com.google.android.gms.internal.auth;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zzgj {
    private static final Class zza;
    private static final zzgy zzb;
    private static final zzgy zzc;
    private static final zzgy zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzj(false);
        zzc = zzj(true);
        zzd = new zzha();
    }

    public static zzgy zza() {
        return zzb;
    }

    public static zzgy zzb() {
        return zzc;
    }

    public static zzgy zzc() {
        return zzd;
    }

    static Object zzd(int i11, List list, zzex zzexVar, Object obj, zzgy zzgyVar) {
        if (zzexVar == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                Integer num = (Integer) list.get(i13);
                int iIntValue = num.intValue();
                if (zzexVar.zza()) {
                    if (i13 != i12) {
                        list.set(i12, num);
                    }
                    i12++;
                } else {
                    obj = zze(i11, iIntValue, obj, zzgyVar);
                }
            }
            if (i12 != size) {
                list.subList(i12, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzexVar.zza()) {
                    obj = zze(i11, iIntValue2, obj, zzgyVar);
                    it.remove();
                }
            }
        }
        return obj;
    }

    static Object zze(int i11, int i12, Object obj, zzgy zzgyVar) {
        if (obj == null) {
            obj = zzgyVar.zzc();
        }
        zzgyVar.zzd(obj, i11, i12);
        return obj;
    }

    static void zzf(zzgy zzgyVar, Object obj, Object obj2) {
        zzgyVar.zzf(obj, zzgyVar.zzb(zzgyVar.zza(obj), zzgyVar.zza(obj2)));
    }

    public static void zzg(Class cls) {
        Class cls2;
        if (!zzeu.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean zzh(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static void zzi(zzfr zzfrVar, Object obj, Object obj2, long j11) {
        zzhi.zzp(obj, j11, zzfr.zza(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11)));
    }

    private static zzgy zzj(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzgy) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }
}
