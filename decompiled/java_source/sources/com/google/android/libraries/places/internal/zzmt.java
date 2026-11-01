package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmt {
    public static int zza(int i11, int i12, String str) {
        String strZzb;
        if (i11 >= 0 && i11 < i12) {
            return i11;
        }
        if (i11 < 0) {
            strZzb = zznb.zzb("%s (%s) must not be negative", "index", Integer.valueOf(i11));
        } else {
            if (i12 < 0) {
                throw new IllegalArgumentException("negative size: " + i12);
            }
            strZzb = zznb.zzb("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IndexOutOfBoundsException(strZzb);
    }

    public static int zzb(int i11, int i12, String str) {
        if (i11 < 0 || i11 > i12) {
            throw new IndexOutOfBoundsException(zzt(i11, i12, "index"));
        }
        return i11;
    }

    public static Object zzc(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static Object zzd(Object obj, String str, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(zznb.zzb(str, obj2));
    }

    public static void zze(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void zzf(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void zzg(boolean z10, String str, char c11) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, Character.valueOf(c11)));
        }
    }

    public static void zzh(boolean z10, String str, int i11) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, Integer.valueOf(i11)));
        }
    }

    public static void zzi(boolean z10, String str, long j11) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, Long.valueOf(j11)));
        }
    }

    public static void zzj(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, obj));
        }
    }

    public static void zzk(boolean z10, String str, int i11, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, 4800, obj));
        }
    }

    public static void zzl(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, obj, obj2));
        }
    }

    public static void zzm(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        if (!z10) {
            throw new IllegalArgumentException(zznb.zzb(str, obj, obj2, obj3));
        }
    }

    public static void zzn(int i11, int i12, int i13) {
        String strZzt;
        if (i11 < 0 || i12 < i11 || i12 > i13) {
            if (i11 < 0 || i11 > i13) {
                strZzt = zzt(i11, i13, "start index");
            } else {
                strZzt = (i12 < 0 || i12 > i13) ? zzt(i12, i13, "end index") : zznb.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i12), Integer.valueOf(i11));
            }
            throw new IndexOutOfBoundsException(strZzt);
        }
    }

    public static void zzo(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void zzp(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException((String) obj);
        }
    }

    public static void zzq(boolean z10, String str, int i11) {
        if (!z10) {
            throw new IllegalStateException(zznb.zzb(str, Integer.valueOf(i11)));
        }
    }

    public static void zzr(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalStateException(zznb.zzb(str, obj));
        }
    }

    public static void zzs(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        if (!z10) {
            throw new IllegalStateException(zznb.zzb(str, obj, obj2, obj3));
        }
    }

    private static String zzt(int i11, int i12, String str) {
        if (i11 < 0) {
            return zznb.zzb("%s (%s) must not be negative", str, Integer.valueOf(i11));
        }
        if (i12 >= 0) {
            return zznb.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IllegalArgumentException("negative size: " + i12);
    }
}
