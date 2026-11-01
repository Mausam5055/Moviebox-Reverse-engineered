package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class CircleProgressBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f40901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f40902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f40903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f40904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f40905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f40906f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f40907g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f40908h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f40909i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f40910j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f40911k;

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40909i = 100;
        this.f40911k = 0;
        a(context, attributeSet);
        b();
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.CircleProgressbar, 0, 0);
        this.f40907g = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_progressRadius, 80.0f);
        this.f40908h = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_progressStrokesWidth, 10.0f);
        this.f40904d = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_progressBgColor, 15658734);
        this.f40905e = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_progressRingsColor, 16734911);
        this.f40906f = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_progressTextsColor, 16777215);
        this.f40909i = typedArrayObtainStyledAttributes.getInt(R$styleable.CircleProgressbar_progressMax, 100);
        this.f40910j = typedArrayObtainStyledAttributes.getInt(R$styleable.CircleProgressbar_progressCurrent, 0);
    }

    private void b() {
        Paint paint = new Paint();
        this.f40901a = paint;
        paint.setAntiAlias(true);
        this.f40901a.setDither(true);
        this.f40901a.setColor(this.f40904d);
        Paint paint2 = this.f40901a;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = this.f40901a;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        this.f40901a.setStrokeWidth(this.f40908h);
        Paint paint4 = new Paint();
        this.f40902b = paint4;
        paint4.setAntiAlias(true);
        this.f40902b.setDither(true);
        this.f40902b.setColor(this.f40905e);
        this.f40902b.setStyle(style);
        this.f40902b.setStrokeCap(cap);
        this.f40902b.setStrokeWidth(this.f40908h);
        Paint paint5 = new Paint();
        this.f40903c = paint5;
        paint5.setAntiAlias(true);
        this.f40903c.setStyle(Paint.Style.FILL);
        this.f40903c.setColor(this.f40906f);
        this.f40903c.setTextSize(this.f40907g / 2.0f);
        this.f40903c.getFontMetrics();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f40907g, this.f40901a);
        if (this.f40910j >= 0) {
            RectF rectF = new RectF((getWidth() / 2) - this.f40907g, (getHeight() / 2) - this.f40907g, (getWidth() / 2) + this.f40907g, (getHeight() / 2) + this.f40907g);
            canvas.drawArc(rectF, 0.0f, 0.0f, false, this.f40902b);
            canvas.drawArc(rectF, -90.0f, (this.f40910j / this.f40909i) * 360.0f, false, this.f40902b);
        }
    }

    public void setMax(int i11) {
        this.f40909i = i11;
        postInvalidate();
    }

    public void setProgress(int i11) {
        this.f40910j = i11;
        postInvalidate();
    }

    public void setRingColor(int i11) {
        this.f40905e = i11;
        this.f40902b.setColor(i11);
        postInvalidate();
    }
}
