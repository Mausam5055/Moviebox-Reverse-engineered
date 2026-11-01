package com.bytedance.sdk.openadsdk.core.HiB;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class vS extends FrameLayout {
    private boolean Dq;
    private Drawable EjP;
    private Drawable HiB;
    private ValueAnimator Jcg;
    private int Sj;
    private Drawable TKC;
    private int sP;
    private boolean vS;

    public vS(Context context) {
        super(context);
        this.Sj = 100;
    }

    public vS(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.Sj = 100;
    }

    private void Sj() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 10000);
        this.Jcg = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(2000L);
        this.Jcg.setRepeatCount(-1);
        this.Jcg.setInterpolator(new LinearInterpolator());
        this.Jcg.setRepeatMode(1);
        this.Jcg.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.HiB.vS.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                vS.this.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.Jcg.start();
        setMax(10000);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.vS = true;
        if (this.HiB != null) {
            Sj();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.vS = false;
        ValueAnimator valueAnimator = this.Jcg;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.Jcg.removeAllUpdateListeners();
            this.Jcg = null;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i11) {
        super.onVisibilityChanged(view, i11);
        if (i11 != 0) {
            ValueAnimator valueAnimator = this.Jcg;
            if (valueAnimator == null || this.Dq) {
                return;
            }
            this.Dq = true;
            valueAnimator.pause();
            return;
        }
        if (this.Dq) {
            this.Dq = false;
            ValueAnimator valueAnimator2 = this.Jcg;
            if (valueAnimator2 != null) {
                valueAnimator2.resume();
            } else {
                Sj();
            }
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        this.HiB = drawable;
        setProgressDrawable(drawable);
        if (this.vS && this.Jcg == null) {
            Sj();
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(uA.Sj(this, layoutParams));
    }

    public void setMax(int i11) {
        this.Sj = i11;
    }

    @Override // android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
        super.setPaddingRelative(i11, i12, i13, i14);
    }

    public void setProgress(int i11) {
        this.sP = i11;
        Drawable drawable = this.TKC;
        if (drawable != null) {
            drawable.setLevel((int) ((i11 * 10000.0f) / this.Sj));
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        this.EjP = drawable;
        setBackground(drawable);
        Drawable drawable2 = this.EjP;
        if (drawable2 instanceof LayerDrawable) {
            int numberOfLayers = ((LayerDrawable) drawable2).getNumberOfLayers();
            for (int i11 = 0; i11 < numberOfLayers; i11++) {
                Drawable drawable3 = ((LayerDrawable) this.EjP).getDrawable(i11);
                if ((drawable3 instanceof ScaleDrawable) || (drawable3 instanceof ClipDrawable)) {
                    this.TKC = drawable3;
                }
            }
        }
        Drawable drawable4 = this.EjP;
        if (drawable4 instanceof RotateDrawable) {
            this.TKC = drawable4;
        }
    }
}
