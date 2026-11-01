package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {
    public static void a(Window window, boolean z10, Integer num, Integer num2) {
        boolean z11 = num == null || num.intValue() == 0;
        boolean z12 = num2 == null || num2.intValue() == 0;
        if (z11 || z12) {
            int iB = com.google.android.material.color.b.b(window.getContext(), R.attr.colorBackground, ViewCompat.MEASURED_STATE_MASK);
            if (z11) {
                num = Integer.valueOf(iB);
            }
            if (z12) {
                num2 = Integer.valueOf(iB);
            }
        }
        WindowCompat.setDecorFitsSystemWindows(window, !z10);
        int iC = c(window.getContext(), z10);
        int iB2 = b(window.getContext(), z10);
        window.setStatusBarColor(iC);
        window.setNavigationBarColor(iB2);
        f(window, d(iC, com.google.android.material.color.b.h(num.intValue())));
        e(window, d(iB2, com.google.android.material.color.b.h(num2.intValue())));
    }

    private static int b(Context context, boolean z10) {
        if (z10 && Build.VERSION.SDK_INT < 27) {
            return z0.b.p(com.google.android.material.color.b.b(context, R.attr.navigationBarColor, ViewCompat.MEASURED_STATE_MASK), 128);
        }
        if (z10) {
            return 0;
        }
        return com.google.android.material.color.b.b(context, R.attr.navigationBarColor, ViewCompat.MEASURED_STATE_MASK);
    }

    private static int c(Context context, boolean z10) {
        if (z10) {
            return 0;
        }
        return com.google.android.material.color.b.b(context, R.attr.statusBarColor, ViewCompat.MEASURED_STATE_MASK);
    }

    private static boolean d(int i11, boolean z10) {
        return com.google.android.material.color.b.h(i11) || (i11 == 0 && z10);
    }

    public static void e(Window window, boolean z10) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z10);
    }

    public static void f(Window window, boolean z10) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(z10);
    }
}
