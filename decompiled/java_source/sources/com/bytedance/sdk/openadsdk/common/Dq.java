package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends LinearLayout {
    public Dq(Context context) {
        super(context);
        Sj();
    }

    private static ImageView Sj(Context context, float f11, float f12, float f13, float f14) {
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setClickable(true);
        ejP.setFocusable(true);
        ejP.setPadding(FPG.sP(context, f13), FPG.sP(context, f14), FPG.sP(context, f13), FPG.sP(context, f14));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(FPG.sP(context, 40.0f), FPG.sP(context, 44.0f));
        if (f11 > 0.0f) {
            layoutParams.leftMargin = FPG.sP(context, f11);
        }
        if (f12 > 0.0f) {
            layoutParams.rightMargin = FPG.sP(context, f12);
        }
        ejP.setLayoutParams(layoutParams);
        return ejP;
    }

    private void Sj() {
        Context context = getContext();
        setId(com.bytedance.sdk.openadsdk.utils.Zq.Ir);
        setLayoutParams(new ViewGroup.LayoutParams(-1, FPG.sP(context, 44.5f)));
        setBackgroundColor(-1);
        setClickable(true);
        setFocusable(true);
        setOrientation(1);
        View view = new View(context);
        view.setBackgroundColor(Color.parseColor("#1F161823"));
        addView(view, new LinearLayout.LayoutParams(-1, FPG.sP(context, 0.5f)));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(0);
        addView(hiB, new LinearLayout.LayoutParams(-1, FPG.sP(context, 44.0f)));
        ImageView imageViewSj = Sj(context, 16.0f, 0.0f, 14.75f, 12.5f);
        imageViewSj.setId(com.bytedance.sdk.openadsdk.utils.Zq.aZ);
        imageViewSj.setImageResource(ib.EjP(context, "tt_ad_arrow_backward"));
        hiB.addView(imageViewSj);
        View view2 = new View(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        layoutParams.weight = 1.0f;
        hiB.addView(view2, layoutParams);
        ImageView imageViewSj2 = Sj(context, 8.0f, 0.0f, 14.75f, 12.5f);
        imageViewSj2.setId(com.bytedance.sdk.openadsdk.utils.Zq.HS);
        imageViewSj2.setImageResource(ib.EjP(context, "tt_ad_arrow_forward"));
        hiB.addView(imageViewSj2);
        View view3 = new View(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, 0);
        layoutParams2.weight = 1.0f;
        hiB.addView(view3, layoutParams2);
        ImageView imageViewSj3 = Sj(context, 8.0f, 0.0f, 10.0f, 12.0f);
        imageViewSj3.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21136tz);
        imageViewSj3.setImageResource(ib.EjP(context, "tt_ad_refresh"));
        hiB.addView(imageViewSj3);
        View view4 = new View(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 0);
        layoutParams3.weight = 1.0f;
        hiB.addView(view4, layoutParams3);
        ImageView imageViewSj4 = Sj(context, 0.0f, 16.0f, 9.0f, 11.0f);
        imageViewSj4.setId(com.bytedance.sdk.openadsdk.utils.Zq.TFd);
        imageViewSj4.setImageResource(ib.EjP(context, "tt_ad_link"));
        hiB.addView(imageViewSj4);
    }
}
