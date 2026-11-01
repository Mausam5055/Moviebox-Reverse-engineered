package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class sef extends com.bytedance.sdk.openadsdk.core.HiB.Jcg {
    public sef(Context context) {
        this(context, null);
    }

    public sef(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public sef(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Sj(context);
    }

    private void Sj(Context context) {
        setBackgroundColor(Color.parseColor("#000000"));
        setId(520093726);
        int iSP = FPG.sP(context, 60.0f);
        com.bytedance.sdk.openadsdk.core.HiB.TKC tkc = new com.bytedance.sdk.openadsdk.core.HiB.TKC(context);
        tkc.setId(com.bytedance.sdk.openadsdk.utils.Zq.GMp);
        tkc.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        tkc.setBackgroundColor(0);
        addView(tkc);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP.setId(com.bytedance.sdk.openadsdk.utils.Zq.hzV);
        ejP.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        ejP.setScaleType(ImageView.ScaleType.CENTER_CROP);
        tkc.addView(ejP);
        com.bytedance.sdk.openadsdk.core.HiB.vS vSVar = new com.bytedance.sdk.openadsdk.core.HiB.vS(context);
        vSVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.TX);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iSP, iSP);
        layoutParams.gravity = 17;
        vSVar.setLayoutParams(layoutParams);
        vSVar.setIndeterminateDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_video_loading_progress_bar"));
        tkc.addView(vSVar);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        ejP2.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21137vb);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        ejP2.setLayoutParams(layoutParams2);
        ejP2.setScaleType(ImageView.ScaleType.CENTER);
        ejP2.setImageDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_play_movebar_textpage"));
        ejP2.setVisibility(8);
        addView(ejP2);
        View aaVar = new aa(context);
        aaVar.setId(com.bytedance.sdk.openadsdk.utils.Zq.f21135mj);
        aaVar.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(aaVar);
    }
}
