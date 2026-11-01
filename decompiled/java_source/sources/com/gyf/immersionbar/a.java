package com.gyf.immersionbar;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f33061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f33062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f33063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f33064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f33065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f33066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f33067g;

    a(Activity activity) {
        this.f33066f = activity.getResources().getConfiguration().orientation == 1;
        this.f33067g = j(activity);
        this.f33061a = c(activity, "status_bar_height");
        this.f33062b = b(activity);
        int iE = e(activity);
        this.f33064d = iE;
        this.f33065e = h(activity);
        this.f33063c = iE > 0;
    }

    private int b(Activity activity) {
        View viewFindViewById = activity.getWindow().findViewById(R$id.action_bar_container);
        int measuredHeight = viewFindViewById != null ? viewFindViewById.getMeasuredHeight() : 0;
        if (measuredHeight != 0) {
            return measuredHeight;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
    }

    static int c(Context context, String str) {
        try {
            int identifier = Resources.getSystem().getIdentifier(str, "dimen", "android");
            if (identifier > 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(identifier);
                int dimensionPixelSize2 = Resources.getSystem().getDimensionPixelSize(identifier);
                if (dimensionPixelSize2 >= dimensionPixelSize && (Build.VERSION.SDK_INT < 29 || str.equals("status_bar_height"))) {
                    return dimensionPixelSize2;
                }
                float f11 = (dimensionPixelSize * Resources.getSystem().getDisplayMetrics().density) / context.getResources().getDisplayMetrics().density;
                return (int) (f11 >= 0.0f ? f11 + 0.5f : f11 - 0.5f);
            }
        } catch (Resources.NotFoundException unused) {
        }
        return 0;
    }

    private int e(Context context) {
        if (l((Activity) context)) {
            return f(context);
        }
        return 0;
    }

    static int f(Context context) {
        return c(context, context.getResources().getConfiguration().orientation == 1 ? "navigation_bar_height" : "navigation_bar_height_landscape");
    }

    private int h(Context context) {
        if (l((Activity) context)) {
            return c(context, "navigation_bar_width");
        }
        return 0;
    }

    static int i(Context context) {
        return c(context, "navigation_bar_width");
    }

    private float j(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        float f11 = displayMetrics.widthPixels;
        float f12 = displayMetrics.density;
        return Math.min(f11 / f12, displayMetrics.heightPixels / f12);
    }

    private boolean l(Activity activity) {
        g.a aVarA = g.a(activity);
        if (!aVarA.f33119b && aVarA.f33118a) {
            return false;
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i11 = displayMetrics.heightPixels;
        int i12 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i12 - displayMetrics2.widthPixels > 0 || i11 - displayMetrics2.heightPixels > 0;
    }

    int a() {
        return this.f33062b;
    }

    int d() {
        return this.f33064d;
    }

    int g() {
        return this.f33065e;
    }

    int k() {
        return this.f33061a;
    }

    boolean m() {
        return this.f33063c;
    }

    boolean n() {
        return this.f33067g >= 600.0f || this.f33066f;
    }
}
