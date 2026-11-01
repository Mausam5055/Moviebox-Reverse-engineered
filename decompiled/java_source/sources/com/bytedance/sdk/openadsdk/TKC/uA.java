package com.bytedance.sdk.openadsdk.TKC;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.google.android.material.card.MaterialCardView;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends com.bytedance.sdk.openadsdk.core.HiB.TKC implements TEQ.EjP, TEQ.Sj, TEQ.TKC, TEQ.sP {
    private View Dq;
    private final TEQ EjP;
    private int Fmk;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq HiB;
    private Ym Jcg;
    vS Sj;
    private com.bytedance.sdk.openadsdk.core.HiB.EjP TEQ;
    private int TKC;
    private com.bytedance.sdk.openadsdk.core.HiB.Dq Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20948aa;
    private int sP;
    private FilterWord sef;
    private View uA;
    private TextView vS;

    public uA(Context context, TEQ teq) {
        this(context, teq, null);
    }

    public uA(Context context, TEQ teq, List<FilterWord> list) {
        super(context);
        this.EjP = teq;
        teq.Sj((TEQ.TKC) this);
        teq.Sj((TEQ.sP) this);
        teq.Sj((TEQ.EjP) this);
        teq.Sj((TEQ.Sj) this);
        TKC();
        Sj(context);
        if (list == null || list.isEmpty()) {
            return;
        }
        sP(list);
    }

    private View EjP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setOrientation(1);
        hiB.setLayoutParams(new LinearLayout.LayoutParams(-1, !EjP() ? FPG.sP(context, 200.0f) : FPG.sP(context, 358.0f)));
        TextView textView = new TextView(context);
        textView.setText(ib.Sj(context, "tt_select_reason"));
        textView.setTextSize(EjP() ? 23 : 16);
        textView.setGravity(1);
        textView.setTextColor(Color.parseColor("#161823"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.bottomMargin = FPG.sP(context, EjP() ? 24.0f : 4.0f);
        hiB.addView(textView, layoutParams);
        vS vSVar = new vS(context, this.EjP);
        this.Sj = vSVar;
        hiB.addView(vSVar);
        if (Fmk.gq().xhi()) {
            com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
            this.Ym = dq2;
            dq2.setId(Zq.rN);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = EjP() ? this.sP : FPG.sP(context, 6.0f);
            layoutParams2.gravity = 17;
            this.Ym.setLayoutParams(layoutParams2);
            this.Ym.setFocusable(false);
            this.Ym.setHint(ib.Sj(context, "tt_add_bad_reason"));
            this.Ym.setHintTextColor(Color.parseColor("#57000000"));
            this.Ym.setTextColor(Color.rgb(22, 24, 35));
            this.Ym.setTextSize(15.0f);
            this.Ym.setGravity(GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK);
            this.Ym.setVisibility(0);
            this.Ym.setPadding(0, FPG.sP(context, 15.0f), 0, FPG.sP(context, 14.0f));
            this.Ym.setEllipsize(TextUtils.TruncateAt.END);
            this.Ym.setSingleLine();
            this.Ym.setMaxLines(1);
            this.Ym.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.uA.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    uA.this.EjP.vS();
                }
            });
            hiB.addView(this.Ym, layoutParams2);
            hiB.addView(new Ym(context, Color.argb(128, 0, 0, 0)));
        }
        hiB.setVisibility(8);
        return hiB;
    }

    private boolean EjP() {
        if (this.f20948aa == 0) {
            TKC();
        }
        return this.f20948aa < this.Fmk;
    }

    private void Sj(Context context) {
        this.TKC = FPG.sP(context, 8.0f);
        this.sP = FPG.sP(context, 20.0f);
        int iSP = FPG.sP(context, 56.0f);
        int iSP2 = FPG.sP(context, 30.0f);
        int iSP3 = FPG.sP(context, 12.0f);
        if (EjP()) {
            iSP3 = this.sP;
        }
        if (!EjP()) {
            iSP = iSP2;
        }
        View view = new View(getContext());
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, FPG.sP(getContext(), 98.0f));
        view.setBackground(ib.TKC(context, "tt_ad_bg_header_gradient"));
        addView(view, layoutParams);
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.TKC);
        gradientDrawable.setColor(-1);
        setBackground(gradientDrawable);
        setLayoutParams(layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        int iSP4 = FPG.sP(context, 24.0f);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(iSP4, iSP4);
        layoutParams3.setMargins(0, iSP3, iSP3, 0);
        layoutParams3.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        ejP.setImageDrawable(com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_titlebar_close_seletor"));
        addView(ejP, layoutParams3);
        ejP.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.uA.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                uA.this.EjP.HiB();
            }
        });
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP2 = new com.bytedance.sdk.openadsdk.core.HiB.EjP(context);
        this.TEQ = ejP2;
        ejP2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.uA.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                uA.this.sP();
            }
        });
        this.TEQ.setVisibility(8);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(iSP4, iSP4);
        layoutParams4.setMargins(iSP3, iSP3, 0, 0);
        layoutParams4.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        Drawable drawableSj = com.bytedance.sdk.openadsdk.utils.TEQ.Sj(context, "tt_leftbackicon_selector");
        drawableSj.setAutoMirrored(true);
        this.TEQ.setImageDrawable(drawableSj);
        addView(this.TEQ, layoutParams4);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams5.setMargins(iSP3, iSP, iSP3, iSP3);
        hiB.setOrientation(1);
        addView(hiB, layoutParams5);
        View viewTKC = TKC(context);
        this.Dq = viewTKC;
        hiB.addView(viewTKC);
        View viewEjP = EjP(context);
        this.uA = viewEjP;
        hiB.addView(viewEjP);
        com.bytedance.sdk.openadsdk.core.HiB.Dq dqSP = sP(context);
        this.HiB = dqSP;
        hiB.addView(dqSP);
    }

    private View TKC(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        hiB.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setText(ib.Sj(context, "tt_like_this_ad"));
        textView.setTextSize(EjP() ? 23 : 16);
        textView.setGravity(1);
        textView.setTextColor(Color.parseColor("#161823"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        hiB.addView(textView, layoutParams);
        TextView textView2 = new TextView(context);
        textView2.setText(ib.Sj(context, "tt_feel_hint"));
        textView2.setTextSize(EjP() ? 14 : 10);
        textView2.setAlpha(0.5f);
        textView2.setTextColor(Color.parseColor("#161823"));
        textView2.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        if (EjP()) {
            layoutParams2.topMargin = FPG.sP(context, 4.0f);
        }
        hiB.addView(textView2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB2 = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        hiB2.setOrientation(0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        int iSP = FPG.sP(context, 16.0f);
        int iSP2 = FPG.sP(context, 12.0f);
        int iSP3 = FPG.sP(context, 8.0f);
        if (EjP()) {
            layoutParams3.topMargin = iSP;
            layoutParams3.bottomMargin = iSP;
        } else {
            layoutParams3.topMargin = iSP2;
            layoutParams3.bottomMargin = iSP3;
        }
        hiB.addView(hiB2, layoutParams3);
        hiB2.addView(new HiB(context, 1, this.EjP));
        HiB hiB3 = new HiB(context, 2, this.EjP);
        ViewGroup.LayoutParams layoutParams4 = hiB3.getLayoutParams();
        boolean z10 = layoutParams4 instanceof LinearLayout.LayoutParams;
        ViewGroup.LayoutParams layoutParams5 = layoutParams4;
        if (!z10) {
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -2);
            layoutParams6.weight = 1.0f;
            layoutParams5 = layoutParams6;
        }
        LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) layoutParams5;
        layoutParams7.leftMargin = iSP;
        layoutParams7.rightMargin = iSP;
        hiB2.addView(hiB3, layoutParams5);
        hiB2.addView(new HiB(context, 3, this.EjP));
        Ym ym2 = new Ym(context);
        this.Jcg = ym2;
        hiB.addView(ym2);
        this.vS = new TextView(context);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
        if (!EjP()) {
            iSP = iSP3;
        }
        layoutParams8.topMargin = iSP;
        this.vS.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.vS.setPadding(iSP2, iSP3, iSP2, iSP3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(iSP3);
        gradientDrawable.setColor(Color.parseColor("#F8F8F8"));
        this.vS.setBackground(gradientDrawable);
        this.vS.setText(ib.Sj(context, "tt_report_this_ad"));
        this.vS.setTextSize(EjP() ? 14 : 12);
        Drawable drawableTKC = ib.TKC(context, "tt_report_ad_arrow");
        drawableTKC.setBounds(0, 0, iSP2, iSP2);
        this.vS.setCompoundDrawables(null, null, drawableTKC, null);
        this.vS.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.uA.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                uA.this.Sj();
            }
        });
        hiB.addView(this.vS, layoutParams8);
        return hiB;
    }

    private void TKC() {
        if (this.f20948aa > 0) {
            return;
        }
        this.f20948aa = FPG.TKC(getContext());
        int iHiB = FPG.HiB(getContext());
        this.Fmk = iHiB;
        this.EjP.Sj(this.f20948aa, iHiB);
    }

    private com.bytedance.sdk.openadsdk.core.HiB.Dq sP(Context context) {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = EjP() ? this.sP : FPG.sP(context, 12.0f);
        layoutParams.gravity = 80;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.TKC);
        int iRgb = Color.rgb(254, 44, 85);
        gradientDrawable.setColor(iRgb);
        gradientDrawable.setAlpha(102);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(this.TKC);
        gradientDrawable2.setColor(iRgb);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_enabled}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        int i11 = this.TKC;
        dq2.setPadding(0, i11, 0, i11);
        dq2.setGravity(17);
        dq2.setBackground(stateListDrawable);
        dq2.setTextColor(-1);
        dq2.setTextSize(16.0f);
        dq2.setText(ib.Sj(context, "tt_suggestion_commit"));
        dq2.setEnabled(false);
        dq2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.TKC.uA.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                uA.this.EjP.EjP();
            }
        });
        dq2.setLayoutParams(layoutParams);
        return dq2;
    }

    private void sP(List<FilterWord> list) {
        this.Sj.Sj(list);
    }

    public void Sj() {
        View view = this.uA;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.Dq;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = this.TEQ;
        if (ejP != null) {
            ejP.setVisibility(0);
        }
        TEQ teq = this.EjP;
        if (teq == null || !teq.TKC()) {
            return;
        }
        this.sef = this.EjP.sP();
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.sP
    public void Sj(int i11) {
        if (TEQ.TKC == i11) {
            this.sef = null;
            sP();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.TKC
    public void Sj(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        if (this.HiB != null && TextUtils.isEmpty(this.EjP.Jcg())) {
            this.HiB.setEnabled(!TEQ.Sj.equals(filterWord));
        }
        if (HiB.Sj.equals(filterWord) || HiB.sP.equals(filterWord)) {
            this.vS.setVisibility(8);
            this.Jcg.setVisibility(8);
        }
        if (HiB.TKC.equals(filterWord) || TEQ.Sj.equals(filterWord)) {
            this.vS.setVisibility(0);
            this.Jcg.setVisibility(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.EjP
    public void Sj(String str) {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2;
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq3 = this.Ym;
        if (dq3 != null) {
            dq3.setText(str);
        }
        if (!TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.core.HiB.Dq dq4 = this.HiB;
            if (dq4 != null) {
                dq4.setEnabled(true);
                return;
            }
            return;
        }
        TEQ teq = this.EjP;
        if (teq == null || (dq2 = this.HiB) == null) {
            return;
        }
        dq2.setEnabled(teq.TKC());
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.Sj
    public void Sj(List<FilterWord> list) {
        sP(list);
    }

    public void sP() {
        View view = this.uA;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.Dq;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        com.bytedance.sdk.openadsdk.core.HiB.EjP ejP = this.TEQ;
        if (ejP != null) {
            ejP.setVisibility(8);
        }
        TEQ teq = this.EjP;
        if (teq != null) {
            FilterWord filterWord = this.sef;
            if (filterWord != null) {
                teq.Sj(filterWord);
            } else {
                teq.Sj(TEQ.Sj);
            }
            this.EjP.TKC(null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.HiB.TKC, android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams != null) {
            if (this.f20948aa == 0) {
                TKC();
            }
            layoutParams.width = Math.min(this.f20948aa, this.Fmk) - (FPG.sP(getContext(), 16.0f) * 2);
        }
    }
}
