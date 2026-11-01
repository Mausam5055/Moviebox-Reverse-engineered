package com.bytedance.adsdk.ugeno.core.sP;

import android.content.Context;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.adsdk.ugeno.core.aa;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private Context EjP;
    private boolean HiB;
    private float Sj;
    private TEQ TKC;
    private float sP;

    public sP(Context context, TEQ teq) {
        this.EjP = context;
        this.TKC = teq;
    }

    public boolean Sj(aa aaVar, com.bytedance.adsdk.ugeno.sP.TKC tkc, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Sj = motionEvent.getX();
            this.sP = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (Math.abs(x10 - this.Sj) >= 15.0f || Math.abs(y10 - this.sP) >= 15.0f) {
                    this.HiB = true;
                }
            } else if (action == 3) {
                this.HiB = false;
            }
        } else {
            if (this.HiB) {
                this.HiB = false;
                return false;
            }
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            if (Math.abs(x11 - this.Sj) >= 15.0f || Math.abs(y11 - this.sP) >= 15.0f) {
                this.HiB = false;
            } else if (aaVar != null) {
                aaVar.Sj(this.TKC, tkc, tkc);
                return true;
            }
        }
        return true;
    }
}
