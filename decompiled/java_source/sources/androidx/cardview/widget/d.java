package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class d extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f2227a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f2229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f2230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f2231e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ColorStateList f2234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuffColorFilter f2235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f2236j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2232f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2233g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PorterDuff.Mode f2237k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f2228b = new Paint(5);

    d(ColorStateList colorStateList, float f11) {
        this.f2227a = f11;
        e(colorStateList);
        this.f2229c = new RectF();
        this.f2230d = new Rect();
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    private void e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f2234h = colorStateList;
        this.f2228b.setColor(colorStateList.getColorForState(getState(), this.f2234h.getDefaultColor()));
    }

    private void i(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f2229c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f2230d.set(rect);
        if (this.f2232f) {
            this.f2230d.inset((int) Math.ceil(e.a(this.f2231e, this.f2227a, this.f2233g)), (int) Math.ceil(e.b(this.f2231e, this.f2227a, this.f2233g)));
            this.f2229c.set(this.f2230d);
        }
    }

    public ColorStateList b() {
        return this.f2234h;
    }

    float c() {
        return this.f2231e;
    }

    public float d() {
        return this.f2227a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z10;
        Paint paint = this.f2228b;
        if (this.f2235i == null || paint.getColorFilter() != null) {
            z10 = false;
        } else {
            paint.setColorFilter(this.f2235i);
            z10 = true;
        }
        RectF rectF = this.f2229c;
        float f11 = this.f2227a;
        canvas.drawRoundRect(rectF, f11, f11, paint);
        if (z10) {
            paint.setColorFilter(null);
        }
    }

    public void f(ColorStateList colorStateList) {
        e(colorStateList);
        invalidateSelf();
    }

    void g(float f11, boolean z10, boolean z11) {
        if (f11 == this.f2231e && this.f2232f == z10 && this.f2233g == z11) {
            return;
        }
        this.f2231e = f11;
        this.f2232f = z10;
        this.f2233g = z11;
        i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f2230d, this.f2227a);
    }

    void h(float f11) {
        if (f11 == this.f2227a) {
            return;
        }
        this.f2227a = f11;
        i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f2236j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f2234h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f2234h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z10 = colorForState != this.f2228b.getColor();
        if (z10) {
            this.f2228b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f2236j;
        if (colorStateList2 == null || (mode = this.f2237k) == null) {
            return z10;
        }
        this.f2235i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f2228b.setAlpha(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2228b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f2236j = colorStateList;
        this.f2235i = a(colorStateList, this.f2237k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f2237k = mode;
        this.f2235i = a(this.f2236j, mode);
        invalidateSelf();
    }
}
