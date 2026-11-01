package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes2.dex */
public class JcM extends vS implements com.bytedance.sdk.component.adexpress.dynamic.HiB {
    TextView Sj;
    FrameLayout sP;
    boolean sU;

    public JcM(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.sU = false;
        View view = new View(context);
        this.Zq = view;
        view.setTag(Integer.valueOf(getClickArea()));
        this.Sj = new TextView(context);
        this.sP = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 40.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 15.0f));
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_END;
        layoutParams.rightMargin = 20;
        layoutParams.bottomMargin = 20;
        this.Sj.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(25.0f);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.Sj.setBackground(gradientDrawable);
        this.Sj.setTextSize(10.0f);
        this.Sj.setGravity(17);
        this.Sj.setTextColor(-1);
        this.Sj.setVisibility(8);
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            addView(this.sP, new FrameLayout.LayoutParams(-1, -1));
        }
        addView(this.Sj);
        addView(this.Zq, getWidgetLayoutParams());
        if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
            addView(this.sP, getWidgetLayoutParams());
        }
        dynamicRootView.videoView = this.sP;
        dynamicRootView.setVideoListener(this);
    }

    private void TKC(View view) {
        if (view == this.Sj || view == ((vS) this).RiZ) {
            return;
        }
        try {
            if (((Integer) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.Sj.vS)).intValue() == 1) {
                return;
            }
        } catch (Throwable unused) {
        }
        int i11 = 0;
        view.setVisibility(0);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i11 >= viewGroup.getChildCount()) {
                return;
            }
            TKC(viewGroup.getChildAt(i11));
            i11++;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    public boolean HiB() {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.HiB
    public void Sj() {
        this.Sj.setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.HiB
    public void setTimeUpdate(int i11) {
        if (!this.Fmk.TEQ().HiB().TX() || i11 <= 0 || this.sU) {
            this.sU = true;
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                TKC(getChildAt(i12));
            }
            this.Sj.setVisibility(8);
            return;
        }
        String str = (i11 >= 60 ? "0" + (i11 / 60) : "00") + ":";
        int i13 = i11 % 60;
        this.Sj.setText(i13 > 9 ? str + i13 : str + "0" + i13);
        this.Sj.setVisibility(0);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        double dHiB = 0.0d;
        double dEjP = 0.0d;
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dqAa = this.Fmk; dqAa != null; dqAa = dqAa.aa()) {
            double dVS = dEjP + ((double) dqAa.vS());
            double dJcg = dHiB + ((double) dqAa.Jcg());
            dEjP = dVS - ((double) dqAa.EjP());
            dHiB = dJcg - ((double) dqAa.HiB());
        }
        try {
            float f11 = (float) dEjP;
            int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), f11);
            int iSj2 = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), f11 + this.HiB);
            if (com.bytedance.sdk.component.adexpress.EjP.sP.Sj(getContext())) {
                int dynamicWidth = ((TzV) this.sef.getChildAt(0)).getDynamicWidth();
                int i11 = dynamicWidth - iSj2;
                iSj2 = dynamicWidth - iSj;
                iSj = i11;
            }
            if ("open_ad".equals(this.sef.getRenderRequest().EjP())) {
                this.sef.videoView = this.sP;
            } else {
                float f12 = (float) dHiB;
                ((TzV) this.sef.getChildAt(0)).Sj.Sj(iSj, (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), f12), iSj2, (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), f12 + this.vS));
            }
        } catch (Exception unused) {
        }
        this.sef.updateRenderInfoForVideo(dEjP, dHiB, this.HiB, this.vS, this.f20889aa.Zq());
        return true;
    }
}
