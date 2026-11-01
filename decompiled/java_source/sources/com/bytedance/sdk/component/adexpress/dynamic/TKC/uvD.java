package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.vS.dx;

/* JADX INFO: loaded from: classes2.dex */
public class uvD implements Jcg {
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg EjP;
    private dx Sj;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB TKC;
    private Context sP;

    public uvD(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        this.sP = context;
        this.TKC = hiB;
        this.EjP = jcg;
        EjP();
    }

    private void EjP() {
        this.Sj = new dx(this.sP);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.sP, 120.0f));
        layoutParams.gravity = 17;
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setClipChildren(false);
        this.Sj.setGuideText(this.EjP.sdp());
        com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB = this.TKC;
        if (hiB != null) {
            this.Sj.setOnClickListener((View.OnClickListener) hiB.getDynamicClickListener());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        dx dxVar = this.Sj;
        if (dxVar != null) {
            dxVar.Sj();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public ViewGroup TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        dx dxVar = this.Sj;
        if (dxVar != null) {
            dxVar.sP();
        }
    }
}
