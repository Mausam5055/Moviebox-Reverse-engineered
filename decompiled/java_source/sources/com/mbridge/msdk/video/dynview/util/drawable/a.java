package com.mbridge.msdk.video.dynview.util.drawable;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static void a(View view, float f11, float f12, String str, String[] strArr, GradientDrawable.Orientation orientation) {
        if (view == null || strArr == null) {
            return;
        }
        int[] iArr = new int[strArr.length];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            iArr[i11] = Color.parseColor(strArr[i11]);
        }
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, iArr);
        gradientDrawable.setCornerRadius(t0.a(view.getContext(), f12));
        gradientDrawable.setStroke(t0.a(view.getContext(), f11), Color.parseColor(str));
        view.setBackground(gradientDrawable);
    }

    public static void a(View view, int i11, int i12, String str, String str2) {
        if (view != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(Color.parseColor(str2));
            gradientDrawable.setCornerRadius(t0.a(view.getContext(), i12));
            gradientDrawable.setStroke(t0.a(view.getContext(), i11), Color.parseColor(str));
            view.setBackground(gradientDrawable);
        }
    }
}
