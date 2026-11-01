package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class zR extends vS implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    private int Sj;
    private int sP;
    private int sU;

    public zR(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        setTag(Integer.valueOf(getClickArea()));
        dynamicRootView.setTimeOutListener(this);
        Sj();
    }

    private void Sj() {
        List<com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq> listYm = this.Fmk.Ym();
        if (listYm == null || listYm.size() <= 0) {
            return;
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 : listYm) {
            if (dq2.TEQ().Sj() == 21) {
                this.Sj = (int) (this.Jcg - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, dq2.Dq()));
            }
            if (dq2.TEQ().Sj() == 20) {
                this.sP = (int) (this.Jcg - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, dq2.Dq()));
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC
    public void Sj(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        this.sU = i11;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (this.sU == 0) {
            setMeasuredDimension(this.sP, this.Dq);
        } else {
            setMeasuredDimension(this.Sj, this.Dq);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        setBackground(getBackgroundDrawable());
        setPadding((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.TKC()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.sP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.EjP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.Sj()));
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i11 = this.uA;
        layoutParams.leftMargin = i11;
        layoutParams.topMargin = this.TEQ;
        layoutParams.setMarginStart(i11);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
