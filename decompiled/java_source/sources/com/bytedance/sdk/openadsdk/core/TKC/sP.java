package com.bytedance.sdk.openadsdk.core.TKC;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.Dq.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends TKC {
    public sP(@NonNull Context context, sU sUVar, AdSlot adSlot) {
        super(context, sUVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.TKC.TKC
    protected void Sj() {
        TzV tzV = new TzV(this.Sj, this.TKC, this.EjP, this.vS);
        this.sP = tzV;
        addView(tzV, new ViewGroup.LayoutParams(-1, -1));
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.HiB;
        if (pAGBannerAdWrapperListener != null) {
            setExpressInteractionListener(pAGBannerAdWrapperListener);
        }
    }

    public com.bytedance.sdk.openadsdk.multipro.sP.Sj getVideoModel() {
        RiZ riZ = this.sP;
        if (riZ != null) {
            return ((TzV) riZ).getVideoModel();
        }
        return null;
    }
}
