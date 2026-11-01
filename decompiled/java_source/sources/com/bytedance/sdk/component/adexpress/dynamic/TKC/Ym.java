package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.Yf;
import com.bytedance.sdk.component.utils.ib;

/* JADX INFO: loaded from: classes2.dex */
public class Ym implements Jcg<ViewGroup> {
    private final com.bytedance.sdk.component.adexpress.vS.TEQ Sj;
    private final FrameLayout sP;

    public Ym(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg, String str, String str2) {
        com.bytedance.sdk.component.adexpress.vS.TEQ teq = new com.bytedance.sdk.component.adexpress.vS.TEQ(context);
        this.Sj = teq;
        teq.setImageLottieTosPath(str);
        FrameLayout frameLayout = new FrameLayout(context);
        this.sP = frameLayout;
        frameLayout.addView(teq, new FrameLayout.LayoutParams(-2, -2));
        double dANB = jcg.aNB();
        dANB = dANB == 0.0d ? 1.0d : dANB;
        double dCX = jcg.cX();
        double d11 = dCX != 0.0d ? dCX : 1.0d;
        if ("22".equals(str2)) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 250.0f));
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 120.0f);
            frameLayout.setLayoutParams(layoutParams);
            return;
        }
        if (!"20".equals(str2)) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (((double) hiB.getDynamicWidth()) * 0.32d * dANB), (int) (((double) hiB.getDynamicWidth()) * 0.32d * d11));
            layoutParams2.gravity = 17;
            frameLayout.setLayoutParams(layoutParams2);
        } else {
            Sj(context, frameLayout, jcg);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams3.gravity = 81;
            layoutParams3.bottomMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, jcg.ndK() > 0 ? jcg.ndK() : com.bytedance.sdk.component.adexpress.EjP.sP() ? 0 : 120);
            frameLayout.setLayoutParams(layoutParams3);
            frameLayout.setClipChildren(false);
        }
    }

    private void Sj(Context context, FrameLayout frameLayout, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.setMargins(0, -Yf.Sj(context, 5.0f), 0, 0);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText(context.getString(ib.sP(context, "tt_splash_brush_mask_title")));
        textView.setTextColor(-1);
        textView.setTextSize(2, 20.0f);
        TextView textView2 = new TextView(context);
        textView2.setId(2097610738);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, Yf.Sj(context, 5.0f), 0, 0);
        textView2.setLayoutParams(layoutParams2);
        textView2.setText(context.getString(ib.sP(context, "tt_splash_brush_mask_hint")));
        if (jcg != null && !TextUtils.isEmpty(jcg.sdp())) {
            textView2.setText(jcg.sdp());
        }
        textView2.setTextColor(-1);
        textView2.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        frameLayout.addView(linearLayout);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        this.Sj.Dq();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public ViewGroup TKC() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        this.Sj.vS();
        ViewParent parent = this.sP.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.sP);
        }
    }
}
