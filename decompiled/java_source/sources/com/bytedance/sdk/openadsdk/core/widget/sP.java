package com.bytedance.sdk.openadsdk.core.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends Dialog {
    private final Context Dq;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq EjP;
    private int Fmk;
    private com.bytedance.sdk.openadsdk.core.HiB.Sj HiB;
    private View Jcg;
    public Sj Sj;
    private String TEQ;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq TKC;
    private String Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f21108aa;
    private com.bytedance.sdk.openadsdk.core.HiB.EjP sP;
    private boolean sef;
    private String uA;
    private com.bytedance.sdk.openadsdk.core.HiB.Sj vS;

    /* JADX INFO: loaded from: classes2.dex */
    public interface Sj {
        void Sj();

        void sP();
    }

    public sP(Context context) {
        super(context, ib.vS(context, "tt_custom_dialog"));
        this.Fmk = -1;
        this.sef = false;
        this.Dq = context;
    }

    private int Sj(float f11) {
        return FPG.sP(getContext(), f11);
    }

    private View Sj(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Jcg jcg = new com.bytedance.sdk.openadsdk.core.HiB.Jcg(context);
        jcg.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        hiB.setMinimumWidth(Sj(260.0f));
        hiB.setPadding(0, Sj(32.0f), 0, 0);
        hiB.setBackground(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_custom_dialog_bg"));
        hiB.setOrientation(1);
        hiB.setLayoutParams(layoutParams);
        this.TKC = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        layoutParams2.leftMargin = Sj(16.0f);
        layoutParams2.rightMargin = Sj(16.0f);
        layoutParams2.bottomMargin = Sj(16.0f);
        this.TKC.setGravity(17);
        this.TKC.setVisibility(0);
        this.TKC.setTextColor(Color.parseColor("#333333"));
        this.TKC.setTextSize(18.0f);
        this.TKC.setLayoutParams(layoutParams2);
        this.sP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        layoutParams3.leftMargin = Sj(16.0f);
        layoutParams3.rightMargin = Sj(16.0f);
        layoutParams3.bottomMargin = Sj(10.0f);
        this.sP.setMaxHeight(Sj(150.0f));
        this.sP.setMaxWidth(Sj(150.0f));
        this.sP.setVisibility(0);
        this.sP.setLayoutParams(layoutParams3);
        this.EjP = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.leftMargin = Sj(20.0f);
        layoutParams4.rightMargin = Sj(20.0f);
        this.EjP.setGravity(17);
        this.EjP.setLineSpacing(Sj(3.0f), 1.2f);
        this.EjP.setTextSize(18.0f);
        this.EjP.setTextColor(Color.parseColor("#000000"));
        this.EjP.setLayoutParams(layoutParams4);
        View view = new View(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 1);
        layoutParams5.topMargin = Sj(32.0f);
        view.setBackgroundColor(Color.parseColor("#E4E4E4"));
        view.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
        hiB2.setOrientation(0);
        hiB2.setLayoutParams(layoutParams6);
        com.bytedance.sdk.openadsdk.core.HiB.Sj sj2 = new com.bytedance.sdk.openadsdk.core.HiB.Sj(context);
        this.HiB = sj2;
        sj2.setId(520093718);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, -2);
        layoutParams7.leftMargin = Sj(10.0f);
        layoutParams7.weight = 1.0f;
        this.HiB.setPadding(0, Sj(16.0f), 0, Sj(16.0f));
        this.HiB.setBackground(null);
        this.HiB.setGravity(17);
        this.HiB.setSingleLine(true);
        this.HiB.setTextColor(Color.parseColor("#999999"));
        this.HiB.setTextSize(16.0f);
        this.HiB.setLayoutParams(layoutParams7);
        this.Jcg = new View(context);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(1, -1);
        this.Jcg.setBackgroundColor(Color.parseColor("#E4E4E4"));
        this.Jcg.setLayoutParams(layoutParams8);
        this.vS = new com.bytedance.sdk.openadsdk.core.HiB.Sj(context);
        this.HiB.setId(520093719);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(0, -2);
        layoutParams9.rightMargin = Sj(10.0f);
        layoutParams9.weight = 1.0f;
        this.vS.setPadding(0, Sj(16.0f), 0, Sj(16.0f));
        this.vS.setBackground(null);
        this.vS.setGravity(17);
        this.vS.setSingleLine(true);
        this.vS.setTextColor(Color.parseColor("#38ADFF"));
        this.vS.setTextSize(16.0f);
        this.vS.setLayoutParams(layoutParams9);
        jcg.addView(hiB);
        hiB.addView(this.TKC);
        hiB.addView(this.sP);
        hiB.addView(this.EjP);
        hiB.addView(view);
        hiB.addView(hiB2);
        hiB2.addView(this.HiB);
        hiB2.addView(this.Jcg);
        hiB2.addView(this.vS);
        return jcg;
    }

    private void Sj() {
        this.vS.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.sP.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Sj sj2 = sP.this.Sj;
                if (sj2 != null) {
                    sj2.Sj();
                }
            }
        });
        this.HiB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.sP.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Sj sj2 = sP.this.Sj;
                if (sj2 != null) {
                    sj2.sP();
                }
            }
        });
    }

    private void sP() {
        if (TextUtils.isEmpty(this.TEQ)) {
            this.TKC.setVisibility(8);
        } else {
            this.TKC.setText(this.TEQ);
            this.TKC.setVisibility(0);
        }
        if (!TextUtils.isEmpty(this.uA)) {
            this.EjP.setText(this.uA);
        }
        if (TextUtils.isEmpty(this.Ym)) {
            this.vS.setText(ib.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), "tt_postive_txt"));
        } else {
            this.vS.setText(this.Ym);
        }
        if (TextUtils.isEmpty(this.f21108aa)) {
            this.HiB.setText(ib.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), "tt_negtive_txt"));
        } else {
            this.HiB.setText(this.f21108aa);
        }
        int i11 = this.Fmk;
        if (i11 != -1) {
            this.sP.setImageResource(i11);
            this.sP.setVisibility(0);
        } else {
            this.sP.setVisibility(8);
        }
        if (this.sef) {
            this.Jcg.setVisibility(8);
            this.HiB.setVisibility(8);
        } else {
            this.HiB.setVisibility(0);
            this.Jcg.setVisibility(0);
        }
    }

    public sP Sj(Sj sj2) {
        this.Sj = sj2;
        return this;
    }

    public sP Sj(String str) {
        this.uA = str;
        return this;
    }

    public sP TKC(String str) {
        this.f21108aa = str;
        return this;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(Sj(this.Dq));
        setCanceledOnTouchOutside(false);
        sP();
        Sj();
    }

    public sP sP(String str) {
        this.Ym = str;
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        sP();
    }
}
