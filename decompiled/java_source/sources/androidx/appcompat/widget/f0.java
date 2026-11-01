package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f2016a = new ThreadLocal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int[] f2017b = {-16842910};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int[] f2018c = {R.attr.state_focused};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[] f2019d = {R.attr.state_activated};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f2020e = {R.attr.state_pressed};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int[] f2021f = {R.attr.state_checked};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int[] f2022g = {R.attr.state_selected};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int[] f2023h = {-16842919, -16842908};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final int[] f2024i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f2025j = new int[1];

    public static void a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R$styleable.AppCompatTheme);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i11) {
        ColorStateList colorStateListE = e(context, i11);
        if (colorStateListE != null && colorStateListE.isStateful()) {
            return colorStateListE.getColorForState(f2017b, colorStateListE.getDefaultColor());
        }
        TypedValue typedValueF = f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueF, true);
        return d(context, i11, typedValueF.getFloat());
    }

    public static int c(Context context, int i11) {
        int[] iArr = f2025j;
        iArr[0] = i11;
        j0 j0VarU = j0.u(context, null, iArr);
        try {
            return j0VarU.b(0, 0);
        } finally {
            j0VarU.x();
        }
    }

    static int d(Context context, int i11, float f11) {
        int iC = c(context, i11);
        return z0.b.p(iC, Math.round(Color.alpha(iC) * f11));
    }

    public static ColorStateList e(Context context, int i11) {
        int[] iArr = f2025j;
        iArr[0] = i11;
        j0 j0VarU = j0.u(context, null, iArr);
        try {
            return j0VarU.c(0);
        } finally {
            j0VarU.x();
        }
    }

    private static TypedValue f() {
        ThreadLocal threadLocal = f2016a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
