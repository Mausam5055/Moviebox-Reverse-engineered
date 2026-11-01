package com.bytedance.sdk.component.adexpress.EjP;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.ib;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {
    private static boolean Sj;

    private static float EjP(Context context) {
        try {
            if (Sj) {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.DisplayMetrics");
                Method declaredMethod = clsLoadClass.getDeclaredMethod("getDeviceDensity", null);
                declaredMethod.setAccessible(true);
                return ((Integer) declaredMethod.invoke(clsLoadClass, null)).intValue() / 160.0f;
            }
        } catch (Exception unused) {
        }
        return context.getResources().getDisplayMetrics().density;
    }

    public static float Sj(Context context, float f11) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        return (f11 * EjP(context)) + 0.5f;
    }

    public static int Sj(float f11, float f12, float f13, float f14) {
        return (((int) ((f11 * 255.0f) + 0.5f)) << 24) | (((int) ((f12 * 255.0f) + 0.5f)) << 16) | (((int) ((f13 * 255.0f) + 0.5f)) << 8) | ((int) ((f14 * 255.0f) + 0.5f));
    }

    public static int Sj(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private static String Sj(String str) {
        str.hashCode();
        switch (str) {
            case "ar":
                return "aa";
            case "ja":
                return "japan";
            case "ko":
                return "korea";
            case "ms":
                return "my";
            case "zh":
                return "cn";
            default:
                return str;
        }
    }

    public static float TKC(Context context, float f11) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        return f11 * EjP(context);
    }

    public static String TKC(@NonNull Context context) {
        String language;
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? ib.sP(context).getConfiguration().getLocales().get(0) : Locale.getDefault();
            language = locale.getLanguage();
            try {
                if (locale.getCountry().equals("TW")) {
                    language = "zhHant";
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            language = "";
        }
        return Sj(language);
    }

    public static int sP(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int sP(Context context, float f11) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        float fEjP = EjP(context);
        if (fEjP <= 0.0f) {
            fEjP = 1.0f;
        }
        return (int) ((f11 / fEjP) + 0.5f);
    }
}
