package com.pgl.ssdk;

import android.content.Context;
import android.graphics.Point;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes5.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f40086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f40087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f40088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f40089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f40090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f40091f;

    private static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f40089d = (int) displayMetrics.density;
            f40088c = displayMetrics.densityDpi;
        } catch (Throwable unused) {
        }
    }

    private static void b(Context context) {
        try {
            new DisplayMetrics();
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f40090e = (int) displayMetrics.xdpi;
            f40091f = (int) displayMetrics.ydpi;
        } catch (Throwable unused) {
        }
    }

    private static void c(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            f40086a = point.x;
            f40087b = point.y;
        } catch (Throwable unused) {
        }
    }

    public static String d(Context context) {
        int i11 = -1;
        if (context != null) {
            try {
                i11 = Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
            } catch (Throwable unused) {
            }
        }
        return String.valueOf(i11);
    }

    public static String e(Context context) {
        try {
            c(context);
            a(context);
            b(context);
        } catch (Throwable unused) {
        }
        return f40088c + "[<!>]" + f40086a + "," + f40087b + "[<!>]";
    }
}
