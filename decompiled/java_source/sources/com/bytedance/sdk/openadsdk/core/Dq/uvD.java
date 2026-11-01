package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class uvD extends Sj {
    private RiZ Fmk;
    private FrameLayout Sj;
    private FrameLayout sef;

    public uvD(@NonNull Context context) {
        super(context);
        this.sP = context;
    }

    private void TKC() {
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this.sP);
        this.Sj = tkc;
        addView(tkc, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.HiB.TKC(this.sP);
        this.sef = tkc2;
        this.Sj.addView(tkc2, new FrameLayout.LayoutParams(-1, -1));
        this.sef.removeAllViews();
    }

    private void sP() {
        this.Jcg = FPG.sP(this.sP, this.Fmk.getExpectExpressWidth());
        this.Dq = FPG.sP(this.sP, this.Fmk.getExpectExpressWidth());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.Jcg, this.Dq);
        }
        layoutParams.width = this.Jcg;
        layoutParams.height = this.Dq;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        this.TKC.FPG();
        TKC();
    }

    @Override // com.bytedance.sdk.openadsdk.core.Dq.Sj
    protected void Sj(View view, int i11, com.bytedance.sdk.openadsdk.core.model.sef sefVar) {
        RiZ riZ = this.Fmk;
        if (riZ != null) {
            riZ.Sj(view, i11, sefVar);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, RiZ riZ, ViewGroup viewGroup) {
        if (sUVar == null) {
            return;
        }
        setBackgroundColor(-1);
        this.TKC = sUVar;
        this.Fmk = riZ;
        if (sUVar.DKa() == 7) {
            this.vS = "rewarded_video";
        } else {
            this.vS = "fullscreen_interstitial_ad";
        }
        sP();
        if (com.bytedance.sdk.openadsdk.core.model.TzV.TKC(sUVar)) {
            this.Fmk.addView(this, new ViewGroup.LayoutParams(-1, -1));
        } else {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            this.Fmk.addView(this, layoutParams);
        }
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.roy;
        View viewFindViewById = viewGroup.findViewById(i11);
        if (viewFindViewById != null) {
            Object tag = viewFindViewById.getTag(i11);
            if (tag instanceof String) {
                String str = (String) tag;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(str, viewFindViewById);
            }
        }
    }

    public View getBackupContainerBackgroundView() {
        return this.Sj;
    }

    public FrameLayout getVideoContainer() {
        return this.sef;
    }
}
