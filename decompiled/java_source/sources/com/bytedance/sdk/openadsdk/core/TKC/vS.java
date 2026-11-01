package com.bytedance.sdk.openadsdk.core.TKC;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class vS extends EjP {
    public vS(Context context, sU sUVar, AdSlot adSlot) {
        super(context, sUVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.TKC.EjP
    public void Sj(Context context, sU sUVar, AdSlot adSlot) {
        sP sPVar = new sP(context, sUVar, adSlot);
        this.Sj = sPVar;
        sPVar.addOnAttachStateChangeListener(this.vS);
    }

    public com.bytedance.sdk.openadsdk.multipro.sP.Sj TKC() {
        TKC tkc = this.Sj;
        if (tkc != null) {
            return ((sP) tkc).getVideoModel();
        }
        return null;
    }
}
