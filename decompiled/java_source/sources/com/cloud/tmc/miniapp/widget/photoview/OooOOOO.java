package com.cloud.tmc.miniapp.widget.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;

/* JADX INFO: loaded from: classes3.dex */
public class OooOOOO implements View.OnTouchListener, View.OnLayoutChangeListener {
    public final ImageView OooO;
    public GestureDetector OooOO0;
    public com.cloud.tmc.miniapp.widget.photoview.OooO00o OooOO0O;
    public com.cloud.tmc.miniapp.widget.photoview.OooO OooOOo;
    public com.cloud.tmc.miniapp.widget.photoview.OooO0OO OooOOo0;
    public com.cloud.tmc.miniapp.widget.photoview.OooO0o OooOOoo;
    public OooOO0O OooOo;
    public View.OnClickListener OooOo0;
    public OooOOO OooOo00;
    public View.OnLongClickListener OooOo0O;
    public com.cloud.tmc.miniapp.widget.photoview.OooOO0 OooOo0o;
    public OooOO0 OooOoO;
    public OooOOO0 OooOoO0;
    public Interpolator OooO00o = new AccelerateDecelerateInterpolator();
    public int OooO0O0 = 200;
    public float OooO0OO = 1.0f;
    public float OooO0Oo = 1.75f;
    public float OooO0o0 = 3.0f;
    public boolean OooO0o = true;
    public boolean OooO0oO = false;
    public boolean OooO0oo = false;
    public final Matrix OooOO0o = new Matrix();
    public final Matrix OooOOO0 = new Matrix();
    public final Matrix OooOOO = new Matrix();
    public final RectF OooOOOO = new RectF();
    public final float[] OooOOOo = new float[9];
    public int OooOoOO = 2;
    public int OooOoo0 = 2;
    public boolean OooOoo = true;
    public ImageView.ScaleType OooOooO = ImageView.ScaleType.FIT_CENTER;
    public com.cloud.tmc.miniapp.widget.photoview.OooO0O0 OooOooo = new OooO00o();

    public class OooO implements Runnable {
        public final float OooO00o;
        public final float OooO0O0;
        public final long OooO0OO = System.currentTimeMillis();
        public final float OooO0Oo;
        public final float OooO0o0;

        public OooO(float f11, float f12, float f13, float f14) {
            this.OooO00o = f13;
            this.OooO0O0 = f14;
            this.OooO0Oo = f11;
            this.OooO0o0 = f12;
        }

