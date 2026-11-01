package com.bytedance.sdk.openadsdk.common;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class Zq extends com.bytedance.sdk.openadsdk.core.HiB.TKC implements com.bytedance.sdk.openadsdk.TKC.TEQ.sP {
    private Context EjP;
    private String HiB;
    private final com.bytedance.sdk.openadsdk.TKC.TEQ Jcg;
    private View Sj;
    private Sj TKC;
    private sU sP;
    private boolean vS;

    public interface Sj {
        void Sj(View view);

        void Sj(FilterWord filterWord);

        void sP(View view);
    }

    public Zq(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    public Zq(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Zq(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.vS = false;
        this.Jcg = new com.bytedance.sdk.openadsdk.TKC.TEQ();
        Sj(context, attributeSet);
    }

    public Zq(@NonNull Context context, @NonNull sU sUVar) {
        this(context.getApplicationContext());
        this.sP = sUVar;
        this.EjP = context;
        EjP();
        HiB();
    }

    private void EjP() {
        this.Jcg.Sj(this.sP.mZN());
        this.Jcg.Sj(this);
    }

    private void HiB() {
        com.bytedance.sdk.openadsdk.TKC.TEQ teq;
        sU sUVar = this.sP;
        if (sUVar == null || (teq = this.Jcg) == null) {
            return;
        }
        teq.Sj(sUVar.nru());
    }

    private void Sj(Context context, AttributeSet attributeSet) {
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.Zq.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Zq.this.Jcg != null) {
                    Zq.this.Jcg.HiB();
                } else {
                    Zq.this.sP();
                }
            }
        });
        setBackgroundColor(Color.parseColor("#80000000"));
        this.Sj = new com.bytedance.sdk.openadsdk.TKC.uA(context, this.Jcg);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        layoutParams.leftMargin = FPG.sP(getContext(), 20.0f);
        layoutParams.rightMargin = FPG.sP(getContext(), 20.0f);
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setClickable(true);
        HiB();
    }

    private com.bytedance.sdk.openadsdk.TKC.aa.Sj vS() {
        return new com.bytedance.sdk.openadsdk.TKC.aa.Sj() { // from class: com.bytedance.sdk.openadsdk.common.Zq.2
            @Override // com.bytedance.sdk.openadsdk.TKC.aa.Sj
            public void Sj() {
                Zq.this.setVisibility(8);
            }

            @Override // com.bytedance.sdk.openadsdk.TKC.aa.Sj
            public void Sj(int i11, FilterWord filterWord, String str) {
                Zq.this.Jcg.TKC(str);
                Zq.this.setVisibility(0);
            }

            @Override // com.bytedance.sdk.openadsdk.TKC.aa.Sj
            public void TKC() {
                Zq.this.setVisibility(0);
            }

            @Override // com.bytedance.sdk.openadsdk.TKC.aa.Sj
            public void sP() {
                Zq.this.setVisibility(0);
            }
        };
    }

    public void Sj() {
        if (this.Sj.getParent() == null) {
            addView(this.Sj);
        }
        setVisibility(0);
        this.vS = true;
        Sj sj2 = this.TKC;
        if (sj2 != null) {
            sj2.Sj(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TKC.TEQ.sP
    public void Sj(int i11) {
        if (com.bytedance.sdk.openadsdk.TKC.TEQ.sP != i11) {
            if (com.bytedance.sdk.openadsdk.TKC.TEQ.TKC == i11) {
                sP();
                return;
            } else {
                if (com.bytedance.sdk.openadsdk.TKC.TEQ.HiB == i11) {
                    TKC();
                    return;
                }
                return;
            }
        }
        FilterWord filterWordSP = this.Jcg.sP();
        if (filterWordSP == null || com.bytedance.sdk.openadsdk.TKC.TEQ.Sj.equals(filterWordSP)) {
            return;
        }
        Sj sj2 = this.TKC;
        if (sj2 != null) {
            try {
                sj2.Sj(filterWordSP);
            } catch (Throwable unused) {
            }
        }
        sP();
    }

    public void TKC() {
        Context context = this.EjP;
        if (context instanceof Activity) {
            boolean zIsFinishing = ((Activity) context).isFinishing();
            com.bytedance.sdk.openadsdk.TKC.aa aaVar = new com.bytedance.sdk.openadsdk.TKC.aa(this.EjP, this.Jcg);
            aaVar.Sj(vS());
            aaVar.Sj(this.sP.mZN(), this.sP.SP().toString());
            aaVar.Sj(this.HiB);
            if (zIsFinishing || aaVar.isShowing()) {
                return;
            }
            aaVar.show();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.sdk.openadsdk.TKC.TEQ teq = this.Jcg;
        if (teq != null) {
            teq.Sj();
        }
    }

    public void sP() {
        setVisibility(8);
        this.vS = false;
        Sj sj2 = this.TKC;
        if (sj2 != null) {
            sj2.sP(this);
        }
    }

    public void setCallback(Sj sj2) {
        this.TKC = sj2;
    }

    public void setDislikeSource(String str) {
        this.HiB = str;
        this.Jcg.sP(str);
    }
}
