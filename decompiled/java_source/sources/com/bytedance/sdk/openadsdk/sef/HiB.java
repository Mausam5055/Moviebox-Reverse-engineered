package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class HiB extends TEQ {
    private com.bytedance.sdk.openadsdk.core.HiB.Dq Dq;
    private com.bytedance.sdk.openadsdk.core.HiB.EjP Jcg;

    public HiB(Context context) {
        this(context, null);
    }

    public HiB(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HiB(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.sef.TEQ
    protected void Sj(Context context) {
        int iSP = FPG.sP(context, 6.0f);
        setPadding(iSP, iSP, iSP, iSP);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkcHiB = HiB(context);
        this.Sj = tkcHiB;
        tkcHiB.setId(com.bytedance.sdk.openadsdk.utils.Zq.zwV);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        int iSP2 = FPG.sP(context, 26.0f);
        layoutParams.topMargin = iSP2;
        this.Sj.setLayoutParams(layoutParams);
        addView(this.Sj);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        this.Jcg = ejP;
        ejP.setId(com.bytedance.sdk.openadsdk.utils.Zq.Xqg);
        this.Jcg.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.topMargin = iSP2;
        this.Jcg.setLayoutParams(layoutParams2);
        addView(this.Jcg);
        PAGLogoView pAGLogoViewDq = Dq(context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 80;
        int iSP3 = FPG.sP(context, 10.0f);
        layoutParams3.leftMargin = iSP3;
        layoutParams3.topMargin = iSP3;
        layoutParams3.bottomMargin = iSP3;
        pAGLogoViewDq.setLayoutParams(layoutParams3);
        addView(pAGLogoViewDq);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        hiB.setOrientation(0);
        hiB.setGravity(17);
        addView(hiB);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.Dq = dq2;
        dq2.setId(com.bytedance.sdk.openadsdk.utils.Zq.oWa);
        this.Dq.setEllipsize(TextUtils.TruncateAt.END);
        this.Dq.setMaxLines(1);
        this.Dq.setTextColor(-1);
        this.Dq.setTextSize(2, 12.0f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        this.Dq.setLayoutParams(layoutParams4);
        hiB.addView(this.Dq);
    }

    public com.bytedance.sdk.openadsdk.core.HiB.Dq getTtBuDescTV() {
        return this.Dq;
    }

    public com.bytedance.sdk.openadsdk.core.HiB.EjP getTtBuImg() {
        return this.Jcg;
    }
}
