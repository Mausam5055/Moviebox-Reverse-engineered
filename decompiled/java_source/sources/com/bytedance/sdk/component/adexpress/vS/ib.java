package com.bytedance.sdk.component.adexpress.vS;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.PathInterpolator;

/* JADX INFO: loaded from: classes2.dex */
public class ib extends View {
    private static int TKC = 50;
    private ObjectAnimator EjP;
    private Paint Sj;
    private int sP;

    public ib(Context context) {
        this(context, null);
    }

    public ib(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public ib(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.sP = 10;
        TKC();
    }

    private void TKC() {
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setAntiAlias(true);
        this.Sj.setColor(Color.parseColor("#FFFFFFFF"));
        this.Sj.setStyle(Paint.Style.STROKE);
        this.Sj.setStrokeWidth(18.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        this.EjP = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(200L);
    }

    public void Sj() {
        int iMin = ((int) Math.min(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f)) - 18;
        TKC = iMin;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(10, iMin);
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.0f, 0.2f, 0.3f, 1.0f));
        valueAnimatorOfInt.setDuration(800L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.vS.ib.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ib.this.sP = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ib.this.invalidate();
            }
        });
        valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.vS.ib.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ib.this.EjP.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ib.this.setVisibility(0);
                ib.this.setAlpha(1.0f);
            }
        });
        valueAnimatorOfInt.start();
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.Sj.setShader(new LinearGradient(getMeasuredWidth() / 2, 0.0f, getMeasuredWidth() / 2, getMeasuredHeight(), -1, 16777215, Shader.TileMode.CLAMP));
        canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, this.sP, this.Sj);
    }

    public void sP() {
        clearAnimation();
    }
}
