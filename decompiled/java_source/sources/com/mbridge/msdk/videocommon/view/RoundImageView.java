package com.mbridge.msdk.videocommon.view;

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
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.widget.MBImageView;

/* JADX INFO: loaded from: classes5.dex */
public class RoundImageView extends MBImageView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f40015c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f40016d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f40017e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f40018f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Matrix f40019g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BitmapShader f40020h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f40021i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RectF f40022j;

    public RoundImageView(Context context) {
        super(context);
        this.f40019g = new Matrix();
        Paint paint = new Paint();
        this.f40017e = paint;
        paint.setAntiAlias(true);
        this.f40016d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f40015c = 1;
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40019g = new Matrix();
        Paint paint = new Paint();
        this.f40017e = paint;
        paint.setAntiAlias(true);
        this.f40016d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f40015c = 1;
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f40019g = new Matrix();
        Paint paint = new Paint();
        this.f40017e = paint;
        paint.setAntiAlias(true);
        this.f40016d = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
        this.f40015c = 1;
    }

    private Bitmap a(Drawable drawable) {
        try {
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_4444);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (Throwable th2) {
            o0.b("View", th2.getMessage());
            return null;
        }
    }

    private void b() {
        Bitmap bitmapA;
        try {
            Drawable drawable = getDrawable();
            if (drawable == null || (bitmapA = a(drawable)) == null || bitmapA.isRecycled()) {
                return;
            }
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f40020h = new BitmapShader(bitmapA, tileMode, tileMode);
            int i11 = this.f40015c;
            float fMax = 1.0f;
            if (i11 == 0) {
                fMax = (this.f40021i * 1.0f) / Math.min(bitmapA.getWidth(), bitmapA.getHeight());
            } else if (i11 == 1) {
                fMax = Math.max((getWidth() * 1.0f) / bitmapA.getWidth(), (getHeight() * 1.0f) / bitmapA.getHeight());
            }
            this.f40019g.setScale(fMax, fMax);
            this.f40020h.setLocalMatrix(this.f40019g);
            this.f40017e.setShader(this.f40020h);
        } catch (Throwable th2) {
            o0.b("RoundImageView", th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.widget.MBImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        try {
            if (getDrawable() == null) {
                return;
            }
            b();
            if (this.f40015c == 1) {
                RectF rectF = this.f40022j;
                float f11 = this.f40016d;
                canvas.drawRoundRect(rectF, f11, f11, this.f40017e);
            } else {
                float f12 = this.f40018f;
                canvas.drawCircle(f12, f12, f12, this.f40017e);
            }
        } catch (Throwable th2) {
            o0.b("RoundImageView", th2.getMessage());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (this.f40015c == 0) {
            int iMin = Math.min(getMeasuredWidth(), getMeasuredHeight());
            this.f40021i = iMin;
            this.f40018f = iMin / 2;
            setMeasuredDimension(iMin, iMin);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("state_instance"));
        this.f40015c = bundle.getInt("state_type");
        this.f40016d = bundle.getInt("state_border_radius");
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("state_instance", super.onSaveInstanceState());
        bundle.putInt("state_type", this.f40015c);
        bundle.putInt("state_border_radius", this.f40016d);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (this.f40015c == 1) {
            this.f40022j = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
    }

    public void setBorderRadius(int i11) {
        int iA = t0.a(getContext(), i11);
        if (this.f40016d != iA) {
            this.f40016d = iA;
            invalidate();
        }
    }

    public void setType(int i11) {
        if (this.f40015c != i11) {
            this.f40015c = i11;
            if (i11 != 1 && i11 != 0) {
                this.f40015c = 0;
            }
            requestLayout();
        }
    }
}
