package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class aa extends com.bytedance.sdk.openadsdk.core.HiB.Jcg {
    public aa(Context context) {
        this(context, null);
    }

    public aa(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public aa(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Sj(context);
    }

    private void Sj(Context context) {
        setId(com.bytedance.sdk.openadsdk.utils.Zq.f21135mj);
        setVisibility(8);
        setBackgroundColor(Color.parseColor("#7f000000"));
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(getContext());
        ejP.setId(com.bytedance.sdk.openadsdk.utils.Zq.Ph);
        ejP.setScaleType(ImageView.ScaleType.CENTER_CROP);
        ejP.setImageTintMode(PorterDuff.Mode.SRC_OVER);
        ejP.setImageTintList(ColorStateList.valueOf(Color.parseColor("#7f000000")));
        ejP.setBackgroundColor(Color.parseColor("#7f000000"));
        ejP.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(ejP);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        jcg.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21131gq);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        jcg.setLayoutParams(layoutParams);
        addView(jcg);
        int iSP = FPG.sP(context, 44.0f);
        com.bytedance.sdk.openadsdk.core.widget.Sj sj2 = new com.bytedance.sdk.openadsdk.core.widget.Sj(context);
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.f21133jb;
        sj2.setId(i11);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iSP, iSP);
        layoutParams2.addRule(14);
        sj2.setLayoutParams(layoutParams2);
        sj2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        jcg.addView(sj2);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq2.setId(com.bytedance.sdk.openadsdk.utils.Zq.Ei);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iSP, iSP);
        layoutParams3.addRule(8, i11);
        layoutParams3.addRule(19, i11);
        layoutParams3.addRule(5, i11);
        layoutParams3.addRule(7, i11);
        layoutParams3.addRule(18, i11);
        layoutParams3.addRule(6, i11);
        layoutParams3.addRule(14);
        dq2.setLayoutParams(layoutParams3);
        dq2.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_circle_solid_mian"));
        dq2.setGravity(17);
        dq2.setTextColor(-1);
        dq2.setTextSize(2, 19.0f);
        dq2.setTypeface(Typeface.defaultFromStyle(1));
        dq2.setVisibility(8);
        jcg.addView(dq2);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        int i12 = com.bytedance.sdk.openadsdk.utils.Zq.HpB;
        dq3.setId(i12);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(3, i11);
        layoutParams4.addRule(14);
        layoutParams4.topMargin = FPG.sP(context, 6.0f);
        dq3.setLayoutParams(layoutParams4);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq3.setEllipsize(truncateAt);
        dq3.setMaxLines(1);
        dq3.setTextColor(-1);
        dq3.setTextSize(2, 12.0f);
        jcg.addView(dq3);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        dq4.setId(com.bytedance.sdk.openadsdk.utils.Zq.xhi);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(FPG.sP(context, 100.0f), FPG.sP(context, 28.0f));
        layoutParams5.addRule(14);
        layoutParams5.addRule(3, i12);
        layoutParams5.topMargin = FPG.sP(context, 20.0f);
        dq4.setLayoutParams(layoutParams5);
        dq4.setMinWidth(FPG.sP(context, 72.0f));
        dq4.setMaxLines(1);
        dq4.setEllipsize(truncateAt);
        dq4.setTextColor(-1);
        dq4.setTextSize(2, 14.0f);
        dq4.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_ad_cover_btn_begin_bg"));
        dq4.setGravity(17);
        int iSP2 = FPG.sP(context, 10.0f);
        int iSP3 = FPG.sP(context, 2.0f);
        dq4.setPadding(iSP2, iSP3, iSP2, iSP3);
        dq4.setVisibility(8);
        jcg.addView(dq4);
    }
}
