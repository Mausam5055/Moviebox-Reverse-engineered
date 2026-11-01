package com.bytedance.sdk.openadsdk.TKC;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends com.bytedance.sdk.openadsdk.core.HiB.HiB implements View.OnClickListener, TEQ.TKC {
    private final TEQ EjP;
    private FilterWord HiB;
    private final int Jcg;
    private StateListDrawable vS;
    public static FilterWord Sj = new FilterWord("100:1", "GOOD");
    public static FilterWord sP = new FilterWord("100:2", "NOT_BAD");
    public static FilterWord TKC = new FilterWord("100:3", "BAD");

    public HiB(@NonNull Context context, int i11, TEQ teq) {
        super(context);
        this.Jcg = i11;
        this.EjP = teq;
        if (teq != null) {
            teq.Sj(this);
        }
        Sj(i11);
        Sj();
        sP();
    }

    private void Sj() {
        if (this.vS == null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(FPG.sP(getContext(), 12.0f));
            gradientDrawable.setColor(Color.parseColor("#F8F8F8"));
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setStroke(FPG.sP(getContext(), 2.0f), Color.parseColor("#FE2C55"));
            gradientDrawable2.setCornerRadius(FPG.sP(getContext(), 12.0f));
            gradientDrawable2.setColor(Color.parseColor("#12FE2C55"));
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.vS = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_selected}, gradientDrawable2);
            this.vS.addState(new int[0], gradientDrawable);
        }
        setBackground(this.vS);
        setSelected(false);
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        setLayoutParams(layoutParams);
        setOnClickListener(this);
    }

    private void Sj(int i11) {
        if (i11 == 1) {
            this.HiB = Sj;
        } else if (i11 == 2) {
            this.HiB = sP;
        } else {
            if (i11 != 3) {
                return;
            }
            this.HiB = TKC;
        }
    }

    private void sP() {
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(getContext());
        dq2.setTextSize(this.EjP.uA() ? 40 : 30);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.setMargins(0, FPG.sP(getContext(), 12.0f), 0, FPG.sP(getContext(), this.EjP.uA() ? 8.0f : 4.0f));
        addView(dq2, layoutParams);
        Sj sj2 = new Sj(getContext());
        sj2.setTextSize(this.EjP.uA() ? 17 : 12);
        sj2.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        sj2.setMaxLines(1);
        sj2.setSingleLine();
        sj2.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.setMargins(0, 0, 0, FPG.sP(getContext(), 12.0f));
        addView(sj2, layoutParams2);
        int i11 = this.Jcg;
        if (i11 == 1) {
            dq2.setText("😍");
            sj2.setText(ib.Sj(getContext(), "tt_good"));
        } else if (i11 == 2) {
            sj2.setText(ib.Sj(getContext(), "tt_not_bad"));
            dq2.setText("😐");
        } else {
            if (i11 != 3) {
                return;
            }
            sj2.setText(ib.Sj(getContext(), "tt_bad"));
            dq2.setText("😡");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.TKC
    public void Sj(FilterWord filterWord) {
        FilterWord filterWord2;
        if (filterWord == null || (filterWord2 = this.HiB) == null) {
            return;
        }
        setSelected(filterWord.equals(filterWord2));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (isSelected()) {
            this.EjP.Sj(TEQ.Sj);
        } else {
            this.EjP.Sj(this.HiB);
        }
    }
}
