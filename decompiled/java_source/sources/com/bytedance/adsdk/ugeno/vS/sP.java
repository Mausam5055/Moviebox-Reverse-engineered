package com.bytedance.adsdk.ugeno.vS;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends Sj<com.bytedance.adsdk.ugeno.sP.TKC> {
    private com.bytedance.adsdk.ugeno.EjP TKC;

    public sP(Context context) {
        super(context);
    }

    public void Sj(com.bytedance.adsdk.ugeno.EjP ejP) {
        this.TKC = ejP;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.vS();
        }
        super.onLayout(z10, i11, i12, i13, i14);
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.TKC;
        if (ejP2 != null) {
            ejP2.Sj(i11, i12, i13, i14);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            int[] iArrSj = ejP.Sj(i11, i12);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        } else {
            super.onMeasure(i11, i12);
        }
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.TKC;
        if (ejP2 != null) {
            ejP2.HiB();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        com.bytedance.adsdk.ugeno.EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.sP(i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override // com.bytedance.adsdk.ugeno.vS.Sj
    public View uA(int i11) {
        return ((com.bytedance.adsdk.ugeno.sP.TKC) this.Sj.get(i11)).Ym();
    }
}
