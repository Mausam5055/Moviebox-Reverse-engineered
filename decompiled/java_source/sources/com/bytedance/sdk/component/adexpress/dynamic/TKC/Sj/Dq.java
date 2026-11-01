package com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class Dq implements View.OnTouchListener {
    private float EjP;
    private float HiB;
    private float Jcg;
    private final com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq Sj;
    private final int TKC = 10;
    private final boolean sP;
    private float vS;

    public Dq(com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2, boolean z10) {
        this.Sj = dq2;
        this.sP = z10;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2;
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq3;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.EjP = motionEvent.getX();
            this.HiB = motionEvent.getY();
            new StringBuilder(", mStartY: ").append(this.HiB);
        } else if (action == 1) {
            this.vS = motionEvent.getX();
            this.Jcg = motionEvent.getY();
            new StringBuilder(", mEndY: ").append(this.Jcg);
            if (this.sP || (dq3 = this.Sj) == null) {
                float f11 = this.vS - this.EjP;
                float f12 = this.Jcg - this.HiB;
                if (com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), Math.abs((float) Math.sqrt((f11 * f11) + (f12 * f12)))) > 10.0f && (dq2 = this.Sj) != null) {
                    dq2.Sj();
                }
            } else {
                dq3.Sj();
            }
        }
        return true;
    }
}
