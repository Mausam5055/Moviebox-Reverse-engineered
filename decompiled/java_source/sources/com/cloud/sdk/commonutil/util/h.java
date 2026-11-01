package com.cloud.sdk.commonutil.util;

import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes3.dex */
public class h {
    public static int a(float f11) {
        return (int) ((f11 * b()) + 0.5f);
    }

    public static float b() {
        try {
            DisplayMetrics displayMetricsD = d();
            if (displayMetricsD == null) {
                return -1.0f;
            }
            return displayMetricsD.density;
        } catch (Exception unused) {
            return -1.0f;
        }
    }

    public static float c() {
        try {
            DisplayMetrics displayMetricsD = d();
            if (displayMetricsD == null) {
                return -1.0f;
            }
            return displayMetricsD.scaledDensity;
        } catch (Exception unused) {
            return -1.0f;
        }
    }

    private static DisplayMetrics d() {
        if (e.a() == null) {
            return null;
        }
        Display defaultDisplay = ((WindowManager) e.a().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            return displayMetrics;
        } catch (Exception e11) {
            c.Log().e("ssp", "getRealMetrics error: " + Log.getStackTraceString(e11));
            return null;
        }
    }

    public static int e() {
        if (e.a() == null || e.a().getResources() == null) {
            return 0;
        }
        return e.a().getResources().getConfiguration().orientation;
    }

    public static int f() {
        if (e.a() == null) {
            return -1;
        }
        return d().heightPixels;
    }

    public static int g() {
        if (e.a() == null) {
            return -1;
        }
        return d().widthPixels;
    }

    public static int h(float f11) {
        return (int) ((f11 / c()) + 0.5f);
    }

    public static int i(float f11) {
        return (int) ((f11 * c()) + 0.5f);
    }
}
