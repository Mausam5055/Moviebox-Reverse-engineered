package com.bytedance.sdk.openadsdk.component.uA;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.Zq;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.TEQ;

/* JADX INFO: loaded from: classes3.dex */
public class vS extends TKC {
    private final com.bytedance.sdk.openadsdk.core.HiB.HiB Fmk;
    private final Zq sef;

    public vS(Context context, sU sUVar) {
        super(context);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        setBackground(new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{Color.parseColor("#EDFCFF"), Color.parseColor("#FFF6FD")}));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        this.Fmk = hiB;
        hiB.setId(520093758);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = FPG.sP(context, 24.0f);
        layoutParams.topMargin = FPG.sP(context, 56.0f);
        hiB.setLayoutParams(layoutParams);
        hiB.setClickable(false);
        hiB.setGravity(16);
        hiB.setOrientation(0);
        uvD uvd = new uvD(context);
        this.vS = uvd;
        uvd.setId(520093759);
        this.vS.setLayoutParams(new LinearLayout.LayoutParams(FPG.sP(context, 24.0f), FPG.sP(context, 24.0f)));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.Jcg = dq2;
        dq2.setId(520093761);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = FPG.sP(context, 8.0f);
        this.Jcg.setLayoutParams(layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = this.Jcg;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq3.setEllipsize(truncateAt);
        this.Jcg.setMaxLines(2);
        this.Jcg.setTextColor(Color.parseColor("#161823"));
        this.Jcg.setTextSize(12.0f);
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(FPG.sP(context, 327.0f), -2);
        layoutParams3.addRule(13);
        layoutParams3.leftMargin = FPG.sP(context, 24.0f);
        layoutParams3.rightMargin = FPG.sP(context, 24.0f);
        jcg.setLayoutParams(layoutParams3);
        uvD uvd2 = new uvD(context);
        this.uA = uvd2;
        int i11 = com.bytedance.sdk.openadsdk.utils.Zq.f21128at;
        uvd2.setId(i11);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(FPG.sP(context, 80.0f), FPG.sP(context, 80.0f));
        layoutParams4.addRule(14);
        this.uA.setLayoutParams(layoutParams4);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.TEQ = dq4;
        int i12 = com.bytedance.sdk.openadsdk.utils.Zq.jU;
        dq4.setId(i12);
        this.TEQ.setTextSize(24.0f);
        this.TEQ.setTextColor(Color.parseColor("#161823"));
        this.TEQ.setGravity(17);
        this.TEQ.setMaxLines(1);
        this.TEQ.setEllipsize(truncateAt);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(3, i11);
        layoutParams5.topMargin = FPG.sP(context, 12.0f);
        layoutParams5.addRule(14);
        this.TEQ.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq5 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.Ym = dq5;
        int i13 = com.bytedance.sdk.openadsdk.utils.Zq.SPg;
        dq5.setId(i13);
        this.Ym.setTextSize(16.0f);
        this.Ym.setTextColor(Color.parseColor("#80161823"));
        this.Ym.setGravity(17);
        this.Ym.setMaxLines(2);
        this.Ym.setEllipsize(truncateAt);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams6.addRule(3, i12);
        layoutParams6.topMargin = FPG.sP(context, 4.0f);
        layoutParams6.addRule(14);
        this.Ym.setLayoutParams(layoutParams6);
        Zq zq2 = new Zq(context);
        this.sef = zq2;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(14);
        layoutParams7.topMargin = FPG.sP(context, 12.0f);
        zq2.setLayoutParams(layoutParams7);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq6 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.HiB = dq6;
        dq6.setId(520093717);
        this.HiB.setBackground(TEQ.Sj(context, "tt_reward_full_video_backup_btn_bg"));
        this.HiB.setEllipsize(truncateAt);
        this.HiB.setLines(1);
        this.HiB.setGravity(17);
        this.HiB.setTextColor(-1);
        this.HiB.setTextSize(16.0f);
        this.HiB.setTag("open_ad_click_button_tag");
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, FPG.sP(context, 44.0f));
        layoutParams8.addRule(3, i13);
        layoutParams8.topMargin = FPG.sP(context, 54.0f);
        layoutParams8.addRule(14);
        this.HiB.setLayoutParams(layoutParams8);
        PAGLogoView pAGLogoViewCreatePAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(context, sUVar);
        this.EjP = pAGLogoViewCreatePAGLogoViewByMaterial;
        pAGLogoViewCreatePAGLogoViewByMaterial.setId(520093757);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, FPG.sP(context, 14.0f));
        layoutParams9.leftMargin = FPG.sP(context, 16.0f);
        layoutParams9.bottomMargin = FPG.sP(context, 24.0f);
        layoutParams9.addRule(12);
        this.EjP.setLayoutParams(layoutParams9);
        addView(this.Dq);
        hiB.addView(this.vS);
        hiB.addView(this.Jcg);
        addView(hiB);
        jcg.addView(this.uA);
        jcg.addView(this.TEQ);
        jcg.addView(this.Ym);
        jcg.addView(zq2);
        jcg.addView(this.HiB);
        addView(jcg);
        addView(this.EjP);
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public com.bytedance.sdk.openadsdk.core.HiB.EjP getAdIconView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public com.bytedance.sdk.openadsdk.core.HiB.Dq getAdTitleTextView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public Zq getScoreBar() {
        return this.sef;
    }

    @Override // com.bytedance.sdk.openadsdk.component.uA.TKC
    public View getUserInfo() {
        return this.Fmk;
    }
}
