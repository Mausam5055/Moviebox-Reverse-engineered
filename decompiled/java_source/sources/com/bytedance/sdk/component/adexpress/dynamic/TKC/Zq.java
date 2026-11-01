package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Zq implements Jcg<com.bytedance.sdk.component.adexpress.vS.RiZ> {
    private int Dq;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg EjP;
    private String HiB;
    private int Jcg;
    private com.bytedance.sdk.component.adexpress.vS.RiZ Sj;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB TKC;
    private Context sP;
    private JSONObject uA;
    private int vS;

    public Zq(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg, String str, int i11, int i12, int i13, JSONObject jSONObject) {
        this.sP = context;
        this.TKC = hiB;
        this.EjP = jcg;
        this.HiB = str;
        this.vS = i11;
        this.Jcg = i12;
        this.Dq = i13;
        this.uA = jSONObject;
        HiB();
    }

    private void HiB() {
        final com.bytedance.sdk.component.adexpress.dynamic.vS.Sj dynamicClickListener = this.TKC.getDynamicClickListener();
        try {
            new JSONObject().put("convertActionType", 1);
        } catch (Throwable unused) {
        }
        if ("16".equals(this.HiB)) {
            Context context = this.sP;
            com.bytedance.sdk.component.adexpress.vS.RiZ riZ = new com.bytedance.sdk.component.adexpress.vS.RiZ(context, com.bytedance.sdk.component.adexpress.TKC.Sj.Dq(context), this.vS, this.Jcg, this.Dq, this.uA);
            this.Sj = riZ;
            if (riZ.getShakeLayout() != null) {
                this.Sj.getShakeLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
        } else {
            Context context2 = this.sP;
            this.Sj = new com.bytedance.sdk.component.adexpress.vS.RiZ(context2, com.bytedance.sdk.component.adexpress.TKC.Sj.Jcg(context2), this.vS, this.Jcg, this.Dq, this.uA);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.Sj.setGravity(17);
        layoutParams.gravity = 17;
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setTranslationY(com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.sP, this.EjP.kb()));
        this.Sj.setShakeText(this.EjP.sdp());
        this.Sj.setClipChildren(false);
        this.Sj.setOnShakeViewListener(new com.bytedance.sdk.component.adexpress.vS.RiZ.Sj() { // from class: com.bytedance.sdk.component.adexpress.dynamic.TKC.Zq.1
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public com.bytedance.sdk.component.adexpress.vS.RiZ TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        this.Sj.clearAnimation();
    }
}
