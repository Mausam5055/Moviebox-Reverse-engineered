package com.bytedance.sdk.openadsdk.Sj.sP.Sj;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends TKC {
    public sP(@NonNull Context context, sU sUVar, AdSlot adSlot) {
        super(context, sUVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC
    protected void Sj() {
        TzV tzV = new TzV(((TKC) this).Dq, this.sP, ((TKC) this).uA, this.Ym);
        this.TEQ = tzV;
        this.Sj.Sj(tzV.getVideoController());
        TKC();
    }

    public com.bytedance.sdk.openadsdk.multipro.sP.Sj sP() {
        RiZ riZ = this.TEQ;
        if (riZ != null) {
            return ((TzV) riZ).getVideoModel();
        }
        return null;
    }
}
