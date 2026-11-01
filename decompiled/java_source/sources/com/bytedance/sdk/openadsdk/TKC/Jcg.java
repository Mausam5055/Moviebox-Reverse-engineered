package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.graphics.Color;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends LinearLayout {
    private final FilterWord Sj;
    private final TEQ TKC;
    private Dq sP;

    public Jcg(Context context, FilterWord filterWord, TEQ teq) {
        super(context);
        setOrientation(1);
        this.Sj = filterWord;
        this.TKC = teq;
        Sj();
    }

    private void Sj() {
        TKC();
        sP();
    }

    private void TKC() {
        String name = this.Sj.getName();
        com.bytedance.sdk.openadsdk.core.HiB.Dq dq2 = new com.bytedance.sdk.openadsdk.core.HiB.Dq(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.bottomMargin = FPG.sP(getContext(), 12.0f);
        layoutParams.gravity = 17;
        dq2.setGravity(17);
        dq2.setText(name);
        dq2.setTextColor(Color.argb(85, 22, 24, 35));
        dq2.setTextSize(this.TKC.uA() ? 14 : 10);
        addView(dq2, layoutParams);
    }

    private void sP() {
        this.sP = new Dq(getContext(), this.TKC);
        new LinearLayout.LayoutParams(-1, -2);
        this.sP.Sj(this.Sj.getOptions());
        addView(this.sP);
    }
}
