package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ extends vS {
    public TEQ(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            ImageView imageView = new ImageView(context);
            this.Zq = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.Jcg = this.Dq;
        } else {
            this.Zq = new TextView(context);
        }
        this.Zq.setTag(3);
        addView(this.Zq, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.Zq);
        if (dynamicRootView.getRenderRequest() != null) {
            if (dynamicRootView.getRenderRequest().Dq() && dynamicRootView.getRenderRequest().uP()) {
                return;
            }
            this.Zq.setVisibility(8);
            setVisibility(8);
        }
    }

    public String getText() {
        return com.bytedance.sdk.component.utils.ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_feedback");
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        if (com.bytedance.sdk.component.adexpress.EjP.sP()) {
            Drawable drawableSj = com.bytedance.sdk.component.adexpress.EjP.TKC.Sj(getContext(), this.f20889aa);
            if (drawableSj != null) {
                ((ImageView) this.Zq).setBackground(drawableSj);
            }
            ((ImageView) this.Zq).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int iEjP = com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_reward_full_feedback");
            if (iEjP > 0) {
                ((ImageView) this.Zq).setImageResource(iEjP);
            }
            return true;
        }
        ((TextView) this.Zq).setText(getText());
        this.Zq.setTextAlignment(this.f20889aa.Dq());
        ((TextView) this.Zq).setTextColor(this.f20889aa.Jcg());
        ((TextView) this.Zq).setTextSize(this.f20889aa.HiB());
        this.Zq.setBackground(getBackgroundDrawable());
        if (this.f20889aa.zR()) {
            int iIb = this.f20889aa.ib();
            if (iIb > 0) {
                ((TextView) this.Zq).setLines(iIb);
                ((TextView) this.Zq).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.Zq).setMaxLines(1);
            ((TextView) this.Zq).setGravity(17);
            ((TextView) this.Zq).setEllipsize(TextUtils.TruncateAt.END);
        }
        this.Zq.setPadding((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.TKC()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.sP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.EjP()), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.f20889aa.Sj()));
        ((TextView) this.Zq).setGravity(17);
        return true;
    }
}
