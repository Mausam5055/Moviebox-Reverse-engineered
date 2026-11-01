package com.google.android.material.color;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static int a(int i11, int i12) {
        return z0.b.p(i11, (Color.alpha(i11) * i12) / 255);
    }

    public static int b(Context context, int i11, int i12) {
        Integer numF = f(context, i11);
        return numF != null ? numF.intValue() : i12;
    }

    public static int c(Context context, int i11, String str) {
        return l(context, xa.b.e(context, i11, str));
    }

    public static int d(View view, int i11) {
        return l(view.getContext(), xa.b.f(view, i11));
    }

    public static int e(View view, int i11, int i12) {
        return b(view.getContext(), i11, i12);
    }

    public static Integer f(Context context, int i11) {
        TypedValue typedValueA = xa.b.a(context, i11);
        if (typedValueA != null) {
            return Integer.valueOf(l(context, typedValueA));
        }
        return null;
    }

    public static ColorStateList g(Context context, int i11) {
        TypedValue typedValueA = xa.b.a(context, i11);
        if (typedValueA == null) {
            return null;
        }
        int i12 = typedValueA.resourceId;
        if (i12 != 0) {
            return androidx.core.content.b.getColorStateList(context, i12);
        }
        int i13 = typedValueA.data;
        if (i13 != 0) {
            return ColorStateList.valueOf(i13);
        }
        return null;
    }

    public static boolean h(int i11) {
        return i11 != 0 && z0.b.f(i11) > 0.5d;
    }

    public static int i(int i11, int i12) {
        return z0.b.k(i12, i11);
    }

    public static int j(int i11, int i12, float f11) {
        return i(i11, z0.b.p(i12, Math.round(Color.alpha(i12) * f11)));
    }

    public static int k(View view, int i11, int i12, float f11) {
        return j(d(view, i11), d(view, i12), f11);
    }

    private static int l(Context context, TypedValue typedValue) {
        int i11 = typedValue.resourceId;
        return i11 != 0 ? androidx.core.content.b.getColor(context, i11) : typedValue.data;
    }
}
