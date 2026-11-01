package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class sef {
    private final Sj EjP;
    private boolean HiB = false;
    com.bytedance.sdk.openadsdk.component.reward.top.TKC Sj;
    private final Activity TKC;
    com.bytedance.sdk.component.adexpress.dynamic.EjP sP;
    private boolean vS;

    public sef(Sj sj2) {
        this.TKC = sj2.Fm;
        this.EjP = sj2;
    }

    public void EjP() {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = this.Sj;
        if (tkc != null) {
            tkc.clickSkip();
        }
    }

    public void EjP(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.setShowSkip(z10);
    }

    public void HiB() {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.setSkipInvisiable();
    }

    public void HiB(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.setSkipEnable(z10);
    }

    public void Sj() {
        if (this.HiB) {
            return;
        }
        this.HiB = true;
        Sj sj2 = this.EjP;
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = sj2.aZ;
        if (tkc != null) {
            this.Sj = tkc;
            this.vS = true;
        } else {
            this.Sj = (com.bytedance.sdk.openadsdk.component.reward.top.TKC) sj2.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.MGU);
        }
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc2 = this.Sj;
        if (tkc2 != null) {
            tkc2.Sj(this.EjP.sP);
            if (this.EjP.sP.Ph()) {
                Sj(false);
            } else {
                Sj(this.EjP.sP.RrR());
            }
        }
    }

    public void Sj(int i11) {
        View viewFindViewById;
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = this.Sj;
        if (tkc == null || tkc.getITopLayout() == null || i11 == 0 || (viewFindViewById = this.Sj.getITopLayout().findViewById(520093713)) == null || !(viewFindViewById.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || viewFindViewById.getWidth() <= 0 || viewFindViewById.getVisibility() != 0) {
            return;
        }
        int[] iArr = new int[2];
        viewFindViewById.getLocationOnScreen(iArr);
        int width = i11 - (iArr[0] + viewFindViewById.getWidth());
        if (width < FPG.sP(this.TKC, 16.0f)) {
            ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).rightMargin += FPG.sP(this.TKC, 16.0f) - width;
            viewFindViewById.requestLayout();
        }
    }

    public void Sj(com.bytedance.sdk.component.adexpress.dynamic.EjP ejP) {
        this.sP = ejP;
    }

    public void Sj(com.bytedance.sdk.openadsdk.component.reward.top.sP sPVar) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = this.Sj;
        if (tkc != null) {
            tkc.setListener(sPVar);
        }
    }

    public void Sj(CharSequence charSequence) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.setSkipText(charSequence);
    }

    public void Sj(String str) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = this.Sj;
        if (tkc != null) {
            tkc.clickSound(str);
        }
    }

    public void Sj(String str, CharSequence charSequence) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.setTime(String.valueOf(str), charSequence);
    }

    public void Sj(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.setShowDislike(z10);
    }

    public void TKC() {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.showSkipButton();
    }

    public void TKC(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.setShowSound(z10);
    }

    public void sP() {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc;
        if (this.vS || (tkc = this.Sj) == null) {
            return;
        }
        tkc.showCountDownText();
    }

    public void sP(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.TKC tkc = this.Sj;
        if (tkc != null) {
            tkc.setSoundMute(z10);
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP ejP = this.sP;
        if (ejP != null) {
            ejP.setSoundMute(z10);
        }
    }
}
