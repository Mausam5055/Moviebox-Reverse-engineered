package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class sef extends vS {
    public sef(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        ImageView imageView = new ImageView(context);
        this.Zq = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            this.Dq = Math.max(dynamicRootView.getLogoUnionHeight(), this.Dq);
        }
        addView(this.Zq, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        DynamicRootView dynamicRootView = this.sef;
        if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null || TextUtils.isEmpty(this.sef.getRenderRequest().wE())) {
            setVisibility(8);
        } else {
            String strWE = this.sef.getRenderRequest().wE();
            if (strWE.equals("logo")) {
                ((ImageView) this.Zq).setImageResource(com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_ad_logo"));
            } else {
                com.bytedance.sdk.component.HiB.TEQ teqHiB = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().HiB().Sj(strWE).Sj(this.Jcg).sP(this.Dq).EjP(this.Jcg).HiB(this.Dq);
                String strSef = this.sef.getRenderRequest().sef();
                if (!TextUtils.isEmpty(strSef)) {
                    teqHiB.sP(strSef);
                }
                teqHiB.Sj((ImageView) this.Zq);
            }
        }
        ((ImageView) this.Zq).setColorFilter(this.f20889aa.Jcg(), PorterDuff.Mode.SRC_IN);
        return true;
    }
}
