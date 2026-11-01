package com.bytedance.sdk.openadsdk.utils;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.permission.PermissionConstant;

/* JADX INFO: loaded from: classes3.dex */
public class vS {
    static int Sj = -1;
    private static long TKC;
    static float sP;

    public static class Sj {
        public final int Sj;
        public final float sP;

        public Sj(int i11, float f11) {
            this.Sj = i11;
            this.sP = f11;
        }
    }

    @NonNull
    public static Sj Sj() {
        if (TKC == 0 || SystemClock.elapsedRealtime() - TKC > 60000) {
            Intent intentRegisterReceiver = com.bytedance.sdk.openadsdk.core.dNu.Sj().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            "obtainCurrentState: registerReceiver result is ".concat(String.valueOf(intentRegisterReceiver));
            if (intentRegisterReceiver != null) {
                Sj(intentRegisterReceiver);
                TKC = SystemClock.elapsedRealtime();
            }
        }
        return new Sj(Sj, sP);
    }

    private static void Sj(Intent intent) {
        if (intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1) == 2) {
            Sj = 1;
        } else {
            Sj = 0;
        }
        sP = (intent.getIntExtra(PermissionConstant.level, -1) * 100) / intent.getIntExtra("scale", -1);
    }
}
