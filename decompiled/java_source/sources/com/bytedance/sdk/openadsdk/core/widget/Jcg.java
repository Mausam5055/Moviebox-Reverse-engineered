package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.wE;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg extends com.bytedance.sdk.openadsdk.core.HiB.Jcg {
    private com.bytedance.sdk.openadsdk.core.HiB.Dq EjP;
    private boolean HiB;
    private uvD Sj;
    private Dq TKC;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq sP;
    private boolean vS;

    public Jcg(Context context) {
        super(context);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (Sj()) {
            sP();
        }
    }

    public void Sj(sU sUVar, int i11) {
        if (!this.HiB || sUVar == null || this.vS) {
            return;
        }
        this.vS = true;
        boolean zIOh = sUVar.IOh();
        if (zIOh || sUVar.EZ() == null || TextUtils.isEmpty(sUVar.EZ().Sj())) {
            this.Sj.setVisibility(8);
        } else {
            try {
                com.bytedance.sdk.openadsdk.uA.EjP.Sj(sUVar.EZ()).TKC(2).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, sUVar.EZ().Sj(), new wE(this.Sj)));
            } catch (Throwable unused) {
                this.Sj.setVisibility(8);
            }
        }
        if (zIOh) {
            this.sP.setText("Loading");
        } else if (TextUtils.isEmpty(sUVar.xu())) {
            this.sP.setVisibility(8);
        } else {
            this.sP.setText(sUVar.xu());
        }
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = this.EjP;
        if (dq2 != null) {
            dq2.setText(sUVar.Ir());
        }
    }

    protected boolean Sj() {
        return true;
    }

    @Nullable
    public com.bytedance.sdk.openadsdk.core.HiB.Dq getDownloadButton() {
        return this.EjP;
    }

    @Nullable
    public Dq getLoadingProgressBar() {
        return this.TKC;
    }

    public void sP() {
        if (this.HiB) {
            return;
        }
        this.HiB = true;
        Context context = getContext();
        setBackgroundColor(Color.parseColor("#2E2E2E"));
        LinearLayout linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        uvD uvd = new uvD(context);
        this.Sj = uvd;
        uvd.setId(520093745);
        int iSP = FPG.sP(context, 64.0f);
        this.Sj.setLayoutParams(new RelativeLayout.LayoutParams(iSP, iSP));
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        this.sP = dq2;
        dq2.setId(520093746);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(FPG.sP(context, 219.0f), -2);
        layoutParams2.topMargin = FPG.sP(context, 16.0f);
        this.sP.setLayoutParams(layoutParams2);
        this.sP.setEllipsize(TextUtils.TruncateAt.END);
        this.sP.setGravity(17);
        this.sP.setMaxWidth(FPG.sP(context, 150.0f));
        this.sP.setMaxLines(2);
        this.sP.setTextColor(-1);
        this.sP.setTextSize(1, 16.0f);
        Dq dq3 = new Dq(context);
        this.TKC = dq3;
        dq3.setId(520093748);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(FPG.sP(context, 219.0f), FPG.sP(context, 6.0f));
        layoutParams3.topMargin = FPG.sP(context, 24.0f);
        this.TKC.setLayoutParams(layoutParams3);
        this.EjP = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(FPG.sP(context, 138.0f), FPG.sP(context, 42.0f));
        layoutParams4.topMargin = FPG.sP(context, 48.0f);
        this.EjP.setLayoutParams(layoutParams4);
        this.EjP.setTextColor(-1);
        this.EjP.setTextSize(16.0f);
        this.EjP.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setStroke(2, -1);
        gradientDrawable.setCornerRadius(layoutParams4.height / 2);
        this.EjP.setBackground(gradientDrawable);
        linearLayout.addView(this.Sj);
        linearLayout.addView(this.sP);
        linearLayout.addView(this.TKC);
        linearLayout.addView(this.EjP);
        addView(linearLayout);
    }

    public void setProgress(int i11) {
        Dq dq2 = this.TKC;
        if (dq2 != null) {
            dq2.setProgress(i11);
        }
    }
}
