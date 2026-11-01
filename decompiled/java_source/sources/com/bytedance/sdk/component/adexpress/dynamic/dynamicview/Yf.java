package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class Yf extends vS implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    private boolean Sj;

    public Yf(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.Jcg = this.Dq;
        ImageView imageView = new ImageView(context);
        this.Zq = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        addView(this.Zq, getWidgetLayoutParams());
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() != null) {
            if (!dynamicRootView.getRenderRequest().uP()) {
                this.Zq.setVisibility(8);
                setVisibility(8);
            }
            this.Sj = dynamicRootView.getRenderRequest().Fmk();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC
    public void Sj(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        int i12 = 0;
        if (!z10 && !z11) {
            i12 = 8;
        }
        setVisibility(i12);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        super.uA();
        View view = this.Zq;
        if (view != null) {
            ((ImageView) view).setScaleType(ImageView.ScaleType.CENTER_CROP);
            Drawable drawableSj = com.bytedance.sdk.component.adexpress.EjP.TKC.Sj(getContext(), this.f20889aa);
            if (drawableSj != null) {
                ((ImageView) this.Zq).setBackground(drawableSj);
            }
            Drawable drawableTKC = this.Sj ? com.bytedance.sdk.component.utils.ib.TKC(getContext(), "tt_close_btn") : com.bytedance.sdk.component.utils.ib.TKC(getContext(), "tt_skip_btn");
            if (drawableTKC != null) {
                drawableTKC.setAutoMirrored(true);
                ((ImageView) this.Zq).setImageDrawable(drawableTKC);
            }
            int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Ym, this.f20889aa.sP());
            this.Zq.setPadding(iSj, iSj, iSj, iSj);
        }
        setVisibility(8);
        return true;
    }
}
