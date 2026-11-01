package com.bytedance.sdk.openadsdk.common;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends RelativeLayout {
    public uA(Context context) {
        super(context);
        Sj();
    }

    private void Sj() {
        setId(com.bytedance.sdk.openadsdk.utils.Zq.cX);
        setBackgroundColor(-1);
        Context context = getContext();
        setLayoutParams(new ViewGroup.LayoutParams(-1, FPG.sP(context, 44.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.f21134kb;
        ejP.setId(i11);
        ejP.setClickable(true);
        ejP.setFocusable(true);
        ejP.setPadding(FPG.sP(context, 12.0f), FPG.sP(context, 14.0f), FPG.sP(context, 12.0f), FPG.sP(context, 14.0f));
        ejP.setImageResource(ib.EjP(context, "tt_ad_xmark"));
        addView(ejP, new RelativeLayout.LayoutParams(FPG.sP(context, 40.0f), FPG.sP(context, 44.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        int i12 = com.bytedance.sdk.openadsdk.utils.Zq.f21138xu;
        ejP2.setId(i12);
        ejP2.setPadding(FPG.sP(context, 8.0f), FPG.sP(context, 10.0f), FPG.sP(context, 8.0f), FPG.sP(context, 10.0f));
        ejP2.setImageResource(ib.EjP(context, "tt_ad_feedback"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(FPG.sP(context, 40.0f), FPG.sP(context, 44.0f));
        layoutParams.addRule(11);
        addView(ejP2, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setId(com.bytedance.sdk.openadsdk.utils.Zq.Uc);
        dq2.setSingleLine(true);
        dq2.setEllipsize(TextUtils.TruncateAt.END);
        dq2.setGravity(17);
        dq2.setTextColor(Color.parseColor("#222222"));
        dq2.setTextSize(2, 17.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(FPG.sP(context, 191.0f), FPG.sP(context, 24.0f));
        layoutParams2.addRule(15);
        layoutParams2.addRule(0, i12);
        layoutParams2.addRule(1, i11);
        int iSP = FPG.sP(context, 10.0f);
        layoutParams2.leftMargin = iSP;
        layoutParams2.rightMargin = iSP;
        addView(dq2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.vS vSVar = new com.bytedance.sdk.openadsdk.core.HiB.vS(context, null, R.style.Widget.ProgressBar.Horizontal);
        vSVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.gR);
        vSVar.setProgress(1);
        vSVar.setProgressDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_privacy_progress_style"));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, FPG.sP(context, 2.0f));
        layoutParams3.addRule(12);
        addView(vSVar, layoutParams3);
        View view = new View(context);
        view.setBackgroundColor(Color.parseColor("#1F161823"));
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, FPG.sP(context, 0.5f));
        layoutParams4.addRule(12);
        addView(view, layoutParams4);
    }
}
