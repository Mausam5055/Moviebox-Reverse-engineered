package com.google.android.gms.internal.common;

import org.jspecify.nullness.NullMarked;

/* JADX INFO: loaded from: classes4.dex */
@NullMarked
public final class zzs {
    public static int zza(int i11, int i12, String str) {
        String strZza;
        if (i11 >= 0 && i11 < i12) {
            return i11;
        }
        if (i11 < 0) {
            strZza = zzy.zza("%s (%s) must not be negative", "index", Integer.valueOf(i11));
        } else {
            if (i12 < 0) {
                throw new IllegalArgumentException("negative size: " + i12);
            }
            strZza = zzy.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzb(int i11, int i12, String str) {
        if (i11 < 0 || i11 > i12) {
            throw new IndexOutOfBoundsException(zzd(i11, i12, "index"));
        }
        return i11;
    }

    public static void zzc(int i11, int i12, int i13) {
        String strZzd;
        if (i11 < 0 || i12 < i11 || i12 > i13) {
            if (i11 < 0 || i11 > i13) {
                strZzd = zzd(i11, i13, "start index");
            } else {
                strZzd = (i12 < 0 || i12 > i13) ? zzd(i12, i13, "end index") : zzy.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i12), Integer.valueOf(i11));
            }
            throw new IndexOutOfBoundsException(strZzd);
        }
    }

    private static String zzd(int i11, int i12, String str) {
        if (i11 < 0) {
            return zzy.zza("%s (%s) must not be negative", str, Integer.valueOf(i11));
        }
        if (i12 >= 0) {
            return zzy.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i11), Integer.valueOf(i12));
        }
        throw new IllegalArgumentException("negative size: " + i12);
    }
}
