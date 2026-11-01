package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements Jcg {
    private com.bytedance.sdk.component.adexpress.vS.TKC Sj;

    public sP(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        this.Sj = new com.bytedance.sdk.component.adexpress.vS.TKC(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 180.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 180.0f));
        layoutParams.gravity = 17;
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setGuideText(jcg.sdp());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.component.adexpress.vS.TKC TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        this.Sj.sP();
    }
}
