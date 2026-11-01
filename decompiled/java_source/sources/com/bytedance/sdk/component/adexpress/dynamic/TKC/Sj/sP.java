package com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.TKC.uA;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements View.OnTouchListener {
    private boolean EjP;
    private uA HiB;
    private float Sj;
    private long TKC;
    private float sP;
    private com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq vS;

    public sP(uA uAVar, com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2) {
        this.HiB = uAVar;
        this.vS = dq2;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.TKC = System.currentTimeMillis();
            this.Sj = motionEvent.getX();
            this.sP = motionEvent.getY();
            this.HiB.HiB();
        } else if (action != 1) {
            if (action == 2) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (Math.abs(x10 - this.Sj) >= com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), 10.0f) || Math.abs(y10 - this.sP) >= com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), 10.0f)) {
                    this.EjP = true;
                    this.HiB.vS();
                }
            }
        } else {
            if (this.EjP) {
                return false;
            }
            if (System.currentTimeMillis() - this.TKC >= 1500) {
                com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2 = this.vS;
                if (dq2 != null) {
                    dq2.Sj();
                }
            } else {
                this.HiB.vS();
            }
        }
        return true;
    }
}
