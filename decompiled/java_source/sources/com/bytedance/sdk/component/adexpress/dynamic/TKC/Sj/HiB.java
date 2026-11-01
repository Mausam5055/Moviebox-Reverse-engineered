package com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements View.OnTouchListener {
    private com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq EjP;
    private int HiB;
    private float Sj;
    private boolean TKC;
    private float sP;

    public HiB(com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2, int i11) {
        this.EjP = dq2;
        this.HiB = i11;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Sj = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y10 = motionEvent.getY();
                this.sP = y10;
                if (Math.abs(y10 - this.Sj) > 10.0f) {
                    this.TKC = true;
                }
            }
        } else {
            if (!this.TKC) {
                return false;
            }
            int iSP = com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), Math.abs(this.sP - this.Sj));
            if (this.sP - this.Sj < 0.0f && iSP > this.HiB && (dq2 = this.EjP) != null) {
                dq2.Sj();
                this.Sj = 0.0f;
                this.sP = 0.0f;
                this.TKC = false;
            }
        }
        return true;
    }
}
