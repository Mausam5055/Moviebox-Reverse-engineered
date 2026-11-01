package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzan {
    public static int zza(int i11) {
        boolean z10;
        if (i11 == 100 || i11 == 102 || i11 == 104) {
            z10 = true;
        } else if (i11 == 105) {
            i11 = 105;
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "priority %d must be a Priority.PRIORITY_* constant", Integer.valueOf(i11));
        return i11;
    }

    public static String zzb(int i11) {
        if (i11 == 100) {
            return "HIGH_ACCURACY";
        }
        if (i11 == 102) {
            return "BALANCED_POWER_ACCURACY";
        }
        if (i11 == 104) {
            return "LOW_POWER";
        }
        if (i11 == 105) {
            return "PASSIVE";
        }
        throw new IllegalArgumentException();
    }
}
