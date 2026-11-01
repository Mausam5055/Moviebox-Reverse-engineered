package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends vS {
    public Jcg(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.Sj sj2 = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.Sj(context);
        this.Zq = sj2;
        sj2.setTag(Integer.valueOf(getClickArea()));
        addView(this.Zq, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (!com.bytedance.sdk.component.adexpress.EjP.sP() || !"fillButton".equals(this.Fmk.TEQ().sP())) {
            return super.getWidgetLayoutParams();
        }
        ((TextView) this.Zq).setEllipsize(TextUtils.TruncateAt.END);
        ((TextView) this.Zq).setMaxLines(1);
        FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
        widgetLayoutParams.width -= this.f20889aa.TzV() * 2;
        widgetLayoutParams.height -= this.f20889aa.TzV() * 2;
        widgetLayoutParams.topMargin += this.f20889aa.TzV();
        int iTzV = widgetLayoutParams.leftMargin + this.f20889aa.TzV();
        widgetLayoutParams.leftMargin = iTzV;
        widgetLayoutParams.setMarginStart(iTzV);
        widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
        return widgetLayoutParams;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        if (TextUtils.equals("download-progress-button", this.Fmk.TEQ().sP()) && TextUtils.isEmpty(this.f20889aa.TEQ())) {
            this.Zq.setVisibility(4);
            return true;
        }
        this.Zq.setTextAlignment(this.f20889aa.Dq());
        ((TextView) this.Zq).setText(this.f20889aa.TEQ());
        ((TextView) this.Zq).setTextColor(this.f20889aa.Jcg());
        ((TextView) this.Zq).setTextSize(this.f20889aa.HiB());
        ((TextView) this.Zq).setGravity(17);
        ((TextView) this.Zq).setIncludeFontPadding(false);
        if ("fillButton".equals(this.Fmk.TEQ().sP())) {
            this.Zq.setPadding(0, 0, 0, 0);
        } else {
            this.Zq.setPadding(this.f20889aa.TKC(), this.f20889aa.sP(), this.f20889aa.EjP(), this.f20889aa.Sj());
        }
        return true;
    }
}
