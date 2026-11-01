package com.warkiz.widget;

import android.content.Context;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes7.dex */
public class g {
    public static int a(Context context, float f11) {
        return (int) TypedValue.applyDimension(1, f11, context.getResources().getDisplayMetrics());
    }

    public static int b(Context context, float f11) {
        return (int) ((f11 / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int c(Context context, float f11) {
        return (int) ((f11 * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
