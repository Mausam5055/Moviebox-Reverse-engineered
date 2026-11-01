package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class Fmk extends vS {
    public Fmk(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        TextView textView = new TextView(context);
        this.Zq = textView;
        textView.setTag(Integer.valueOf(getClickArea()));
        addView(this.Zq, getWidgetLayoutParams());
    }

    private boolean Sj() {
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.f20889aa.sP) && this.f20889aa.sP.contains("adx:")) || com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0080  */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        com.bytedance.sdk.component.adexpress.sP.Fmk renderRequest;
        super.uA();
        this.Zq.setTextAlignment(this.f20889aa.Dq());
        ((TextView) this.Zq).setTextColor(this.f20889aa.Jcg());
        ((TextView) this.Zq).setTextSize(this.f20889aa.HiB());
        if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
            if (!Sj()) {
                ((TextView) this.Zq).setText(com.bytedance.sdk.component.utils.ib.sP(getContext(), "tt_logo_cn"));
                return true;
            }
            if (com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP()) {
                ((TextView) this.Zq).setText(com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.Sj());
                return true;
            }
            ((TextView) this.Zq).setText(com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.Sj(this.f20889aa.sP));
            return true;
        }
        int i11 = 0;
        ((TextView) this.Zq).setIncludeFontPadding(false);
        ((TextView) this.Zq).setTextSize(Math.min(((com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.Dq) - this.f20889aa.sP()) - this.f20889aa.Sj()) - 0.5f, this.f20889aa.HiB()));
        DynamicRootView dynamicRootView = this.sef;
        if (dynamicRootView == null || (renderRequest = dynamicRootView.getRenderRequest()) == null) {
            i11 = 8;
        } else {
            String strLey = renderRequest.ley();
            if (TextUtils.isEmpty(strLey)) {
                i11 = 8;
            } else {
                ((TextView) this.Zq).setText(strLey);
            }
        }
        ((TextView) this.Zq).setVisibility(i11);
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    public void vS() {
        com.bytedance.sdk.component.adexpress.sP.Fmk renderRequest = this.sef.getRenderRequest();
        if (renderRequest == null || !TextUtils.isEmpty(renderRequest.wE())) {
            super.vS();
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
    }
}
