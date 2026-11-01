package com.bytedance.sdk.openadsdk.core.TKC;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.Dq.RiZ;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    protected AdSlot EjP;
    protected PAGBannerAdWrapperListener HiB;
    protected final Context Sj;
    protected sU TKC;
    protected RiZ sP;
    protected String vS;

    public TKC(@NonNull Context context, sU sUVar, AdSlot adSlot) {
        super(context);
        this.vS = "banner_ad";
        if (sUVar != null && sUVar.ley() != 2) {
            sUVar.aa(1);
        }
        this.Sj = context;
        this.TKC = sUVar;
        this.EjP = adSlot;
        Sj();
        AdSlot adSlot2 = this.EjP;
        if (adSlot2 != null) {
            Sj(adSlot2.getExpressViewAcceptedWidth(), this.EjP.getExpressViewAcceptedHeight());
        }
    }

    protected void Sj() {
        RiZ riZ = new RiZ(this.Sj, this.TKC, this.EjP, this.vS);
        this.sP = riZ;
        addView(riZ, new ViewGroup.LayoutParams(-1, -1));
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.HiB;
        if (pAGBannerAdWrapperListener != null) {
            setExpressInteractionListener(pAGBannerAdWrapperListener);
        }
    }

    protected void Sj(float f11, float f12) {
        int iSP = FPG.sP(this.Sj, f11);
        int iSP2 = FPG.sP(this.Sj, f12);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(iSP, iSP2);
        }
        layoutParams.width = iSP;
        layoutParams.height = iSP2;
        setLayoutParams(layoutParams);
    }

    public void TKC() {
        if (this.sP != null) {
            uA.sP().vS(this.sP.getClosedListenerKey());
            removeView(this.sP);
            this.sP.Ym();
            this.sP = null;
        }
        uA.sP().ib();
    }

    public RiZ getCurView() {
        return this.sP;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.sP == null) {
            Sj();
        }
        com.bytedance.sdk.openadsdk.utils.EjP.Sj(this, this.TKC);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void sP() {
        RiZ riZ = this.sP;
        if (riZ != null) {
            riZ.uA();
        }
    }

    public void setExpressInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.HiB = pAGBannerAdWrapperListener;
        RiZ riZ = this.sP;
        if (riZ != null) {
            riZ.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.HiB() { // from class: com.bytedance.sdk.openadsdk.core.TKC.TKC.1
                @Override // com.bytedance.sdk.openadsdk.core.widget.HiB
                public void Sj() {
                    TKC.this.HiB.onAdClicked();
                }
            });
            this.sP.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.core.TKC.TKC.2
                @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
                public void onAdClicked() {
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2;
                    sU sUVar = TKC.this.TKC;
                    if (sUVar == null || !sUVar.hzV() || (pAGBannerAdWrapperListener2 = TKC.this.HiB) == null) {
                        return;
                    }
                    pAGBannerAdWrapperListener2.onAdClicked();
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdDismissed() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdShow(View view, int i11) {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderFail(View view, String str, int i11) {
                    TKC tkc = TKC.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = tkc.HiB;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderFail(tkc, str, i11);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderSuccess(View view, float f11, float f12) {
                    RiZ riZ2 = TKC.this.sP;
                    if (riZ2 != null) {
                        riZ2.setSoundMute(true);
                    }
                    RiZ riZ3 = TKC.this.sP;
                    if (riZ3 != null && !com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj(riZ3.getDynamicShowType())) {
                        TKC.this.Sj(f11, f12);
                    }
                    TKC tkc = TKC.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = tkc.HiB;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderSuccess(tkc, f11, f12);
                    }
                }
            });
        }
    }
}
