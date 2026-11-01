package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends vS {
    public uA(Context context, @NonNull DynamicRootView dynamicRootView, @NonNull com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            this.Zq = new ImageView(context);
        } else {
            this.Zq = new com.bytedance.sdk.component.adexpress.vS.uA(context);
        }
        this.Zq.setTag(3);
        addView(this.Zq, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.Zq);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            Drawable drawableSj = com.bytedance.sdk.component.adexpress.EjP.TKC.Sj(getContext(), this.f20889aa);
            if (drawableSj != null) {
                this.Zq.setBackground(drawableSj);
            }
            int iEjP = com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_close_btn");
            if (iEjP > 0) {
                ((ImageView) this.Zq).setImageResource(iEjP);
            }
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.dNu());
        View view = this.Zq;
        if (view instanceof com.bytedance.sdk.component.adexpress.vS.uA) {
            ((com.bytedance.sdk.component.adexpress.vS.uA) view).setRadius((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.Zq()));
            ((com.bytedance.sdk.component.adexpress.vS.uA) this.Zq).setStrokeWidth(iSj);
            ((com.bytedance.sdk.component.adexpress.vS.uA) this.Zq).setStrokeColor(this.f20889aa.uvD());
            ((com.bytedance.sdk.component.adexpress.vS.uA) this.Zq).setBgColor(this.f20889aa.LqL());
            ((com.bytedance.sdk.component.adexpress.vS.uA) this.Zq).setDislikeColor(this.f20889aa.Jcg());
            ((com.bytedance.sdk.component.adexpress.vS.uA) this.Zq).setDislikeWidth((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, 1.0f));
        }
        return true;
    }
}
