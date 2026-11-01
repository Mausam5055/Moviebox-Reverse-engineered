package com.bytedance.sdk.component.adexpress.EjP;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    public static Drawable Sj(Context context, int i11, int i12, int i13) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        if (context != null) {
            gradientDrawable.setStroke(i11, i12);
        }
        gradientDrawable.setColor(i13);
        return gradientDrawable;
    }

    public static Drawable Sj(Context context, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        if (context == null || jcg == null) {
            return null;
        }
        return Sj(context, (int) Jcg.Sj(context, jcg.dNu()), jcg.uvD(), jcg.LqL());
    }
}
