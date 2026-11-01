package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends ImageView implements IAnimation {
    private float EjP;
    private float HiB;
    TKC Sj;
    private float TKC;
    private float sP;
    private Jcg vS;

    public sP(Context context) {
        super(context);
        this.Sj = new TKC();
    }

    public Jcg getBrickNativeValue() {
        return this.vS;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getMarqueeValue() {
        return this.EjP;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getRippleValue() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getShineValue() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getStretchValue() {
        return this.HiB;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Jcg jcg;
        super.onDraw(canvas);
        this.Sj.Sj(canvas, this, this);
        if (getRippleValue() == 0.0f || (jcg = this.vS) == null || jcg.sP() <= 0) {
            return;
        }
        ((ViewGroup) getParent()).setClipChildren(false);
        ((ViewGroup) getParent().getParent()).setClipChildren(false);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.Sj.Sj(this, i11, i12);
    }

    public void setBrickNativeValue(Jcg jcg) {
        this.vS = jcg;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setMarqueeValue(float f11) {
        this.EjP = f11;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setRippleValue(float f11) {
        this.sP = f11;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setShineValue(float f11) {
        this.TKC = f11;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setStretchValue(float f11) {
        this.HiB = f11;
        this.Sj.Sj(this, f11);
    }
}
