package com.transsion.push.utils;

import android.app.Activity;
import android.view.View;
import android.view.Window;

/* JADX INFO: loaded from: classes6.dex */
public class StatusBarUtils {
    public static void setNavigationBarColor(Activity activity, int i11) {
        activity.getWindow().setNavigationBarColor(activity.getResources().getColor(i11, activity.getTheme()));
        activity.setImmersive(true);
    }

    public static void setNavigationBarLightMode(Activity activity, boolean z10) {
        try {
            int i11 = View.class.getField("SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR").getInt(View.class);
            if (i11 > 0) {
                View decorView = activity.getWindow().getDecorView();
                if (z10) {
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (~i11));
                } else {
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | i11);
                }
            }
        } catch (Exception unused) {
            PushLogUtils.LOG.i("not surport NavigationbarDarkMode");
        }
    }

    public static void setStatusBarColor(Activity activity, int i11) {
        activity.getWindow().setStatusBarColor(activity.getResources().getColor(i11, activity.getTheme()));
        activity.setImmersive(true);
    }

    public static void setStatusBarLightMode(Window window, boolean z10) {
        int i11;
        View decorView = window.getDecorView();
        if (decorView == null) {
            return;
        }
        int systemUiVisibility = decorView.getSystemUiVisibility();
        if (z10) {
            window.addFlags(Integer.MIN_VALUE);
            i11 = systemUiVisibility | 8192;
        } else {
            i11 = systemUiVisibility & (-8193);
        }
        decorView.setSystemUiVisibility(i11);
    }
}
