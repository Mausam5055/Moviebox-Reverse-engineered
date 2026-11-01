package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class kF extends vS {
    private int Sj;

    public kF(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.Sj = 0;
        com.bytedance.sdk.component.adexpress.vS.kF kFVar = new com.bytedance.sdk.component.adexpress.vS.kF(context, null);
        this.Zq = kFVar;
        kFVar.setTag(Integer.valueOf(getClickArea()));
        addView(this.Zq, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        int iSj = (int) ((com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.HiB()) * 5.0f) + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.TKC() + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.EjP())));
        if (this.Jcg > iSj && 4 == this.f20889aa.Dq()) {
            this.Sj = (this.Jcg - iSj) / 2;
        }
        this.Jcg = iSj;
        return new FrameLayout.LayoutParams(this.Jcg, this.Dq);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        DynamicRootView dynamicRootView;
        super.uA();
        double dFmk = this.f20889aa.Fmk();
        if (com.bytedance.sdk.component.adexpress.EjP.sP() && (dFmk < 0.0d || dFmk > 5.0d || ((dynamicRootView = this.sef) != null && dynamicRootView.getRenderRequest() != null && this.sef.getRenderRequest().TEQ() != 4))) {
            this.Zq.setVisibility(8);
            return true;
        }
        double d11 = (dFmk < 0.0d || dFmk > 5.0d) ? 5.0d : dFmk;
        this.Zq.setVisibility(0);
        ((com.bytedance.sdk.component.adexpress.vS.kF) this.Zq).Sj(d11, this.f20889aa.Jcg(), (int) this.f20889aa.HiB(), ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.sP())) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.Sj())) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.HiB())));
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        layoutParams.topMargin = this.TEQ;
        int i11 = this.uA + this.Sj;
        layoutParams.leftMargin = i11;
        layoutParams.setMarginStart(i11);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
