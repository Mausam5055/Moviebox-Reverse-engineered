package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes3.dex */
public class uvD extends com.bytedance.sdk.openadsdk.core.HiB.EjP {
    private final Matrix EjP;
    private final RectF HiB;
    private final Paint Sj;
    private int TKC;
    private int sP;
    private BitmapShader vS;

    public uvD(Context context) {
        this(context, null);
    }

    public uvD(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public uvD(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.sP = 25;
        this.TKC = 25;
        this.HiB = new RectF();
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        this.EjP = new Matrix();
    }

    private Bitmap Sj(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth() <= 0 ? getWidth() : drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight() <= 0 ? getHeight() : drawable.getIntrinsicHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmapSj;
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onDraw(canvas);
            return;
        }
        if (this.vS == null && (bitmapSj = Sj(drawable)) != null) {
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.vS = new BitmapShader(bitmapSj, tileMode, tileMode);
            float fMax = (bitmapSj.getWidth() == getWidth() && bitmapSj.getHeight() == getHeight()) ? 1.0f : Math.max((getWidth() * 1.0f) / bitmapSj.getWidth(), (getHeight() * 1.0f) / bitmapSj.getHeight());
            this.EjP.setScale(fMax, fMax);
            this.vS.setLocalMatrix(this.EjP);
        }
        BitmapShader bitmapShader = this.vS;
        if (bitmapShader == null) {
            super.onDraw(canvas);
        } else {
            this.Sj.setShader(bitmapShader);
            canvas.drawRoundRect(this.HiB, this.sP, this.TKC, this.Sj);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.HiB.set(0.0f, 0.0f, i11, i12);
    }

    public void setXRound(int i11) {
        this.sP = i11;
        postInvalidate();
    }

    public void setYRound(int i11) {
        this.TKC = i11;
        postInvalidate();
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        super.unscheduleDrawable(drawable);
        this.vS = null;
    }
}
