package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes3.dex */
public class uA extends FrameLayout {
    private sU Dq;
    private Zq EjP;
    private TextView HiB;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq Jcg;
    private boolean Sj;
    private com.bytedance.sdk.openadsdk.core.sP.Sj TEQ;
    private TextView TKC;
    private uvD sP;
    private String uA;
    private PAGLogoView vS;

    public uA(@NonNull Context context) {
        super(context);
        setVisibility(8);
        setId(com.bytedance.sdk.openadsdk.utils.Zq.eMB);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Sj() {
        if (this.Sj) {
            return;
        }
        this.Sj = true;
        sP();
        this.HiB.setOnClickListener(this.TEQ);
        this.HiB.setOnTouchListener(this.TEQ);
        String strIr = this.Dq.Ir();
        if (!TextUtils.isEmpty(strIr)) {
            this.HiB.setText(strIr);
        }
        if (this.sP != null && this.Dq.EZ() != null && !TextUtils.isEmpty(this.Dq.EZ().Sj())) {
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj(this.Dq.EZ(), this.sP, this.Dq);
        }
        Zq zq2 = this.EjP;
        if (zq2 != null) {
            FPG.Sj((TextView) null, zq2, this.Dq);
            if (this.Dq.tz() != null) {
                this.EjP.setVisibility(0);
            }
        }
        if (this.TKC != null) {
            if (this.Dq.tz() != null && !TextUtils.isEmpty(this.Dq.tz().sP())) {
                this.TKC.setText(this.Dq.tz().sP());
            } else if (TextUtils.isEmpty(this.Dq.dwU())) {
                this.TKC.setVisibility(8);
            } else {
                this.TKC.setText(this.Dq.dwU());
            }
        }
        if (this.Jcg != null) {
            String strXu = this.Dq.xu();
            if (TextUtils.isEmpty(strXu)) {
                this.Jcg.setVisibility(8);
            } else {
                this.Jcg.setText(strXu);
            }
        }
        this.vS.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.uA.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.Sj(uA.this.getContext(), uA.this.Dq, uA.this.uA);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void sP() {
        Context context = getContext();
        boolean z10 = this.Dq.liH() == 1;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setGravity(1);
        hiB.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = z10 ? new FrameLayout.LayoutParams(-1, -2) : new FrameLayout.LayoutParams(FPG.sP(context, 327.0f), -2);
        layoutParams.gravity = 17;
        int iSP = FPG.sP(context, 24.0f);
        layoutParams.rightMargin = iSP;
        layoutParams.leftMargin = iSP;
        addView(hiB, layoutParams);
        uvD uvd = new uvD(context);
        this.sP = uvd;
        uvd.setBackgroundColor(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(FPG.sP(context, 80.0f), FPG.sP(context, 80.0f));
        layoutParams2.bottomMargin = FPG.sP(context, 12.0f);
        hiB.addView(this.sP, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.TKC = dq2;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        dq2.setEllipsize(truncateAt);
        this.TKC.setGravity(17);
        this.TKC.setMaxLines(2);
        this.TKC.setMaxWidth(FPG.sP(context, 180.0f));
        this.TKC.setTextColor(-1);
        this.TKC.setTextSize(2, 24.0f);
        hiB.addView(this.TKC, new LinearLayout.LayoutParams(-1, -2));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.Jcg = dq3;
        dq3.setEllipsize(truncateAt);
        this.Jcg.setGravity(17);
        this.Jcg.setMaxLines(2);
        this.Jcg.setTextColor(Color.parseColor("#BFFFFFFF"));
        this.Jcg.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = FPG.sP(context, 8.0f);
        hiB.addView(this.Jcg, layoutParams3);
        this.EjP = new Zq(context, true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, FPG.sP(context, 16.0f));
        layoutParams4.topMargin = FPG.sP(context, 12.0f);
        this.EjP.setVisibility(8);
        hiB.addView(this.EjP, layoutParams4);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.HiB = dq4;
        dq4.setId(520093707);
        this.HiB.setGravity(17);
        this.HiB.setText(ib.Sj(context, "tt_video_download_apk"));
        this.HiB.setTextColor(-1);
        this.HiB.setTextSize(2, 16.0f);
        this.HiB.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_reward_full_video_backup_btn_bg"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, FPG.sP(context, 44.0f));
        layoutParams5.topMargin = FPG.sP(context, 54.0f);
        hiB.addView(this.HiB, layoutParams5);
        this.vS = PAGLogoView.createPAGLogoViewByMaterial(context, this.Dq);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, FPG.sP(context, 14.0f));
        layoutParams6.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
        layoutParams6.leftMargin = FPG.sP(context, 18.0f);
        if (z10) {
            layoutParams6.bottomMargin = FPG.sP(context, 61.0f);
        } else {
            layoutParams6.bottomMargin = FPG.sP(context, 24.0f);
        }
        addView(this.vS, layoutParams6);
    }

    public void Sj(sU sUVar, String str, com.bytedance.sdk.openadsdk.core.sP.Sj sj2) {
        this.Dq = sUVar;
        this.uA = str;
        this.TEQ = sj2;
    }

    public void setClickListener(com.bytedance.sdk.openadsdk.core.sP.Sj sj2) {
        this.TEQ = sj2;
        TextView textView = this.HiB;
        if (textView != null) {
            textView.setOnClickListener(sj2);
            this.HiB.setOnTouchListener(this.TEQ);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        if (i11 == 0) {
            Sj();
        }
    }
}
