package com.cloud.tmc.integration.utils;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import com.cloud.tmc.kernel.log.TmcLogger;

/* JADX INFO: loaded from: classes3.dex */
public class DimensionUtil {
    private static final String TAG = "TmcKernel:DimensionUtil";
    private static float sScale;
    private static float sScaledDensity;
    private static int sScreenHeight;
    private static int sScreenWidth;

    public static int dip2px(Context context, float f11) {
        initScale(context);
        return (int) ((f11 * sScale) + 0.5f);
    }

    public static float getDensity(Context context) {
        initScale(context);
        return sScale;
    }

    public static float getFontSize(float f11) {
        if (f11 == 0.875f) {
            return 14.0f;
        }
        if (f11 == 1.0f) {
            return 16.0f;
        }
        if (f11 == 1.125f) {
            return 18.0f;
        }
        if (f11 == 1.25f) {
            return 20.0f;
        }
        return f11 == 1.375f ? 22.0f : 16.0f;
    }

    public static int getRelativeLeft(View view) {
        return view.getId() == 16908290 ? view.getLeft() : view.getLeft() + getRelativeLeft((View) view.getParent());
    }

    public static int getRelativeTop(View view) {
        return view.getId() == 16908290 ? view.getTop() : view.getTop() + getRelativeTop((View) view.getParent());
    }

    public static int getScreenHeight(Context context) {
        int i11 = sScreenHeight;
        if (i11 != 0) {
            return i11;
        }
        int height = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getHeight();
        sScreenHeight = height;
        return height;
    }

    public static int getScreenWidth(Context context) {
        int i11 = sScreenWidth;
        if (i11 != 0) {
            return i11;
        }
        int width = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
        sScreenWidth = width;
        return width;
    }

    private static void initScale(Context context) {
        try {
            if (sScale == 0.0f) {
                sScale = context.getResources().getDisplayMetrics().density;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private static void initScaledDensity(Context context) {
        try {
            if (sScaledDensity == 0.0f) {
                sScaledDensity = context.getResources().getDisplayMetrics().scaledDensity;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public static boolean isValueEqule(float f11, float f12) {
        return ((int) f11) == ((int) f12);
    }

    public static int px2dip(Context context, float f11) {
        initScale(context);
        return (int) ((f11 / sScale) + 0.5f);
    }

    public static float px2sp(Context context, float f11) {
        initScaledDensity(context);
        return f11 / sScaledDensity;
    }

    public static void resetDimensions() {
        sScreenWidth = 0;
        sScreenHeight = 0;
        sScaledDensity = 0.0f;
        sScale = 0.0f;
    }

    public static int sp2px(Context context, float f11) {
        initScaledDensity(context);
        return (int) ((f11 * sScaledDensity) + 0.5f);
    }
}
