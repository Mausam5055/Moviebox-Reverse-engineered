package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.vS.zR;

/* JADX INFO: loaded from: classes2.dex */
public class dNu<E extends zR> implements Jcg<E> {
    protected com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg EjP;
    protected int HiB;
    protected zR Sj;
    protected com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB TKC;
    protected Context sP;

    public dNu(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg) {
        this(context, hiB, jcg, 0);
    }

    public dNu(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg, int i11) {
        this.HiB = i11;
        this.sP = context;
        this.TKC = hiB;
        this.EjP = jcg;
        EjP();
    }

    protected void EjP() {
        this.Sj = new zR(this.sP, this.EjP.Ei());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.sP, 200.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.sP, 100 - this.HiB);
        this.Sj.setLayoutParams(layoutParams);
        try {
            this.Sj.setGuideText(this.EjP.sdp());
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    /* JADX INFO: renamed from: HiB, reason: merged with bridge method [inline-methods] */
    public E TKC() {
        return (E) this.Sj;
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
