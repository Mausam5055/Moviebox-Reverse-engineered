package com.google.android.material.floatingactionbutton;

import ab.n;
import ab.o;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes4.dex */
class c extends Drawable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f28989b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f28995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f28997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f28998k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f28999l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f29000m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private n f29002o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ColorStateList f29003p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f28988a = o.k();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f28990c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f28991d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f28992e = new RectF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f28993f = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f28994g = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f29001n = true;

    private class b extends Drawable.ConstantState {
        private b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return c.this;
        }
    }

    c(n nVar) {
        this.f29002o = nVar;
        Paint paint = new Paint(1);
        this.f28989b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    private Shader a() {
        Rect rect = this.f28991d;
        copyBounds(rect);
        float fHeight = this.f28995h / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{z0.b.k(this.f28996i, this.f29000m), z0.b.k(this.f28997j, this.f29000m), z0.b.k(z0.b.p(this.f28997j, 0), this.f29000m), z0.b.k(z0.b.p(this.f28999l, 0), this.f29000m), z0.b.k(this.f28999l, this.f29000m), z0.b.k(this.f28998k, this.f29000m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    protected RectF b() {
        this.f28993f.set(getBounds());
        return this.f28993f;
    }

    void c(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f29000m = colorStateList.getColorForState(getState(), this.f29000m);
        }
        this.f29003p = colorStateList;
        this.f29001n = true;
        invalidateSelf();
    }

    public void d(float f11) {
        if (this.f28995h != f11) {
            this.f28995h = f11;
            this.f28989b.setStrokeWidth(f11 * 1.3333f);
            this.f29001n = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f29001n) {
            this.f28989b.setShader(a());
            this.f29001n = false;
        }
        float strokeWidth = this.f28989b.getStrokeWidth() / 2.0f;
        copyBounds(this.f28991d);
        this.f28992e.set(this.f28991d);
        float fMin = Math.min(this.f29002o.r().a(b()), this.f28992e.width() / 2.0f);
        if (this.f29002o.u(b())) {
            this.f28992e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f28992e, fMin, fMin, this.f28989b);
        }
    }

    void e(int i11, int i12, int i13, int i14) {
        this.f28996i = i11;
        this.f28997j = i12;
        this.f28998k = i13;
        this.f28999l = i14;
    }

    public void f(n nVar) {
        this.f29002o = nVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f28994g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f28995h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f29002o.u(b())) {
            outline.setRoundRect(getBounds(), this.f29002o.r().a(b()));
        } else {
            copyBounds(this.f28991d);
            this.f28992e.set(this.f28991d);
            this.f28988a.e(this.f29002o, 1.0f, this.f28992e, this.f28990c);
            com.google.android.material.drawable.d.l(outline, this.f28990c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (!this.f29002o.u(b())) {
            return true;
        }
        int iRound = Math.round(this.f28995h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f29003p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f29001n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f29003p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f29000m)) != this.f29000m) {
            this.f29001n = true;
            this.f29000m = colorForState;
        }
        if (this.f29001n) {
            invalidateSelf();
        }
        return this.f29001n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f28989b.setAlpha(i11);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f28989b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
