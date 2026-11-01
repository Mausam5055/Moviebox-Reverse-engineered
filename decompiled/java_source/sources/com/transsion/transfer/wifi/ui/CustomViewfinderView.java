package com.transsion.transfer.wifi.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import androidx.core.view.InputDeviceCompat;
import com.journeyapps.barcodescanner.CameraPreview;
import com.journeyapps.barcodescanner.ViewfinderView;
import com.transsion.transfer.R$styleable;

/* JADX INFO: loaded from: classes6.dex */
public class CustomViewfinderView extends ViewfinderView {
    public static final long INT_ANIMATION_DELAY = 12;
    public Paint mBitmapPaint;
    public int mLineColor;
    public float mLineDepth;
    public float mLineRate;
    public LinearGradient mLinearGradient;
    public float[] mPositions;
    public float mScanFrameHeight;
    public float mScanFrameWidth;
    public int[] mScanLineColor;
    public float mScanLineDepth;
    public float mScanLineDy;
    public int mScanLinePosition;

    public CustomViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLineRate = 0.1f;
        this.mLineDepth = b(4);
        this.mScanLinePosition = 0;
        this.mScanLineDepth = b(4);
        this.mScanLineDy = b(3);
        this.mPositions = new float[]{0.0f, 0.5f, 1.0f};
        this.mScanLineColor = new int[]{0, InputDeviceCompat.SOURCE_ANY, 0};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CustomViewfinderView);
        this.mLineColor = typedArrayObtainStyledAttributes.getColor(R$styleable.CustomViewfinderView_lineColor, InputDeviceCompat.SOURCE_ANY);
        this.mScanLineColor[1] = typedArrayObtainStyledAttributes.getColor(R$styleable.CustomViewfinderView_cornerColor, InputDeviceCompat.SOURCE_ANY);
        this.mScanFrameWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomViewfinderView_scanFrameWidth, b(160));
        this.mScanFrameHeight = typedArrayObtainStyledAttributes.getDimension(R$styleable.CustomViewfinderView_scanFrameHeight, b(160));
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.mBitmapPaint = paint;
        paint.setAntiAlias(true);
    }

    private int b(int i11) {
        return (int) ((i11 * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // com.journeyapps.barcodescanner.ViewfinderView
    protected void a() {
        CameraPreview cameraPreview = this.f33927k;
        if (cameraPreview == null) {
            return;
        }
        cameraPreview.setFramingRectSize(new xe.q((int) this.mScanFrameWidth, (int) this.mScanFrameHeight));
        Rect framingRect = this.f33927k.getFramingRect();
        xe.q previewSize = this.f33927k.getPreviewSize();
        if (framingRect == null || previewSize == null) {
            return;
        }
        this.f33928l = framingRect;
        this.f33929m = previewSize;
    }

    @Override // com.journeyapps.barcodescanner.ViewfinderView, android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(Canvas canvas) {
        a();
        Rect rect = this.f33928l;
        if (rect == null || this.f33929m == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        this.f33917a.setColor(this.f33918b != null ? this.f33920d : this.f33919c);
        float f11 = width;
        canvas.drawRect(0.0f, 0.0f, f11, rect.top, this.f33917a);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.f33917a);
        canvas.drawRect(rect.right + 1, rect.top, f11, rect.bottom + 1, this.f33917a);
        canvas.drawRect(0.0f, rect.bottom + 1, f11, height, this.f33917a);
        this.f33917a.setColor(this.mLineColor);
        int i11 = rect.left;
        canvas.drawRect(i11, rect.top, i11 + (rect.width() * this.mLineRate), rect.top + this.mLineDepth, this.f33917a);
        int i12 = rect.left;
        int i13 = rect.top;
        canvas.drawRect(i12, i13, this.mLineDepth + i12, i13 + (rect.height() * this.mLineRate), this.f33917a);
        float fWidth = rect.right - (rect.width() * this.mLineRate);
        int i14 = rect.top;
        canvas.drawRect(fWidth, i14, rect.right, i14 + this.mLineDepth, this.f33917a);
        int i15 = rect.right;
        float f12 = i15 - this.mLineDepth;
        int i16 = rect.top;
        canvas.drawRect(f12, i16, i15, i16 + (rect.height() * this.mLineRate), this.f33917a);
        int i17 = rect.left;
        canvas.drawRect(i17, rect.bottom - this.mLineDepth, i17 + (rect.width() * this.mLineRate), rect.bottom, this.f33917a);
        canvas.drawRect(rect.left, rect.bottom - (rect.height() * this.mLineRate), rect.left + this.mLineDepth, rect.bottom, this.f33917a);
        float fWidth2 = rect.right - (rect.width() * this.mLineRate);
        int i18 = rect.bottom;
        canvas.drawRect(fWidth2, i18 - this.mLineDepth, rect.right, i18, this.f33917a);
        canvas.drawRect(rect.right - this.mLineDepth, rect.bottom - (rect.height() * this.mLineRate), rect.right, rect.bottom, this.f33917a);
        if (this.f33918b != null) {
            this.f33917a.setAlpha(160);
            canvas.drawBitmap(this.f33918b, (Rect) null, rect, this.f33917a);
        } else {
            int i19 = (int) (this.mScanLinePosition + this.mScanLineDy);
            this.mScanLinePosition = i19;
            if (i19 >= rect.height()) {
                this.mScanLinePosition = 0;
            }
            float f13 = rect.left;
            int i20 = rect.top;
            int i21 = this.mScanLinePosition;
            LinearGradient linearGradient = new LinearGradient(f13, i20 + i21, rect.right, i20 + i21, this.mScanLineColor, this.mPositions, Shader.TileMode.CLAMP);
            this.mLinearGradient = linearGradient;
            this.f33917a.setShader(linearGradient);
            float f14 = rect.left;
            int i22 = rect.top;
            int i23 = this.mScanLinePosition;
            canvas.drawRect(f14, i22 + i23, rect.right, i22 + i23 + this.mScanLineDepth, this.f33917a);
            this.f33917a.setShader(null);
        }
        postInvalidateDelayed(12L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }
}