        @Override // java.lang.Runnable
        public void run() {
            float interpolation = OooOOOO.this.OooO00o.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.OooO0OO) * 1.0f) / OooOOOO.this.OooO0O0));
            float f11 = this.OooO0Oo;
            ((OooO00o) OooOOOO.this.OooOooo).OooO00o((((this.OooO0o0 - f11) * interpolation) + f11) / OooOOOO.this.OooO0o0(), this.OooO00o, this.OooO0O0, 0.0f, 0.0f);
            if (interpolation < 1.0f) {
                OooOOOO.this.OooO.postOnAnimation(this);
            }
        }
    }

    public class OooO00o implements com.cloud.tmc.miniapp.widget.photoview.OooO0O0 {
        public OooO00o() {
        }

        public void OooO00o(float f11, float f12, float f13, float f14, float f15) {
            float fOooO0o0 = OooOOOO.this.OooO0o0();
            OooOOOO oooOOOO = OooOOOO.this;
            if (fOooO0o0 < oooOOOO.OooO0o0 || f11 < 1.0f) {
                com.cloud.tmc.miniapp.widget.photoview.OooOO0 oooOO0 = oooOOOO.OooOo0o;
                if (oooOO0 != null) {
                    oooOO0.OooO00o(f11, f12, f13);
                }
                OooOOOO.this.OooOOO.postScale(f11, f11, f12, f13);
                OooOOOO.this.OooOOO.postTranslate(f14, f15);
                OooOOOO.this.OooO00o();
            }
        }
    }

    public class OooO0O0 extends GestureDetector.SimpleOnGestureListener {
        public OooO0O0() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f11, float f12) {
            OooOOOO oooOOOO = OooOOOO.this;
            if (oooOOOO.OooOo == null || oooOOOO.OooO0o0() > 1.0f || motionEvent.getPointerCount() > 1 || motionEvent2.getPointerCount() > 1) {
                return false;
            }
            return OooOOOO.this.OooOo.onFling(motionEvent, motionEvent2, f11, f12);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            OooOOOO oooOOOO = OooOOOO.this;
            View.OnLongClickListener onLongClickListener = oooOOOO.OooOo0O;
            if (onLongClickListener != null) {
                onLongClickListener.onLongClick(oooOOOO.OooO);
            }
        }
    }

    public class OooO0OO implements GestureDetector.OnDoubleTapListener {
        public OooO0OO() {
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0029 A[Catch: ArrayIndexOutOfBoundsException -> 0x002e, TRY_LEAVE, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x002e, blocks: (B:3:0x0001, B:5:0x0017, B:8:0x001f, B:10:0x0025, B:11:0x0029), top: B:15:0x0001 }] */
        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float fOooO0o0 = OooOOOO.this.OooO0o0();
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                OooOOOO oooOOOO = OooOOOO.this;
                float f11 = oooOOOO.OooO0Oo;
                if (fOooO0o0 < f11) {
                    oooOOOO.OooO00o(f11, x10, y10, true);
                } else if (fOooO0o0 >= f11) {
                    float f12 = oooOOOO.OooO0o0;
                    if (fOooO0o0 < f12) {
                        oooOOOO.OooO00o(f12, x10, y10, true);
                    } else {
                        oooOOOO.OooO00o(oooOOOO.OooO0OO, x10, y10, true);
                    }
                } else {
                    oooOOOO.OooO00o(oooOOOO.OooO0OO, x10, y10, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            OooOOOO oooOOOO = OooOOOO.this;
            View.OnClickListener onClickListener = oooOOOO.OooOo0;
            if (onClickListener != null) {
                onClickListener.onClick(oooOOOO.OooO);
            }
            RectF rectFOooO0OO = OooOOOO.this.OooO0OO();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            OooOOOO oooOOOO2 = OooOOOO.this;
            OooOOO oooOOO = oooOOOO2.OooOo00;
            if (oooOOO != null) {
                oooOOO.OooO00o(oooOOOO2.OooO, x10, y10);
            }
            if (rectFOooO0OO == null) {
                return false;
            }
            if (!rectFOooO0OO.contains(x10, y10)) {
                OooOOOO oooOOOO3 = OooOOOO.this;
                com.cloud.tmc.miniapp.widget.photoview.OooO0o oooO0o = oooOOOO3.OooOOoo;
                if (oooO0o == null) {
                    return false;
                }
                oooO0o.OooO00o(oooOOOO3.OooO);
                return false;
            }
            float fWidth = (x10 - rectFOooO0OO.left) / rectFOooO0OO.width();
            float fHeight = (y10 - rectFOooO0OO.top) / rectFOooO0OO.height();
            OooOOOO oooOOOO4 = OooOOOO.this;
            com.cloud.tmc.miniapp.widget.photoview.OooO oooO = oooOOOO4.OooOOo;
            if (oooO == null) {
                return true;
            }
            oooO.OooO00o(oooOOOO4.OooO, fWidth, fHeight);
            return true;
        }
    }

    public static /* synthetic */ class OooO0o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            OooO00o = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class OooOO0 implements Runnable {
        public final OverScroller OooO00o;
        public int OooO0O0;
        public int OooO0OO;

        public OooOO0(Context context) {
            this.OooO00o = new OverScroller(context);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.OooO00o.isFinished() && this.OooO00o.computeScrollOffset()) {
                int currX = this.OooO00o.getCurrX();
                int currY = this.OooO00o.getCurrY();
                OooOOOO.this.OooOOO.postTranslate(this.OooO0O0 - currX, this.OooO0OO - currY);
                OooOOOO.this.OooO00o();
                this.OooO0O0 = currX;
                this.OooO0OO = currY;
                OooOOOO.this.OooO.postOnAnimation(this);
            }
        }
    }

    public OooOOOO(ImageView imageView) {
        this.OooO = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.OooOO0O = new com.cloud.tmc.miniapp.widget.photoview.OooO00o(imageView.getContext(), this.OooOooo);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new OooO0O0());
        this.OooOO0 = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new OooO0OO());
    }

    public final int OooO00o(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    public final RectF OooO00o(Matrix matrix) {
        Drawable drawable = this.OooO.getDrawable();
        if (drawable == null) {
            return null;
        }
        this.OooOOOO.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        matrix.mapRect(this.OooOOOO);
        return this.OooOOOO;
    }

    public final void OooO00o() {
        RectF rectFOooO00o;
        if (OooO0O0()) {
            Matrix matrixOooO0Oo = OooO0Oo();
            this.OooO.setImageMatrix(matrixOooO0Oo);
            if (this.OooOOo0 == null || (rectFOooO00o = OooO00o(matrixOooO0Oo)) == null) {
                return;
            }
            this.OooOOo0.OooO00o(rectFOooO00o);
        }
    }

    public void OooO00o(float f11, float f12, float f13, boolean z10) {
        if (f11 < this.OooO0OO || f11 > this.OooO0o0) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z10) {
            this.OooO.post(new OooO(OooO0o0(), f11, f12, f13));
        } else {
            this.OooOOO.setScale(f11, f11, f12, f13);
            OooO00o();
        }
    }

    public final void OooO00o(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float fOooO0O0 = OooO0O0(this.OooO);
        float fOooO00o = OooO00o(this.OooO);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.OooOO0o.reset();
        float f11 = intrinsicWidth;
        float f12 = fOooO0O0 / f11;
        float f13 = intrinsicHeight;
        float f14 = fOooO00o / f13;
        ImageView.ScaleType scaleType = this.OooOooO;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.OooOO0o.postTranslate((fOooO0O0 - f11) / 2.0f, (fOooO00o - f13) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float fMax = Math.max(f12, f14);
            this.OooOO0o.postScale(fMax, fMax);
            this.OooOO0o.postTranslate((fOooO0O0 - (f11 * fMax)) / 2.0f, (fOooO00o - (f13 * fMax)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float fMin = Math.min(1.0f, Math.min(f12, f14));
            this.OooOO0o.postScale(fMin, fMin);
            this.OooOO0o.postTranslate((fOooO0O0 - (f11 * fMin)) / 2.0f, (fOooO00o - (f13 * fMin)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f11, f13);
            RectF rectF2 = new RectF(0.0f, 0.0f, fOooO0O0, fOooO00o);
            if (((int) 0.0f) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f13, f11);
            }
            int i11 = OooO0o.OooO00o[this.OooOooO.ordinal()];
            if (i11 == 1) {
                this.OooOO0o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i11 == 2) {
                this.OooOO0o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i11 == 3) {
                this.OooOO0o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i11 == 4) {
                this.OooOO0o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        OooO0o();
    }

    public final int OooO0O0(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    public final boolean OooO0O0() {
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        RectF rectFOooO00o = OooO00o(OooO0Oo());
        if (rectFOooO00o == null) {
            return false;
        }
        float fHeight = rectFOooO00o.height();
        float fWidth = rectFOooO00o.width();
        float fOooO00o = OooO00o(this.OooO);
        float f16 = 0.0f;
        if (fHeight <= fOooO00o) {
            int i11 = OooO0o.OooO00o[this.OooOooO.ordinal()];
            if (i11 != 2) {
                if (i11 != 3) {
                    f14 = (fOooO00o - fHeight) / 2.0f;
                    f15 = rectFOooO00o.top;
                } else {
                    f14 = fOooO00o - fHeight;
                    f15 = rectFOooO00o.top;
                }
                f11 = f14 - f15;
            } else {
                f11 = -rectFOooO00o.top;
            }
            this.OooOoo0 = 2;
        } else {
            float f17 = rectFOooO00o.top;
            if (f17 > 0.0f) {
                this.OooOoo0 = 0;
                f11 = -f17;
            } else {
                float f18 = rectFOooO00o.bottom;
                if (f18 < fOooO00o) {
                    this.OooOoo0 = 1;
                    f11 = fOooO00o - f18;
                } else {
                    this.OooOoo0 = -1;
                    f11 = 0.0f;
                }
            }
        }
        float fOooO0O0 = OooO0O0(this.OooO);
        if (fWidth <= fOooO0O0) {
            int i12 = OooO0o.OooO00o[this.OooOooO.ordinal()];
            if (i12 != 2) {
                if (i12 != 3) {
                    f12 = (fOooO0O0 - fWidth) / 2.0f;
                    f13 = rectFOooO00o.left;
                } else {
                    f12 = fOooO0O0 - fWidth;
                    f13 = rectFOooO00o.left;
                }
                f16 = f12 - f13;
            } else {
                f16 = -rectFOooO00o.left;
            }
            this.OooOoOO = 2;
        } else {
            float f19 = rectFOooO00o.left;
            if (f19 > 0.0f) {
                this.OooOoOO = 0;
                f16 = -f19;
            } else {
                float f20 = rectFOooO00o.right;
                if (f20 < fOooO0O0) {
                    f16 = fOooO0O0 - f20;
                    this.OooOoOO = 1;
                } else {
                    this.OooOoOO = -1;
                }
            }
        }
        this.OooOOO.postTranslate(f16, f11);
        return true;
    }

    public RectF OooO0OO() {
        OooO0O0();
        return OooO00o(OooO0Oo());
    }

    public final Matrix OooO0Oo() {
        this.OooOOO0.set(this.OooOO0o);
        this.OooOOO0.postConcat(this.OooOOO);
        return this.OooOOO0;
    }

    public final void OooO0o() {
        RectF rectFOooO00o;
        this.OooOOO.reset();
        this.OooOOO.postRotate(0.0f);
        OooO00o();
        Matrix matrixOooO0Oo = OooO0Oo();
        this.OooO.setImageMatrix(matrixOooO0Oo);
        if (this.OooOOo0 != null && (rectFOooO00o = OooO00o(matrixOooO0Oo)) != null) {
            this.OooOOo0.OooO00o(rectFOooO00o);
        }
        OooO0O0();
    }

    public float OooO0o0() {
        this.OooOOO.getValues(this.OooOOOo);
        float fPow = (float) Math.pow(this.OooOOOo[0], 2.0d);
        this.OooOOO.getValues(this.OooOOOo);
        return (float) Math.sqrt(fPow + ((float) Math.pow(this.OooOOOo[3], 2.0d)));
    }

    public void OooO0oO() {
        if (this.OooOoo) {
            OooO00o(this.OooO.getDrawable());
        } else {
            OooO0o();
        }
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        if (i11 == i15 && i12 == i16 && i13 == i17 && i14 == i18) {
            return;
        }
        OooO00o(this.OooO.getDrawable());
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:56:0x00cf  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        com.cloud.tmc.miniapp.widget.photoview.OooO00o oooO00o;
        GestureDetector gestureDetector;
        boolean zIsInProgress;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        RectF rectFOooO0OO;
        if (!this.OooOoo || ((ImageView) view).getDrawable() == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                if (OooO0o0() < this.OooO0OO) {
                    RectF rectFOooO0OO2 = OooO0OO();
                    if (rectFOooO0OO2 != null) {
                        view.post(new OooO(OooO0o0(), this.OooO0OO, rectFOooO0OO2.centerX(), rectFOooO0OO2.centerY()));
                        z10 = true;
                    }
                } else if (OooO0o0() > this.OooO0o0 && (rectFOooO0OO = OooO0OO()) != null) {
                    view.post(new OooO(OooO0o0(), this.OooO0o0, rectFOooO0OO.centerX(), rectFOooO0OO.centerY()));
                    z10 = true;
                }
            }
            oooO00o = this.OooOO0O;
            if (oooO00o != null) {
                zIsInProgress = oooO00o.OooO0OO.isInProgress();
                com.cloud.tmc.miniapp.widget.photoview.OooO00o oooO00o2 = this.OooOO0O;
                z11 = oooO00o2.OooO0o0;
                try {
                    oooO00o2.OooO0OO.onTouchEvent(motionEvent);
                    oooO00o2.OooO0OO(motionEvent);
                } catch (IllegalArgumentException unused) {
                }
                if (!zIsInProgress || this.OooOO0O.OooO0OO.isInProgress()) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                if (!z11 || this.OooOO0O.OooO0o0) {
                    z13 = false;
                } else {
                    z13 = true;
                }
                if (z12 || !z13) {
                    z14 = false;
                } else {
                    z14 = true;
                }
                this.OooO0oO = z14;
                z10 = true;
            }
            gestureDetector = this.OooOO0;
            if (gestureDetector != null && gestureDetector.onTouchEvent(motionEvent)) {
                z10 = true;
            }
            this.OooO0oo = motionEvent.getPointerCount() > 1;
            return z10;
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        OooOO0 oooOO0 = this.OooOoO;
        if (oooOO0 != null) {
            oooOO0.OooO00o.forceFinished(true);
            this.OooOoO = null;
        }
        z10 = false;
        oooO00o = this.OooOO0O;
        if (oooO00o != null) {
            zIsInProgress = oooO00o.OooO0OO.isInProgress();
            com.cloud.tmc.miniapp.widget.photoview.OooO00o oooO00o3 = this.OooOO0O;
            z11 = oooO00o3.OooO0o0;
            oooO00o3.OooO0OO.onTouchEvent(motionEvent);
            oooO00o3.OooO0OO(motionEvent);
            if (zIsInProgress) {
                z12 = false;
            } else {
                z12 = false;
            }
            if (z11) {
                z13 = false;
            } else {
                z13 = false;
            }
            if (z12) {
                z14 = false;
            } else {
                z14 = false;
            }
            this.OooO0oO = z14;
            z10 = true;
        }
        gestureDetector = this.OooOO0;
        if (gestureDetector != null) {
            z10 = true;
        }
        this.OooO0oo = motionEvent.getPointerCount() > 1;
        return z10;
    }
}
