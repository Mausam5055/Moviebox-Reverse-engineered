package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class wE extends Jcg implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    private boolean Sj;
    private boolean sP;
    private boolean sU;

    public wE(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        dynamicRootView.setTimeOutListener(this);
        if ("timedown".equals(dq2.TEQ().sP())) {
            dynamicRootView.setTimedown(this.Dq);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC
    public void Sj(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        if (z11 || this.sU) {
            ((TextView) this.Zq).setText("");
            setVisibility(8);
            return;
        }
        try {
            if (Integer.parseInt((String) charSequence) <= 0) {
                setVisibility(8);
                return;
            }
        } catch (Exception unused) {
        }
        setVisibility(0);
        if (!z10 && this.sef.getRenderRequest().Sj() && com.bytedance.sdk.component.adexpress.EjP.vS.sP(this.sef.getRenderRequest().EjP())) {
            if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
                ((TextView) this.Zq).setText(i11 + "s");
            } else {
                ((TextView) this.Zq).setText(String.format(com.bytedance.sdk.component.utils.ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_full_skip"), Integer.valueOf(i11)));
            }
            this.Sj = true;
            return;
        }
        if (com.bytedance.sdk.component.adexpress.EjP.sP() && !"open_ad".equals(this.sef.getRenderRequest().EjP()) && this.sef.getRenderRequest().Sj()) {
            this.sU = true;
            setVisibility(8);
            return;
        }
        if ("timedown".equals(this.Fmk.TEQ().sP())) {
            ((TextView) this.Zq).setText(charSequence);
            return;
        }
        ((TextView) this.Zq).setText(((Object) charSequence) + "s");
        this.sP = true;
        if (this.Sj) {
            CharSequence text = ((TextView) this.Zq).getText();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP(text != null ? text.toString() : "", this.f20889aa.HiB(), true)[0] + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.TKC() + this.f20889aa.EjP())), this.Dq);
            layoutParams.gravity = 8388629;
            this.Zq.setLayoutParams(layoutParams);
            this.Sj = false;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (TextUtils.isEmpty(((TextView) this.Zq).getText())) {
            setMeasuredDimension(0, this.Dq);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Jcg, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        if (com.bytedance.sdk.component.adexpress.EjP.vS.sP(this.sef.getRenderRequest().EjP())) {
            setVisibility(8);
        }
        if ("timedown".equals(this.Fmk.TEQ().sP())) {
            ((TextView) this.Zq).setText(String.valueOf((int) Double.parseDouble(this.f20889aa.TEQ())));
            return true;
        }
        ((TextView) this.Zq).setText(((int) Double.parseDouble(this.f20889aa.TEQ())) + "s");
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    public void vS() {
        if (!TextUtils.equals("skip-with-countdowns-video-countdown", this.Fmk.TEQ().sP()) && !TextUtils.equals("skip-with-time-countdown", this.Fmk.TEQ().sP())) {
            super.vS();
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        layoutParams.gravity = 8388627;
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            layoutParams.leftMargin = this.uA;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
