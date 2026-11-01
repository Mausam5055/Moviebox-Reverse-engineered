package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class aa implements Jcg {
    private com.bytedance.sdk.component.adexpress.vS.sef Sj;

    public aa(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        this.Sj = new com.bytedance.sdk.component.adexpress.vS.sef(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 180.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(context, 180.0f));
        layoutParams.gravity = 17;
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setGuideText(jcg.sdp());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public ViewGroup TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        this.Sj.sP();
    }
}
