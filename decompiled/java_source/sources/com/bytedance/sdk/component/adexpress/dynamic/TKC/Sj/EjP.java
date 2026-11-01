package com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements View.OnTouchListener {
    private boolean Dq;
    private float EjP;
    private boolean HiB = true;
    private float Jcg;
    private float Sj;
    private int TEQ;
    private float TKC;
    private boolean Ym;
    private float sP;
    private com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq uA;
    private float vS;

    public EjP(com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2, int i11, boolean z10) {
        this.uA = dq2;
        this.TEQ = i11;
        this.Ym = z10;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2;
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq3;
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq4;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Sj = motionEvent.getX();
            this.sP = motionEvent.getY();
            this.vS = motionEvent.getY();
            this.HiB = true;
        } else if (action != 1) {
            if (action == 2) {
                float y10 = motionEvent.getY();
                this.Jcg = y10;
                if (Math.abs(y10 - this.vS) > 10.0f) {
                    this.Dq = true;
                }
                this.EjP = motionEvent.getX();
                this.TKC = motionEvent.getY();
                if (Math.abs(this.EjP - this.Sj) > 8.0f || Math.abs(this.TKC - this.sP) > 8.0f) {
                    this.HiB = false;
                }
            }
        } else {
            if (!this.Dq && !this.HiB) {
                return false;
            }
            if (this.Ym || (dq4 = this.uA) == null) {
                int iSP = com.bytedance.sdk.component.adexpress.EjP.Jcg.sP(com.bytedance.sdk.component.adexpress.EjP.Sj(), Math.abs(this.Jcg - this.vS));
                if (this.Jcg - this.vS < 0.0f && iSP > this.TEQ && (dq3 = this.uA) != null) {
                    dq3.Sj();
                } else if (this.HiB && (dq2 = this.uA) != null) {
                    dq2.Sj();
                }
            } else {
                dq4.Sj();
            }
        }
        return true;
    }
}
