package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class TzV implements Jcg<com.bytedance.sdk.component.adexpress.vS.Ym> {
    private final com.bytedance.sdk.component.adexpress.vS.Ym Sj;

    public TzV(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        com.bytedance.sdk.component.adexpress.vS.Ym ym2 = new com.bytedance.sdk.component.adexpress.vS.Ym(context);
        this.Sj = ym2;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, jcg.ndK() > 0 ? jcg.ndK() : com.bytedance.sdk.component.adexpress.EjP.sP() ? 0 : 120);
        ym2.setLayoutParams(layoutParams);
        ym2.setClipChildren(false);
        ym2.setText(jcg.sdp());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.component.adexpress.vS.Ym TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        com.bytedance.sdk.component.adexpress.vS.Ym ym2 = this.Sj;
        if (ym2 != null) {
            ym2.Sj();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        com.bytedance.sdk.component.adexpress.vS.Ym ym2 = this.Sj;
        if (ym2 != null) {
            ym2.sP();
        }
    }
}
