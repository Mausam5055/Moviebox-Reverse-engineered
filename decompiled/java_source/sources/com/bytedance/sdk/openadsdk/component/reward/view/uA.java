package com.bytedance.sdk.openadsdk.component.reward.view;

import android.graphics.Color;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;

/* JADX INFO: loaded from: classes3.dex */
public class uA extends TEQ {
    public uA(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        super(sj2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.view.TEQ
    public void Sj(int i11, int i12) {
        super.Sj(i11, i12);
        if (sU.HiB(this.EjP) && this.EjP.Mts() == 3 && this.EjP.FPG() == 0) {
            try {
                FrameLayout frameLayout = (FrameLayout) this.TKC.xD.findViewById(Zq.TEQ);
                frameLayout.setBackgroundColor(Color.parseColor("#000000"));
                if (this.EjP.liH() == 1) {
                    int iSP = FPG.sP(dNu.Sj(), 90.0f);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                    layoutParams.bottomMargin = iSP;
                    frameLayout.setLayoutParams(layoutParams);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.view.TEQ
    protected boolean Sj() {
        return false;
    }
}
