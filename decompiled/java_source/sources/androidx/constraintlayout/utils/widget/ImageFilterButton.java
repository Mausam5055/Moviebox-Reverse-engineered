package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
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
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class ImageFilterButton extends AppCompatImageButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageFilterView.c f7544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f7545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f7546c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f7547d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Path f7548e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ViewOutlineProvider f7549f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    RectF f7550g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Drawable[] f7551h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    LayerDrawable f7552i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f7553j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f7554k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Drawable f7555l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f7556m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7557n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f7558o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f7559p;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = ImageFilterButton.this.getWidth();
            int height = ImageFilterButton.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.this.f7546c) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f7547d);
        }
    }

    public ImageFilterButton(Context context) {
        super(context);
        this.f7544a = new ImageFilterView.c();
        this.f7545b = 0.0f;
        this.f7546c = 0.0f;
        this.f7547d = Float.NaN;
        this.f7551h = new Drawable[2];
        this.f7553j = true;
        this.f7554k = null;
        this.f7555l = null;
        this.f7556m = Float.NaN;
        this.f7557n = Float.NaN;
        this.f7558o = Float.NaN;
        this.f7559p = Float.NaN;
        init(context, null);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7544a = new ImageFilterView.c();
        this.f7545b = 0.0f;
        this.f7546c = 0.0f;
        this.f7547d = Float.NaN;
        this.f7551h = new Drawable[2];
        this.f7553j = true;
        this.f7554k = null;
        this.f7555l = null;
        this.f7556m = Float.NaN;
        this.f7557n = Float.NaN;
        this.f7558o = Float.NaN;
        this.f7559p = Float.NaN;
        init(context, attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7544a = new ImageFilterView.c();
        this.f7545b = 0.0f;
        this.f7546c = 0.0f;
        this.f7547d = Float.NaN;
        this.f7551h = new Drawable[2];
        this.f7553j = true;
        this.f7554k = null;
        this.f7555l = null;
        this.f7556m = Float.NaN;
        this.f7557n = Float.NaN;
        this.f7558o = Float.NaN;
        this.f7559p = Float.NaN;
        init(context, attributeSet);
    }

    private void c() {
        if (Float.isNaN(this.f7556m) && Float.isNaN(this.f7557n) && Float.isNaN(this.f7558o) && Float.isNaN(this.f7559p)) {
            return;
        }
        float f11 = Float.isNaN(this.f7556m) ? 0.0f : this.f7556m;
        float f12 = Float.isNaN(this.f7557n) ? 0.0f : this.f7557n;
        float f13 = Float.isNaN(this.f7558o) ? 1.0f : this.f7558o;
        float f14 = Float.isNaN(this.f7559p) ? 0.0f : this.f7559p;
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
        if (Float.isNaN(this.f7556m) && Float.isNaN(this.f7557n) && Float.isNaN(this.f7558o) && Float.isNaN(this.f7559p)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            c();
        }
    }

    private void init(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            this.f7554k = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ImageFilterView_altSrc);
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ImageFilterView_crossfade) {
                    this.f7545b = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R$styleable.ImageFilterView_warmth) {
                    setWarmth(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_saturation) {
                    setSaturation(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_contrast) {
                    setContrast(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_overlay) {
                    setOverlay(typedArrayObtainStyledAttributes.getBoolean(index, this.f7553j));
                } else if (index == R$styleable.ImageFilterView_imagePanX) {
                    setImagePanX(typedArrayObtainStyledAttributes.getFloat(index, this.f7556m));
                } else if (index == R$styleable.ImageFilterView_imagePanY) {
                    setImagePanY(typedArrayObtainStyledAttributes.getFloat(index, this.f7557n));
                } else if (index == R$styleable.ImageFilterView_imageRotate) {
                    setImageRotate(typedArrayObtainStyledAttributes.getFloat(index, this.f7559p));
                } else if (index == R$styleable.ImageFilterView_imageZoom) {
                    setImageZoom(typedArrayObtainStyledAttributes.getFloat(index, this.f7558o));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.f7555l = drawable;
            if (this.f7554k == null || drawable == null) {
                Drawable drawable2 = getDrawable();
                this.f7555l = drawable2;
                if (drawable2 != null) {
                    Drawable[] drawableArr = this.f7551h;
                    Drawable drawableMutate = drawable2.mutate();
                    this.f7555l = drawableMutate;
                    drawableArr[0] = drawableMutate;
                    return;
                }
                return;
            }
            Drawable[] drawableArr2 = this.f7551h;
            Drawable drawableMutate2 = getDrawable().mutate();
            this.f7555l = drawableMutate2;
            drawableArr2[0] = drawableMutate2;
            this.f7551h[1] = this.f7554k.mutate();
            LayerDrawable layerDrawable = new LayerDrawable(this.f7551h);
            this.f7552i = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f7545b * 255.0f));
            if (!this.f7553j) {
                this.f7552i.getDrawable(0).setAlpha((int) ((1.0f - this.f7545b) * 255.0f));
            }
            super.setImageDrawable(this.f7552i);
        }
    }

    private void setOverlay(boolean z10) {
        this.f7553j = z10;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getContrast() {
        return this.f7544a.f7585f;
    }

    public float getCrossfade() {
        return this.f7545b;
    }

    public float getImagePanX() {
        return this.f7556m;
    }

    public float getImagePanY() {
        return this.f7557n;
    }

    public float getImageRotate() {
        return this.f7559p;
    }

    public float getImageZoom() {
        return this.f7558o;
    }

    public float getRound() {
        return this.f7547d;
    }

    public float getRoundPercent() {
        return this.f7546c;
    }

    public float getSaturation() {
        return this.f7544a.f7584e;
    }

    public float getWarmth() {
        return this.f7544a.f7586g;
    }

    @Override // android.view.View
    public void layout(int i11, int i12, int i13, int i14) {
        super.layout(i11, i12, i13, i14);
        c();
    }

    public void setAltImageResource(int i11) {
        Drawable drawableMutate = g.a.b(getContext(), i11).mutate();
        this.f7554k = drawableMutate;
        Drawable[] drawableArr = this.f7551h;
        drawableArr[0] = this.f7555l;
        drawableArr[1] = drawableMutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7551h);
        this.f7552i = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7545b);
    }

    public void setBrightness(float f11) {
        ImageFilterView.c cVar = this.f7544a;
        cVar.f7583d = f11;
        cVar.c(this);
    }

    public void setContrast(float f11) {
        ImageFilterView.c cVar = this.f7544a;
        cVar.f7585f = f11;
        cVar.c(this);
    }

    public void setCrossfade(float f11) {
        this.f7545b = f11;
        if (this.f7551h != null) {
            if (!this.f7553j) {
                this.f7552i.getDrawable(0).setAlpha((int) ((1.0f - this.f7545b) * 255.0f));
            }
            this.f7552i.getDrawable(1).setAlpha((int) (this.f7545b * 255.0f));
            super.setImageDrawable(this.f7552i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f7554k == null || drawable == null) {
            super.setImageDrawable(drawable);
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.f7555l = drawableMutate;
        Drawable[] drawableArr = this.f7551h;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7554k;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7551h);
        this.f7552i = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7545b);
    }

    public void setImagePanX(float f11) {
        this.f7556m = f11;
        d();
    }

    public void setImagePanY(float f11) {
        this.f7557n = f11;
        d();
    }

    @Override // androidx.appcompat.widget.AppCompatImageButton, android.widget.ImageView
    public void setImageResource(int i11) {
        if (this.f7554k == null) {
            super.setImageResource(i11);
            return;
        }
        Drawable drawableMutate = g.a.b(getContext(), i11).mutate();
        this.f7555l = drawableMutate;
        Drawable[] drawableArr = this.f7551h;
        drawableArr[0] = drawableMutate;
        drawableArr[1] = this.f7554k;
        LayerDrawable layerDrawable = new LayerDrawable(this.f7551h);
        this.f7552i = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.f7545b);
    }

    public void setImageRotate(float f11) {
        this.f7559p = f11;
        d();
    }

    public void setImageZoom(float f11) {
        this.f7558o = f11;
        d();
    }

    public void setRound(float f11) {
        if (Float.isNaN(f11)) {
            this.f7547d = f11;
            float f12 = this.f7546c;
            this.f7546c = -1.0f;
            setRoundPercent(f12);
            return;
        }
        boolean z10 = this.f7547d != f11;
        this.f7547d = f11;
        if (f11 != 0.0f) {
            if (this.f7548e == null) {
                this.f7548e = new Path();
            }
            if (this.f7550g == null) {
                this.f7550g = new RectF();
            }
            if (this.f7549f == null) {
                b bVar = new b();
                this.f7549f = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7550g.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7548e.reset();
            Path path = this.f7548e;
            RectF rectF = this.f7550g;
            float f13 = this.f7547d;
            path.addRoundRect(rectF, f13, f13, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f11) {
        boolean z10 = this.f7546c != f11;
        this.f7546c = f11;
        if (f11 != 0.0f) {
            if (this.f7548e == null) {
                this.f7548e = new Path();
            }
            if (this.f7550g == null) {
                this.f7550g = new RectF();
            }
            if (this.f7549f == null) {
                a aVar = new a();
                this.f7549f = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7546c) / 2.0f;
            this.f7550g.set(0.0f, 0.0f, width, height);
            this.f7548e.reset();
            this.f7548e.addRoundRect(this.f7550g, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f11) {
        ImageFilterView.c cVar = this.f7544a;
        cVar.f7584e = f11;
        cVar.c(this);
    }

    public void setWarmth(float f11) {
        ImageFilterView.c cVar = this.f7544a;
        cVar.f7586g = f11;
        cVar.c(this);
    }
}
