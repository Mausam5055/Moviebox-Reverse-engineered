package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
public final class zzam {
    public static int zza(int i11, int i12, String str) {
        String strZza;
        if (i11 >= 0 && i11 < i12) {
            return i11;
        }
        if (i11 < 0) {
            strZza = zzan.zza("%s (%s) must not be negative", "index", Integer.valueOf(i11));
        } else {
            if (i12 < 0) {
                throw new IllegalArgumentException("negative size: " + i12);
            }
            strZza = zzan.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzb(int i11, int i12, String str) {
        if (i11 < 0 || i11 > i12) {
            throw new IndexOutOfBoundsException(zzf(i11, i12, "index"));
        }
        return i11;
    }

    public static void zzc(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void zzd(boolean z10, String str, char c11) {
        if (!z10) {
            throw new IllegalArgumentException(zzan.zza(str, Character.valueOf(c11)));
        }
    }

    public static void zze(int i11, int i12, int i13) {
        String strZzf;
        if (i11 < 0 || i12 < i11 || i12 > i13) {
            if (i11 < 0 || i11 > i13) {
                strZzf = zzf(i11, i13, "start index");
            } else {
                strZzf = (i12 < 0 || i12 > i13) ? zzf(i12, i13, "end index") : zzan.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i12), Integer.valueOf(i11));
            }
            throw new IndexOutOfBoundsException(strZzf);
        }
    }

    private static String zzf(int i11, int i12, String str) {
        if (i11 < 0) {
            return zzan.zza("%s (%s) must not be negative", str, Integer.valueOf(i11));
        }
        if (i12 >= 0) {
            return zzan.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IllegalArgumentException("negative size: " + i12);
    }
}
