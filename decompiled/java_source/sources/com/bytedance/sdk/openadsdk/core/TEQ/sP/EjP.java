package com.bytedance.sdk.openadsdk.core.TEQ.sP;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;

/* JADX INFO: loaded from: classes3.dex */
public class EjP extends com.bytedance.adsdk.ugeno.sP.TKC<FrameLayout> {
    public EjP(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public FrameLayout Sj() {
        FrameLayout frameLayout = new FrameLayout(this.sP);
        com.bytedance.sdk.openadsdk.core.model.sP sPVar = new com.bytedance.sdk.openadsdk.core.model.sP();
        sPVar.Sj(true);
        PAGLogoView pAGLogoView = new PAGLogoView(this.sP);
        pAGLogoView.initData(sPVar);
        frameLayout.addView(pAGLogoView);
        return frameLayout;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
    }
}
