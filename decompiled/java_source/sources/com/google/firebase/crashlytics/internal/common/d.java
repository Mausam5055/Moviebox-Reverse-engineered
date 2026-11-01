package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.permission.PermissionConstant;

/* JADX INFO: loaded from: classes4.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Float f31156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f31157b;

    private d(Float f11, boolean z10) {
        this.f31157b = z10;
        this.f31156a = f11;
    }

    public static d a(Context context) {
        boolean zE = false;
        Float fD = null;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                zE = e(intentRegisterReceiver);
                fD = d(intentRegisterReceiver);
            }
        } catch (IllegalStateException e11) {
            ob.g.f().e("An error occurred getting battery state.", e11);
        }
        return new d(fD, zE);
    }

    private static Float d(Intent intent) {
        int intExtra = intent.getIntExtra(PermissionConstant.level, -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra == -1 || intExtra2 == -1) {
            return null;
        }
        return Float.valueOf(intExtra / intExtra2);
    }

    private static boolean e(Intent intent) {
        int intExtra = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        if (intExtra == -1) {
            return false;
        }
        return intExtra == 2 || intExtra == 5;
    }

    public Float b() {
        return this.f31156a;
    }

    public int c() {
        Float f11;
        if (!this.f31157b || (f11 = this.f31156a) == null) {
            return 1;
        }
        return ((double) f11.floatValue()) < 0.99d ? 2 : 3;
    }
}
