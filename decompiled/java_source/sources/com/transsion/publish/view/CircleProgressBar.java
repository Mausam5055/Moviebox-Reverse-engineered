package com.transsion.publish.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.transsion.publish.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class CircleProgressBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f50628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f50629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f50630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f50631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f50632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f50633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f50634g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f50635h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f50636i;

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f50634g = 100;
        this.f50636i = 0;
        a(context, attributeSet);
        b();
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.CircleProgressbar, 0, 0);
        this.f50632e = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_ra, 80.0f);
        this.f50633f = typedArrayObtainStyledAttributes.getDimension(R$styleable.CircleProgressbar_strokesWidth, 10.0f);
        this.f50630c = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_ringsColor, 16711680);
        this.f50631d = typedArrayObtainStyledAttributes.getColor(R$styleable.CircleProgressbar_textsColor, 16777215);
    }

    private void b() {
        Paint paint = new Paint();
        this.f50628a = paint;
        paint.setAntiAlias(true);
        this.f50628a.setDither(true);
        this.f50628a.setColor(this.f50630c);
        this.f50628a.setStyle(Paint.Style.STROKE);
        this.f50628a.setStrokeCap(Paint.Cap.ROUND);
        this.f50628a.setStrokeWidth(this.f50633f);
        Paint paint2 = new Paint();
        this.f50629b = paint2;
        paint2.setAntiAlias(true);
        this.f50629b.setStyle(Paint.Style.FILL);
        this.f50629b.setColor(this.f50631d);
        this.f50629b.setTextSize(this.f50632e / 2.0f);
        this.f50629b.getFontMetrics();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f50635h >= 0) {
            RectF rectF = new RectF((getWidth() / 2) - this.f50632e, (getHeight() / 2) - this.f50632e, (getWidth() / 2) + this.f50632e, (getHeight() / 2) + this.f50632e);
            canvas.drawArc(rectF, 0.0f, 0.0f, false, this.f50628a);
            canvas.drawArc(rectF, -90.0f, (this.f50635h / this.f50634g) * 360.0f, false, this.f50628a);
        }
    }

    public void setProgress(int i11) {
        this.f50635h = i11;
        postInvalidate();
    }

    public void setRingColor(int i11) {
        this.f50630c = i11;
        this.f50628a.setColor(i11);
        postInvalidate();
    }
}
