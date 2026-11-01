package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class Zq extends com.bytedance.sdk.openadsdk.core.HiB.Jcg {
    public Zq(Context context) {
        this(context, null);
    }

    public Zq(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Zq(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Sj(context);
    }

    private void Sj(Context context) {
        setId(com.bytedance.sdk.openadsdk.utils.Zq.eEJ);
        setBackgroundColor(Color.parseColor("#00000000"));
        setGravity(16);
        setVisibility(8);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.DhB;
        dq2.setId(i11);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        dq2.setLayoutParams(layoutParams);
        dq2.setIncludeFontPadding(false);
        dq2.setText(ib.Sj(context, "tt_video_without_wifi_tips"));
        dq2.setTextColor(Color.parseColor("#cacaca"));
        dq2.setTextSize(2, 14.0f);
        addView(dq2);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        jcg.setId(com.bytedance.sdk.openadsdk.utils.Zq.DKa);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, i11);
        layoutParams2.addRule(13);
        jcg.setLayoutParams(layoutParams2);
        addView(jcg);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setId(com.bytedance.sdk.openadsdk.utils.Zq.DKj);
        int iSP = FPG.sP(context, 44.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iSP, iSP);
        layoutParams3.addRule(15);
        ejP.setLayoutParams(layoutParams3);
        ejP.setImageDrawable(ib.TKC(context, "tt_new_play_video"));
        ejP.setScaleType(ImageView.ScaleType.FIT_XY);
        jcg.addView(ejP);
    }
}
