package com.transsion.publish.view.clip;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public class ClipImageView extends BaseClipImageView implements ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {
    public static float SCALE_MAX = 4.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static float f50708t = 2.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f50709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f50710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float[] f50711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ScaleGestureDetector f50712g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Matrix f50713h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private GestureDetector f50714i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f50715j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f50716k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f50717l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f50718m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f50719n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f50720o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f50721p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f50722q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f50723r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f50724s;

    private class AutoScaleRunnable implements Runnable {
        static final float BIGGER = 1.07f;
        static final float SMALLER = 0.93f;
        private float mTargetScale;
        private float tmpScale;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private float f50725x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private float f50726y;

        public AutoScaleRunnable(float f11, float f12, float f13) {
            this.mTargetScale = f11;
            this.f50725x = f12;
            this.f50726y = f13;
            if (ClipImageView.this.getScale() < this.mTargetScale) {
                this.tmpScale = BIGGER;
            } else {
                this.tmpScale = SMALLER;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Matrix matrix = ClipImageView.this.f50713h;
            float f11 = this.tmpScale;
            matrix.postScale(f11, f11, this.f50725x, this.f50726y);
            ClipImageView.this.g();
            ClipImageView clipImageView = ClipImageView.this;
            clipImageView.setImageMatrix(clipImageView.f50713h);
            float scale = ClipImageView.this.getScale();
            float f12 = this.tmpScale;
            if ((f12 > 1.0f && scale < this.mTargetScale) || (f12 < 1.0f && this.mTargetScale < scale)) {
                ClipImageView.this.postDelayed(this, 16L);
                return;
            }
            float f13 = this.mTargetScale / scale;
            ClipImageView.this.f50713h.postScale(f13, f13, this.f50725x, this.f50726y);
            ClipImageView.this.g();
            ClipImageView clipImageView2 = ClipImageView.this;
            clipImageView2.setImageMatrix(clipImageView2.f50713h);
            ClipImageView.this.f50715j = false;
        }
    }

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (ClipImageView.this.f50715j) {
                return true;
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (ClipImageView.this.getScale() < ClipImageView.f50708t) {
                ClipImageView clipImageView = ClipImageView.this;
                clipImageView.postDelayed(clipImageView.new AutoScaleRunnable(ClipImageView.f50708t, x10, y10), 16L);
                ClipImageView.this.f50715j = true;
            } else {
                ClipImageView clipImageView2 = ClipImageView.this;
                clipImageView2.postDelayed(clipImageView2.new AutoScaleRunnable(clipImageView2.f50709d, x10, y10), 16L);
                ClipImageView.this.f50715j = true;
            }
            return true;
        }
    }

    public ClipImageView(Context context) {
        this(context, null);
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f50709d = 1.0f;
        this.f50710e = true;
        this.f50711f = new float[9];
        this.f50712g = null;
        this.f50713h = new Matrix();
        this.f50721p = 16;
        setScaleType(ImageView.ScaleType.MATRIX);
        this.f50714i = new GestureDetector(context, new a());
        this.f50712g = new ScaleGestureDetector(context, this);
        setOnTouchListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        float f11;
        RectF matrixRectF = getMatrixRectF();
        int width = getWidth();
        int height = getHeight();
        double dWidth = ((double) matrixRectF.width()) + 0.01d;
        int i11 = this.f50721p;
        float f12 = 0.0f;
        if (dWidth >= width - (i11 * 2)) {
            float f13 = matrixRectF.left;
            f11 = f13 > ((float) i11) ? (-f13) + i11 : 0.0f;
            float f14 = matrixRectF.right;
            if (f14 < width - i11) {
                f11 = (width - i11) - f14;
            }
        } else {
            f11 = 0.0f;
        }
        double dHeight = ((double) matrixRectF.height()) + 0.01d;
        int i12 = this.f50724s;
        if (dHeight >= height - (i12 * 2)) {
            float f15 = matrixRectF.top;
            f12 = f15 > ((float) i12) ? (-f15) + i12 : 0.0f;
            float f16 = matrixRectF.bottom;
            if (f16 < height - i12) {
                f12 = (height - i12) - f16;
            }
        }
        this.f50713h.postTranslate(f11, f12);
    }

    private RectF getMatrixRectF() {
        Matrix matrix = this.f50713h;
        RectF rectF = new RectF();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        return rectF;
    }

    private boolean h(float f11, float f12) {
        return Math.sqrt((double) ((f11 * f11) + (f12 * f12))) >= ((double) this.f50716k);
    }

    public Bitmap clip() {
        return clip(null);
    }

    public Bitmap clip(Rect rect) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        draw(new Canvas(bitmapCreateBitmap));
        if (rect == null) {
            return Bitmap.createBitmap(bitmapCreateBitmap, this.f50721p, this.f50724s, getWidth() - (this.f50721p * 2), getWidth() - (this.f50721p * 2));
        }
        return (rect.width() <= 0 || rect.height() <= 0) ? bitmapCreateBitmap : Bitmap.createBitmap(bitmapCreateBitmap, rect.left, rect.top, rect.width(), rect.height());
    }

    public final float getScale() {
        this.f50713h.getValues(this.f50711f);
        return this.f50711f[0];
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Drawable drawable;
        if (!this.f50710e || (drawable = getDrawable()) == null) {
            return;
        }
        if (this.f50722q == 0) {
            this.f50724s = (getHeight() - (getWidth() - (this.f50721p * 2))) / 2;
        } else {
            this.f50721p = (getWidth() - this.f50722q) / 2;
            this.f50724s = (getHeight() - this.f50723r) / 2;
        }
        float width = getWidth();
        float height = getHeight();
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        float fMax = Math.max((getWidth() - (this.f50721p * 2)) / intrinsicWidth, (getHeight() - (this.f50724s * 2)) / intrinsicHeight);
        this.f50709d = fMax;
        f50708t = fMax * 2.0f;
        SCALE_MAX = 4.0f * fMax;
        this.f50713h.postTranslate((width - intrinsicWidth) / 2.0f, (height - intrinsicHeight) / 2.0f);
        this.f50713h.postScale(fMax, fMax, getWidth() / 2, getHeight() / 2);
        setImageMatrix(this.f50713h);
        this.f50710e = false;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scale = getScale();
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (getDrawable() == null) {
            return true;
        }
        float f11 = SCALE_MAX;
        if ((scale < f11 && scaleFactor > 1.0f) || (scale > this.f50709d && scaleFactor < 1.0f)) {
            float f12 = scaleFactor * scale;
            float f13 = this.f50709d;
            if (f12 < f13) {
                scaleFactor = f13 / scale;
            }
            if (scaleFactor * scale > f11) {
                scaleFactor = f11 / scale;
            }
            this.f50713h.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            g();
            setImageMatrix(this.f50713h);
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009a  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f50714i.onTouchEvent(motionEvent)) {
            return true;
        }
        this.f50712g.onTouchEvent(motionEvent);
        int pointerCount = motionEvent.getPointerCount();
        float x10 = 0.0f;
        float y10 = 0.0f;
        for (int i11 = 0; i11 < pointerCount; i11++) {
            x10 += motionEvent.getX(i11);
            y10 += motionEvent.getY(i11);
        }
        float f11 = pointerCount;
        float f12 = x10 / f11;
        float f13 = y10 / f11;
        if (pointerCount != this.f50720o) {
            this.f50719n = false;
            this.f50717l = f12;
            this.f50718m = f13;
        }
        this.f50720o = pointerCount;
        int action = motionEvent.getAction();
        if (action == 1) {
            this.f50720o = 0;
        } else if (action == 2) {
            float f14 = f12 - this.f50717l;
            float f15 = f13 - this.f50718m;
            if (!this.f50719n) {
                this.f50719n = h(f14, f15);
            }
            if (this.f50719n && getDrawable() != null) {
                RectF matrixRectF = getMatrixRectF();
                if (matrixRectF.width() <= getWidth() - (this.f50721p * 2)) {
                    f14 = 0.0f;
                }
                this.f50713h.postTranslate(f14, matrixRectF.height() > ((float) (getHeight() - (this.f50724s * 2))) ? f15 : 0.0f);
                g();
                setImageMatrix(this.f50713h);
            }
            this.f50717l = f12;
            this.f50718m = f13;
        } else if (action == 3) {
            this.f50720o = 0;
        }
        return true;
    }

    public void setCropWH(int i11, int i12) {
        this.f50722q = i11;
        this.f50723r = i12;
    }
}
