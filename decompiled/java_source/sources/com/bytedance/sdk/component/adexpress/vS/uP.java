package com.bytedance.sdk.component.adexpress.vS;

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
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class uP extends ImageView {
    private Matrix EjP;
    private Paint Sj;
    private int TKC;
    private int sP;

    public uP(Context context) {
        this(context, null);
    }

    public uP(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public uP(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.sP = 25;
        this.TKC = 25;
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setAntiAlias(true);
        this.Sj.setFilterBitmap(true);
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
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onDraw(canvas);
            return;
        }
        Bitmap bitmapSj = Sj(drawable);
        if (bitmapSj == null) {
            super.onDraw(canvas);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(bitmapSj, tileMode, tileMode);
        float fMax = (bitmapSj.getWidth() == getWidth() && bitmapSj.getHeight() == getHeight()) ? 1.0f : Math.max((getWidth() * 1.0f) / bitmapSj.getWidth(), (getHeight() * 1.0f) / bitmapSj.getHeight());
        this.EjP.setScale(fMax, fMax);
        bitmapShader.setLocalMatrix(this.EjP);
        this.Sj.setShader(bitmapShader);
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.sP, this.TKC, this.Sj);
    }

    public void setXRound(int i11) {
        this.sP = i11;
        postInvalidate();
    }

    public void setYRound(int i11) {
        this.TKC = i11;
        postInvalidate();
    }
}
