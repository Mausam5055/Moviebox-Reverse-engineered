package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class uvD extends vS implements com.bytedance.sdk.component.adexpress.dynamic.sP {
    public uvD(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        ImageView imageView = new ImageView(context);
        this.Zq = imageView;
        imageView.setTag(5);
        addView(this.Zq, getWidgetLayoutParams());
        dynamicRootView.setMuteListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().uP()) {
            return;
        }
        this.Zq.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    public boolean HiB() {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.sP
    public void setSoundMute(boolean z10) {
        int iEjP;
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            iEjP = z10 ? com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_reward_full_mute") : com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_reward_full_unmute");
        } else {
            iEjP = z10 ? com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_mute") : com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_unmute");
        }
        ((ImageView) this.Zq).setImageResource(iEjP);
        if (((ImageView) this.Zq).getDrawable() != null) {
            ((ImageView) this.Zq).getDrawable().setAutoMirrored(true);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.CENTER);
        }
        setSoundMute(this.sef.mIsMute);
        if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
            ((ImageView) this.Zq).setBackgroundDrawable(com.bytedance.sdk.component.adexpress.EjP.Dq.Sj(0, Integer.valueOf(this.f20889aa.LqL()), new int[]{this.Dq / 2}, null, null, null));
            return true;
        }
        Drawable drawableSj = com.bytedance.sdk.component.adexpress.EjP.TKC.Sj(getContext(), this.f20889aa);
        if (drawableSj == null) {
            return true;
        }
        ((ImageView) this.Zq).setBackground(drawableSj);
        return true;
    }
}
