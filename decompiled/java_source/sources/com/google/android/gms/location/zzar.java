package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzar {
    public static int zza(int i11) {
        boolean z10;
        if (i11 == 0 || i11 == 1) {
            z10 = true;
        } else if (i11 == 2) {
            i11 = 2;
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant", Integer.valueOf(i11));
        return i11;
    }

    public static String zzb(int i11) {
        if (i11 == 0) {
            return "THROTTLE_BACKGROUND";
        }
        if (i11 == 1) {
            return "THROTTLE_ALWAYS";
        }
        if (i11 == 2) {
            return "THROTTLE_NEVER";
        }
        throw new IllegalArgumentException();
    }
}
