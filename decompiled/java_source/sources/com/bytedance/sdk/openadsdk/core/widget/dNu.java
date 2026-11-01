package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class dNu {
    private float EjP;
    private float HiB;
    private int Jcg;
    private final Sj Sj;
    private boolean Ym;
    private int vS;
    private final boolean sP = false;
    private boolean TKC = false;
    private boolean Dq = true;
    private boolean uA = false;
    private final View.OnTouchListener TEQ = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.dNu.1
        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (dNu.this.Sj.ib()) {
                return !dNu.this.TKC;
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                dNu dnu = dNu.this;
                dnu.Ym = dnu.Sj(motionEvent);
                dNu.this.EjP = x10;
                dNu.this.HiB = y10;
                dNu.this.vS = (int) x10;
                dNu.this.Jcg = (int) y10;
                dNu.this.Dq = true;
                if (dNu.this.Sj != null && dNu.this.TKC) {
                    dNu.this.Sj.Sj(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x10 - dNu.this.vS) > 20.0f || Math.abs(y10 - dNu.this.Jcg) > 20.0f) {
                    dNu.this.Dq = false;
                }
                dNu.this.Dq = true;
                dNu.this.uA = false;
                dNu.this.EjP = 0.0f;
                dNu.this.HiB = 0.0f;
                dNu.this.vS = 0;
                if (dNu.this.Sj != null) {
                    dNu.this.Sj.Sj(view, dNu.this.Dq);
                }
                dNu.this.Ym = false;
            } else if (action == 3) {
                dNu.this.Ym = false;
            }
            return !dNu.this.TKC;
        }
    };

    public interface Sj {
        void Sj(View view, boolean z10);

        boolean ib();
    }

    public dNu(Sj sj2) {
        this.Sj = sj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Sj(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        int iTKC = FPG.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj().getApplicationContext());
        int iHiB = FPG.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj().getApplicationContext());
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f11 = iTKC;
        if (rawX <= f11 * 0.01f || rawX >= f11 * 0.99f) {
            return true;
        }
        float f12 = iHiB;
        return rawY <= 0.01f * f12 || rawY >= f12 * 0.99f;
    }

    public void Sj(View view) {
        if (view != null) {
            view.setOnTouchListener(this.TEQ);
        }
    }

    public void Sj(boolean z10) {
        this.TKC = z10;
    }
}
