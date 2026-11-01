package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class Ym {
    private com.bytedance.sdk.openadsdk.core.widget.uvD EjP;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq HiB;
    protected View Sj = HiB();
    private com.bytedance.sdk.openadsdk.core.widget.Dq TKC;
    protected Context sP;

    public Ym(Context context) {
        this.sP = context;
    }

    private View HiB() {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(this.sP);
        hiB.setGravity(1);
        hiB.setOrientation(1);
        com.bytedance.sdk.openadsdk.core.widget.uvD uvd = new com.bytedance.sdk.openadsdk.core.widget.uvD(this.sP);
        this.EjP = uvd;
        uvd.setId(520093745);
        int iSP = FPG.sP(this.sP, 64.0f);
        hiB.addView(this.EjP, new LinearLayout.LayoutParams(iSP, iSP));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(this.sP);
        this.HiB = dq2;
        dq2.setId(520093746);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(FPG.sP(this.sP, 219.0f), -2);
        layoutParams.topMargin = FPG.sP(this.sP, 16.0f);
        this.HiB.setLayoutParams(layoutParams);
        this.HiB.setEllipsize(TextUtils.TruncateAt.END);
        this.HiB.setGravity(17);
        this.HiB.setMaxWidth(FPG.sP(this.sP, 150.0f));
        this.HiB.setMaxLines(2);
        this.HiB.setTextColor(-1);
        this.HiB.setTextSize(1, 16.0f);
        hiB.addView(this.HiB);
        this.TKC = new com.bytedance.sdk.openadsdk.core.widget.Dq(this.sP);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(FPG.sP(this.sP, 219.0f), FPG.sP(this.sP, 6.0f));
        layoutParams2.topMargin = FPG.sP(this.sP, 32.0f);
        hiB.addView(this.TKC, layoutParams2);
        return hiB;
    }

    public void EjP() {
        this.Sj = null;
        this.sP = null;
    }

    public View Sj() {
        return this.Sj;
    }

    public void Sj(int i11) {
        this.TKC.setProgress(i11);
    }

    public com.bytedance.sdk.openadsdk.core.HiB.Dq TKC() {
        return this.HiB;
    }

    public com.bytedance.sdk.openadsdk.core.widget.uvD sP() {
        return this.EjP;
    }
}
