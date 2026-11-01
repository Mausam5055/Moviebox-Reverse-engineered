package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ extends RelativeLayout {
    public TEQ(Context context) {
        super(context);
        Sj();
    }

    private void Sj() {
        Context context = getContext();
        int iSP = FPG.sP(context, 12.0f);
        setLayoutParams(new ViewGroup.LayoutParams(-1, FPG.sP(context, 44.0f)));
        setBackgroundColor(-1);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setId(520093720);
        ejP.setClickable(true);
        ejP.setFocusable(true);
        ejP.setImageDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_leftbackicon_selector"));
        int iSP2 = FPG.sP(context, 24.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iSP2, iSP2);
        layoutParams.leftMargin = iSP;
        layoutParams.addRule(15);
        addView(ejP, layoutParams);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP2.setId(520093716);
        ejP2.setClickable(true);
        ejP2.setFocusable(true);
        ejP2.setImageDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_titlebar_close_seletor"));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iSP2, iSP2);
        layoutParams2.leftMargin = iSP;
        layoutParams2.addRule(15);
        layoutParams2.addRule(1, 520093720);
        addView(ejP2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP3 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.HcZ;
        ejP3.setId(i11);
        ejP3.setImageDrawable(ib.TKC(context, "tt_ad_feedback_new"));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iSP2, iSP2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        layoutParams3.rightMargin = iSP;
        addView(ejP3, layoutParams3);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setId(com.bytedance.sdk.openadsdk.utils.Zq.nru);
        dq2.setSingleLine(true);
        dq2.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        dq2.setGravity(17);
        dq2.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        dq2.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(FPG.sP(context, 240.0f), -2);
        layoutParams4.addRule(15);
        layoutParams4.addRule(1, 520093716);
        layoutParams4.addRule(0, i11);
        int iSP3 = FPG.sP(context, 25.0f);
        layoutParams4.rightMargin = iSP3;
        layoutParams4.leftMargin = iSP3;
        addView(dq2, layoutParams4);
    }
}
