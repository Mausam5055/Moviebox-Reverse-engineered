package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class zzgs {

    @Nullable
    private static UserManager zza;
    private static volatile boolean zzb = !zza();

    private zzgs() {
    }

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean zza(Context context) {
        return zza() && !zzc(context);
    }

    public static boolean zzb(Context context) {
        return !zza() || zzc(context);
    }

    @TargetApi(24)
    private static boolean zzc(Context context) {
        if (zzb) {
            return true;
        }
        synchronized (zzgs.class) {
            try {
                if (zzb) {
                    return true;
                }
                boolean zZzd = zzd(context);
                if (zZzd) {
                    zzb = zZzd;
                }
                return zZzd;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @TargetApi(24)
    private static boolean zzd(Context context) {
        boolean z10;
        boolean z11 = true;
        int i11 = 1;
        while (true) {
            z10 = false;
            if (i11 > 2) {
                break;
            }
            if (zza == null) {
                zza = (UserManager) context.getSystemService(UserManager.class);
            }
            UserManager userManager = zza;
            if (userManager == null) {
                return true;
            }
            try {
                if (!userManager.isUserUnlocked() && userManager.isUserRunning(Process.myUserHandle())) {
                    z11 = false;
                }
                z10 = z11;
                break;
            } catch (NullPointerException e11) {
                Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e11);
                zza = null;
                i11++;
            }
        }
        if (z10) {
            zza = null;
        }
        return z10;
    }
}
