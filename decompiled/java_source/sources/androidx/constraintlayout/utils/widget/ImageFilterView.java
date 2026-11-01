package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f7562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f7564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f7565g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f7566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f7567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f7568j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Path f7569k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ViewOutlineProvider f7570l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    RectF f7571m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Drawable[] f7572n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    LayerDrawable f7573o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f7574p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f7575q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    float f7576r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f7577s;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = ImageFilterView.this.getWidth();
            int height = ImageFilterView.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.f7567i) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f7568j);
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float[] f7580a = new float[20];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ColorMatrix f7581b = new ColorMatrix();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ColorMatrix f7582c = new ColorMatrix();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f7583d = 1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f7584e = 1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f7585f = 1.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f7586g = 1.0f;

        c() {
        }

        private void a(float f11) {
            float[] fArr = this.f7580a;
            fArr[0] = f11;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = f11;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = f11;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void b(float f11) {
            float f12 = 1.0f - f11;
            float f13 = 0.2999f * f12;
            float f14 = 0.587f * f12;
            float f15 = f12 * 0.114f;
            float[] fArr = this.f7580a;
            fArr[0] = f13 + f11;
            fArr[1] = f14;
            fArr[2] = f15;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f13;
            fArr[6] = f14 + f11;
            fArr[7] = f15;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f13;
            fArr[11] = f14;
            fArr[12] = f15 + f11;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void d(float f11) {
            float fLog;
            float fPow;
            float fLog2;
            if (f11 <= 0.0f) {
                f11 = 0.01f;
            }
            float f12 = (5000.0f / f11) / 100.0f;
            if (f12 > 66.0f) {
                double d11 = f12 - 60.0f;
                fPow = ((float) Math.pow(d11, -0.13320475816726685d)) * 329.69873f;
                fLog = ((float) Math.pow(d11, 0.07551484555006027d)) * 288.12216f;
            } else {
                fLog = (((float) Math.log(f12)) * 99.4708f) - 161.11957f;
                fPow = 255.0f;
            }
            if (f12 < 66.0f) {
                fLog2 = f12 > 19.0f ? (((float) Math.log(f12 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f;
            } else {
                fLog2 = 255.0f;
            }
            float fMin = Math.min(255.0f, Math.max(fPow, 0.0f));
            float fMin2 = Math.min(255.0f, Math.max(fLog, 0.0f));
            float fMin3 = Math.min(255.0f, Math.max(fLog2, 0.0f));
            float fLog3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
            float fLog4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
            float fMin4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float fMin5 = Math.min(255.0f, Math.max(fLog3, 0.0f));
            float fMin6 = fMin3 / Math.min(255.0f, Math.max(fLog4, 0.0f));
            float[] fArr = this.f7580a;
            fArr[0] = fMin / fMin4;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = fMin2 / fMin5;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = fMin6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        void c(ImageView imageView) {
            boolean z10;
            this.f7581b.reset();
            float f11 = this.f7584e;
            boolean z11 = true;
            if (f11 != 1.0f) {
                b(f11);
                this.f7581b.set(this.f7580a);
                z10 = true;
            } else {
                z10 = false;
            }
            float f12 = this.f7585f;
            if (f12 != 1.0f) {
                this.f7582c.setScale(f12, f12, f12, 1.0f);
                this.f7581b.postConcat(this.f7582c);
                z10 = true;
            }
            float f13 = this.f7586g;
            if (f13 != 1.0f) {
                d(f13);
                this.f7582c.set(this.f7580a);
                this.f7581b.postConcat(this.f7582c);
                z10 = true;
            }
            float f14 = this.f7583d;
            if (f14 != 1.0f) {
                a(f14);
                this.f7582c.set(this.f7580a);
                this.f7581b.postConcat(this.f7582c);
            } else {
                z11 = z10;
            }
            if (z11) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.f7581b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.f7562d = new c();
        this.f7563e = true;
        this.f7564f = null;
        this.f7565g = null;
        this.f7566h = 0.0f;
        this.f7567i = 0.0f;
        this.f7568j = Float.NaN;
        this.f7572n = new Drawable[2];
        this.f7574p = Float.NaN;
        this.f7575q = Float.NaN;
        this.f7576r = Float.NaN;
        this.f7577s = Float.NaN;
        init(context, null);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7562d = new c();
        this.f7563e = true;
        this.f7564f = null;
        this.f7565g = null;
        this.f7566h = 0.0f;
        this.f7567i = 0.0f;
        this.f7568j = Float.NaN;
        this.f7572n = new Drawable[2];
        this.f7574p = Float.NaN;
        this.f7575q = Float.NaN;
        this.f7576r = Float.NaN;
        this.f7577s = Float.NaN;
        init(context, attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7562d = new c();
        this.f7563e = true;
        this.f7564f = null;
        this.f7565g = null;
        this.f7566h = 0.0f;
        this.f7567i = 0.0f;
        this.f7568j = Float.NaN;
        this.f7572n = new Drawable[2];
        this.f7574p = Float.NaN;
        this.f7575q = Float.NaN;
        this.f7576r = Float.NaN;
        this.f7577s = Float.NaN;
        init(context, attributeSet);
    }

    private void c() {
        if (Float.isNaN(this.f7574p) && Float.isNaN(this.f7575q) && Float.isNaN(this.f7576r) && Float.isNaN(this.f7577s)) {
            return;
        }
        float f11 = Float.isNaN(this.f7574p) ? 0.0f : this.f7574p;
        float f12 = Float.isNaN(this.f7575q) ? 0.0f : this.f7575q;
        float f13 = Float.isNaN(this.f7576r) ? 1.0f : this.f7576r;
        float f14 = Float.isNaN(this.f7577s) ? 0.0f : this.f7577s;
        Matrix matrix = new Matrix();
        matrix.reset();
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float width = getWidth();
        float height = getHeight();
        float f15 = f13 * (intrinsicWidth * height < intrinsicHeight * width ? width / intrinsicWidth : height / intrinsicHeight);
        matrix.postScale(f15, f15);
        float f16 = intrinsicWidth * f15;
        float f17 = f15 * intrinsicHeight;
        matrix.postTranslate((((f11 * (width - f16)) + width) - f16) * 0.5f, (((f12 * (height - f17)) + height) - f17) * 0.5f);
        matrix.postRotate(f14, width / 2.0f, height / 2.0f);
        setImageMatrix(matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private void d() {
        if (Float.isNaN(this.f7574p) && Float.isNaN(this.f7575q) && Float.isNaN(this.f7576r) && Float.isNaN(this.f7577s)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            c();
        }
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            this.f7564f = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.f7566h = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R$styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_brightness) {
                    setBrightness(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_overlay) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f7563e));
                } else if (index == R$styleable.ImageFilterView_imagePanX) {
                    setImagePanX(typedArrayObtainStyledAttributes.getFloat(index, this.f7574p));
                } else if (index == R$styleable.ImageFilterView_imagePanY) {
                    setImagePanY(typedArrayObtainStyledAttributes.getFloat(index, this.f7575q));
                } else if (index == R$styleable.ImageFilterView_imageRotate) {
                    setImageRotate(typedArrayObtainStyledAttributes.getFloat(index, this.f7577s));
                } else if (index == R$styleable.ImageFilterView_imageZoom) {
                    setImageZoom(typedArrayObtainStyledAttributes.getFloat(index, this.f7576r));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f7565g = drawable;
            if (this.f7564f == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f7565g = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f7572n;
                    Drawable drawableMutate = drawable2.mutate();
                    this.f7565g = drawableMutate;
                    drawableArr[0] = drawableMutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f7572n;
            Drawable drawableMutate2 = getDrawable().mutate();
            this.f7565g = drawableMutate2;
            drawableArr2[0] = drawableMutate2;
            this.f7572n[1] = this.f7564f.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f7572n);
            this.f7573o = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f7566h * 255.0f));
            if (!this.f7563e) {
                this.f7573o.getDrawable(0).setAlpha((int) ((1.0f - this.f7566h) * 255.0f));
            }
            super.setImageDrawable(this.f7573o);
        }
    }

    private void setOverlay(boolean z10) {
        this.f7563e = z10;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getBrightness() {
        return this.f7562d.f7583d;
    }

    public float getContrast() {
        return this.f7562d.f7585f;
    }

    public float getCrossfade() {
        return this.f7566h;
    }

    public float getImagePanX() {
        return this.f7574p;
    }

    public float getImagePanY() {
        return this.f7575q;
    }

    public float getImageRotate() {
        return this.f7577s;
    }

    public float getImageZoom() {
        return this.f7576r;
    }

    public float getRound() {
        return this.f7568j;
    }

    public float getRoundPercent() {
        return this.f7567i;
    }

    public float getSaturation() {
        return this.f7562d.f7584e;
    }

    public float getWarmth() {
        return this.f7562d.f7586g;
    }

    @Override // android.view.View
    public void layout(int i11, int i12, int i13, int i14) {
        super.layout(i11, i12, i13, i14);
        c();
    }

    public void setAltImageResource(int i11) {
        Drawable drawableMutate = g.a.b(getContext(), i11).mutate();
        this.f7564f = drawableMutate;
        Drawable[] drawableArr = this.f7572n;
        drawableArr[0] = this.f7565g;
        drawableArr[1] = drawableMutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7572n);
        this.f7573o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7566h);
    }

    public void setBrightness(float f11) {
        c cVar = this.f7562d;
        cVar.f7583d = f11;
        cVar.c(this);
    }

    public void setContrast(float f11) {
        c cVar = this.f7562d;
        cVar.f7585f = f11;
        cVar.c(this);
    }

    public void setCrossfade(float f11) {
        this.f7566h = f11;
        if (this.f7572n != null) {
            if (!this.f7563e) {
                this.f7573o.getDrawable(0).setAlpha((int) ((1.0f - this.f7566h) * 255.0f));
            }
            this.f7573o.getDrawable(1).setAlpha((int) (this.f7566h * 255.0f));
            super.setImageDrawable(this.f7573o);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f7564f == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.f7565g = drawableMutate;
        Drawable[] drawableArr = this.f7572n;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7564f;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7572n);
        this.f7573o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7566h);
    }

    public void setImagePanX(float f11) {
        this.f7574p = f11;
        d();
    }

    public void setImagePanY(float f11) {
        this.f7575q = f11;
        d();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i11) {
        if (this.f7564f == null) {
            super.setImageResource(i11);
            return;
        }
        Drawable drawableMutate = g.a.b(getContext(), i11).mutate();
        this.f7565g = drawableMutate;
        Drawable[] drawableArr = this.f7572n;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7564f;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7572n);
        this.f7573o = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7566h);
    }

    public void setImageRotate(float f11) {
        this.f7577s = f11;
        d();
    }

    public void setImageZoom(float f11) {
        this.f7576r = f11;
        d();
    }

    public void setRound(float f11) {
        if (Float.isNaN(f11)) {
            this.f7568j = f11;
            float f12 = this.f7567i;
            this.f7567i = -1.0f;
            setRoundPercent(f12);
            return;
        }
        boolean z10 = this.f7568j != f11;
        this.f7568j = f11;
        if (f11 != 0.0f) {
            if (this.f7569k == null) {
                this.f7569k = new Path();
            }
            if (this.f7571m == null) {
                this.f7571m = new RectF();
            }
            if (this.f7570l == null) {
                b bVar = new b();
                this.f7570l = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7571m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7569k.reset();
            Path path = this.f7569k;
            RectF rectF = this.f7571m;
            float f13 = this.f7568j;
            path.addRoundRect(rectF, f13, f13, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f11) {
        boolean z10 = this.f7567i != f11;
        this.f7567i = f11;
        if (f11 != 0.0f) {
            if (this.f7569k == null) {
                this.f7569k = new Path();
            }
            if (this.f7571m == null) {
                this.f7571m = new RectF();
            }
            if (this.f7570l == null) {
                a aVar = new a();
                this.f7570l = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7567i) / 2.0f;
            this.f7571m.set(0.0f, 0.0f, width, height);
            this.f7569k.reset();
            this.f7569k.addRoundRect(this.f7571m, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f11) {
        c cVar = this.f7562d;
        cVar.f7584e = f11;
        cVar.c(this);
    }

    public void setWarmth(float f11) {
        c cVar = this.f7562d;
        cVar.f7586g = f11;
        cVar.c(this);
    }
}
