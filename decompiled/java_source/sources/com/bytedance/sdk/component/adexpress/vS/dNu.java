package com.bytedance.sdk.component.adexpress.vS;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class dNu extends View {
    private float EjP;
    private ValueAnimator HiB;
    private boolean Jcg;
    private Context Sj;
    private RectF TKC;
    private Paint sP;
    private int vS;

    public dNu(Context context) {
        super(context);
        this.vS = 1500;
        this.Sj = context;
        Paint paint = new Paint();
        this.sP = paint;
        paint.setAntiAlias(true);
        this.sP.setStyle(Paint.Style.STROKE);
        this.sP.setStrokeWidth(10.0f);
        this.sP.setColor(Color.parseColor("#80FFFFFF"));
        this.TKC = new RectF();
    }

    public void Sj() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.HiB = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.vS);
        this.HiB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.vS.dNu.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                dNu.this.EjP = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                dNu.this.requestLayout();
            }
        });
        this.HiB.start();
    }

    public void TKC() {
        this.Jcg = true;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.Jcg) {
            return;
        }
        canvas.drawArc(this.TKC, 270.0f, this.EjP, false, this.sP);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i12);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.TKC.set(5.0f, 5.0f, i11 - 5, i12 - 5);
    }

    public void sP() {
        ValueAnimator valueAnimator = this.HiB;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void setDuration(int i11) {
        this.vS = i11;
    }
}
