package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class sU extends Jcg implements com.bytedance.sdk.component.adexpress.dynamic.TKC {
    public sU(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        dynamicRootView.setTimeOutListener(this);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC
    public void Sj(CharSequence charSequence, boolean z10, int i11, boolean z11) {
        if (i11 != 0) {
            ((TextView) this.Zq).setText(" | " + String.format(com.bytedance.sdk.component.utils.ib.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), "tt_reward_full_skip_count_down"), Integer.valueOf(i11)));
        } else if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        requestLayout();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Jcg, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS
    protected FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (TextUtils.isEmpty(((TextView) this.Zq).getText())) {
            setMeasuredDimension(0, this.Dq);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    public void vS() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.Jcg, this.Dq);
        int i11 = this.uA;
        layoutParams.leftMargin = i11;
        layoutParams.gravity = 16;
        layoutParams.setMarginStart(i11);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }
}
