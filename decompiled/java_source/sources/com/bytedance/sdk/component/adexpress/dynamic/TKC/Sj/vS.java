package com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class vS implements View.OnTouchListener {
    private static int TKC = 10;
    private boolean EjP;
    private com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq HiB;
    private float Sj;
    private float sP;

    public vS(com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2) {
        this.HiB = dq2;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Sj = motionEvent.getX();
            this.sP = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (Math.abs(x10 - this.Sj) >= TKC || Math.abs(y10 - this.sP) >= TKC) {
                    this.EjP = true;
                }
            } else if (action == 3) {
                this.EjP = false;
            }
        } else {
            if (this.EjP) {
                this.EjP = false;
                return false;
            }
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            if (Math.abs(x11 - this.Sj) >= TKC || Math.abs(y11 - this.sP) >= TKC) {
                this.EjP = false;
            } else {
                com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2 = this.HiB;
                if (dq2 != null) {
                    dq2.Sj();
                }
            }
        }
        return true;
    }
}
