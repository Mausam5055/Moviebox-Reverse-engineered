package com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements View.OnTouchListener {
    private static int TKC = 10;
    private com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq EjP;
    private int HiB;
    private float Sj;
    private float sP;
    private RectF vS = new RectF();
    private long Jcg = 0;
    private final int Dq = 200;
    private final int uA = 3;
    private SoftReference<ViewGroup> TEQ = new SoftReference<>(null);

    public Sj(com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2, int i11, final ViewGroup viewGroup) {
        this.HiB = TKC;
        this.EjP = dq2;
        if (i11 > 0) {
            this.HiB = i11;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.TKC.Sj.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    Sj.this.TEQ = new SoftReference(viewGroup);
                }
            });
        }
    }

    private RectF Sj(View view) {
        if (view == null) {
            return new RectF();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i11 = iArr[0];
        return new RectF(i11, iArr[1], i11 + view.getWidth(), iArr[1] + view.getHeight());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.vS = Sj(this.TEQ.get());
            this.Sj = motionEvent.getRawX();
            this.sP = motionEvent.getRawY();
            this.Jcg = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.vS;
            if (rectF != null && !rectF.contains(this.Sj, this.sP)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float fAbs = Math.abs(rawX - this.Sj);
            float fAbs2 = Math.abs(rawY - this.sP);
            int i11 = this.HiB;
            if (fAbs >= i11 && fAbs2 >= i11) {
                com.bytedance.sdk.component.adexpress.dynamic.TKC.Dq dq3 = this.EjP;
                if (dq3 != null) {
                    dq3.Sj();
                }
            } else if ((System.currentTimeMillis() - this.Jcg < 200 || (fAbs < 3.0f && fAbs2 < 3.0f)) && (dq2 = this.EjP) != null) {
                dq2.Sj();
            }
        }
        return true;
    }
}
