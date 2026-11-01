package com.bytedance.sdk.openadsdk.component.Dq;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends com.bytedance.sdk.openadsdk.core.aa.EjP.Sj {
    public sP(Context context, ViewGroup viewGroup, sU sUVar) {
        super(context, viewGroup, sUVar, null);
    }

    public void Sj(Zq.Sj sj2) {
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, sj2, (Jcg) null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.Sj
    public void TzV() {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq());
        sj2.sP(vS());
        sj2.EjP(Jcg());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.HiB(this.Jcg, sj2);
    }
}
