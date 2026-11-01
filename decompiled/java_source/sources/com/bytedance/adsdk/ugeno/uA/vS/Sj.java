package com.bytedance.adsdk.ugeno.uA.vS;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.Sj.HiB;
import com.bytedance.adsdk.ugeno.Sj.vS;
import com.bytedance.adsdk.ugeno.core.IAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends TextView implements HiB, IAnimation {
    private EjP Sj;
    private vS TKC;
    private float sP;

    public Sj(Context context) {
        super(context);
        this.TKC = new vS(this);
    }

    public void Sj(EjP ejP) {
        this.Sj = ejP;
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.sP(canvas);
        }
    }

    public float getBorderRadius() {
        return this.TKC.Sj();
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getRipple() {
        return this.sP;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getRubIn() {
        return this.TKC.getRubIn();
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getShine() {
        return this.TKC.getShine();
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getStretch() {
        return this.TKC.getStretch();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Sj(canvas, this);
            this.Sj.Sj(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Sj(i11, i12, i13, i14);
        }
        super.onLayout(z10, i11, i12, i13, i14);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i11, int i12) {
        EjP ejP = this.Sj;
        if (ejP == null) {
            super.onMeasure(i11, i12);
        } else {
            int[] iArrSj = ejP.Sj(i11, i12);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.sP(i11, i12, i13, i13);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        this.TKC.Sj(i11);
    }

    public void setBorderRadius(float f11) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.Sj(f11);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation
    public void setRipple(float f11) {
        this.sP = f11;
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.sP(f11);
        }
        postInvalidate();
    }

    public void setRubIn(float f11) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.HiB(f11);
        }
    }

    public void setShine(float f11) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.TKC(f11);
        }
    }

    public void setStretch(float f11) {
        vS vSVar = this.TKC;
        if (vSVar != null) {
            vSVar.EjP(f11);
        }
    }
}
