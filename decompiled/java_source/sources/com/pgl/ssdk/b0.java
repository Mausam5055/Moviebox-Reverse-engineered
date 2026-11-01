package com.pgl.ssdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.provider.Settings;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static double f40084a = -1.0d;

    public static String a() {
        return (Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault()).getLanguage();
    }

    public static String a(Context context) {
        String string;
        try {
            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Throwable unused) {
            string = null;
        }
        return string == null ? "" : string.trim();
    }

    public static String b() {
        String displayName;
        try {
            displayName = TimeZone.getDefault().getDisplayName(false, 0);
        } catch (Throwable unused) {
            displayName = null;
        }
        return displayName == null ? "" : displayName.trim();
    }

    public static String b(Context context) {
        double d11 = f40084a;
        double dDoubleValue = 0.0d;
        if (d11 >= 0.0d) {
            return Integer.toString((int) d11);
        }
        try {
            Class<?> cls = Class.forName("com.android.internal.os.PowerProfile");
            Object objNewInstance = cls.getConstructor(Context.class).newInstance(context);
            Method declaredMethod = cls.getDeclaredMethod("getAveragePower", String.class);
            declaredMethod.setAccessible(true);
            dDoubleValue = ((Double) declaredMethod.invoke(objNewInstance, "battery.capacity")).doubleValue();
        } catch (Throwable unused) {
        }
        f40084a = dDoubleValue;
        return Integer.toString((int) dDoubleValue);
    }

    public static String c() {
        return "";
    }

    @SuppressLint({"MissingPermission"})
    public static String c(Context context) {
        return "";
    }
}
