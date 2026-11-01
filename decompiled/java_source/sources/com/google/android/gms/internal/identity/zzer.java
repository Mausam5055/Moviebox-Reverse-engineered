package com.google.android.gms.internal.identity;

/* JADX INFO: loaded from: classes4.dex */
public final class zzer {
    public static void zza(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void zzb(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static int zzc(int i11, int i12, String str) {
        String strZza;
        if (i11 >= 0 && i11 < i12) {
            return i11;
        }
        if (i11 < 0) {
            strZza = zzes.zza("%s (%s) must not be negative", "index", Integer.valueOf(i11));
        } else {
            if (i12 < 0) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(i12).length() + 15);
                sb2.append("negative size: ");
                sb2.append(i12);
                throw new IllegalArgumentException(sb2.toString());
            }
            strZza = zzes.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzd(int i11, int i12, String str) {
        if (i11 < 0 || i11 > i12) {
            throw new IndexOutOfBoundsException(zzf(i11, i12, "index"));
        }
        return i11;
    }

    public static void zze(int i11, int i12, int i13) {
        String strZzf;
        if (i11 < 0 || i12 < i11 || i12 > i13) {
            if (i11 < 0 || i11 > i13) {
                strZzf = zzf(i11, i13, "start index");
            } else {
                strZzf = (i12 < 0 || i12 > i13) ? zzf(i12, i13, "end index") : zzes.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i12), Integer.valueOf(i11));
            }
            throw new IndexOutOfBoundsException(strZzf);
        }
    }

    private static String zzf(int i11, int i12, String str) {
        if (i11 < 0) {
            return zzes.zza("%s (%s) must not be negative", str, Integer.valueOf(i11));
        }
        if (i12 >= 0) {
            return zzes.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i11), Integer.valueOf(i12));
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i12).length() + 15);
        sb2.append("negative size: ");
        sb2.append(i12);
        throw new IllegalArgumentException(sb2.toString());
    }
}
