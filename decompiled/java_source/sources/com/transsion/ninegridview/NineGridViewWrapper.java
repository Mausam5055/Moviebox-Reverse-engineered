package com.transsion.ninegridview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import com.google.android.material.imageview.ShapeableImageView;

/* JADX INFO: loaded from: classes6.dex */
public class NineGridViewWrapper extends ShapeableImageView {
    private TextPaint A;
    private String B;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f47664w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f47665x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f47666y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f47667z;

    public NineGridViewWrapper(Context context) {
        this(context, null);
    }

    public NineGridViewWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridViewWrapper(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f47664w = 0;
        this.f47665x = -2013265920;
        this.f47666y = 35.0f;
        this.f47667z = -1;
        this.B = "";
        this.f47666y = TypedValue.applyDimension(2, 35.0f, getContext().getResources().getDisplayMetrics());
        TextPaint textPaint = new TextPaint();
        this.A = textPaint;
        textPaint.setTextAlign(Paint.Align.CENTER);
        this.A.setAntiAlias(true);
        this.A.setTextSize(this.f47666y);
        this.A.setColor(this.f47667z);
    }

    public int getMaskColor() {
        return this.f47665x;
    }

    public int getMoreNum() {
        return this.f47664w;
    }

    public int getTextColor() {
        return this.f47667z;
    }

    public float getTextSize() {
        return this.f47666y;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.google.android.material.imageview.ShapeableImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f47664w > 0) {
            canvas.drawColor(this.f47665x);
            canvas.drawText(this.B, getWidth() / 2, (getHeight() / 2) - ((this.A.ascent() + this.A.descent()) / 2.0f), this.A);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void setMaskColor(int i11) {
        this.f47665x = i11;
        invalidate();
    }

    public void setMoreNum(int i11) {
        this.f47664w = i11;
        this.B = "+" + i11;
        invalidate();
    }

    public void setTextColor(int i11) {
        this.f47667z = i11;
        this.A.setColor(i11);
        invalidate();
    }

    public void setTextSize(float f11) {
        this.f47666y = f11;
        this.A.setTextSize(f11);
        invalidate();
    }
}
