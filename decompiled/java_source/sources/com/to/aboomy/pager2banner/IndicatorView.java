package com.to.aboomy.pager2banner;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class IndicatorView extends View implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Interpolator f41731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Interpolator f41732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Path f41733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f41734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f41735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f41736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f41737g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f41738h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Paint f41739i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final RectF f41740j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RelativeLayout.LayoutParams f41741k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f41742l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f41743m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f41744n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f41745o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f41746p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f41747q;

    public IndicatorView(Context context) {
        this(context, null);
    }

    public IndicatorView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IndicatorView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41731a = new DecelerateInterpolator();
        this.f41737g = -7829368;
        this.f41738h = -1;
        this.f41743m = a(3.5f);
        this.f41744n = 1.0f;
        this.f41745o = a(3.5f);
        this.f41746p = 1.0f;
        this.f41747q = a(10.0f);
        this.f41740j = new RectF();
        this.f41739i = new Paint(1);
    }

    private int a(float f11) {
        return (int) (f11 * getContext().getResources().getDisplayMetrics().density);
    }

    private void b(Canvas canvas, float f11) {
        g(canvas, f11);
        if (this.f41733c == null) {
            this.f41733c = new Path();
        }
        if (this.f41732b == null) {
            this.f41732b = new AccelerateInterpolator();
        }
        float fH = h(this.f41735e);
        float fH2 = h((this.f41735e + 1) % this.f41736f) - fH;
        float interpolation = (this.f41732b.getInterpolation(this.f41734d) * fH2) + fH;
        float fI = fH + (fH2 * i());
        float ratioSelectedRadius = getRatioSelectedRadius();
        float f12 = this.f41745o * 0.57f;
        float f13 = this.f41746p * f12;
        float fI2 = ((f13 - ratioSelectedRadius) * i()) + ratioSelectedRadius;
        float interpolation2 = f13 + ((ratioSelectedRadius - f13) * this.f41732b.getInterpolation(this.f41734d));
        float fI3 = (this.f41745o - f12) * i();
        float interpolation3 = (this.f41745o - f12) * this.f41732b.getInterpolation(this.f41734d);
        this.f41739i.setColor(this.f41738h);
        float f14 = this.f41745o;
        this.f41740j.set(interpolation - fI2, (f11 - f14) + fI3, interpolation + fI2, (f14 + f11) - fI3);
        canvas.drawRoundRect(this.f41740j, fI2, fI2, this.f41739i);
        float f15 = (f11 - f12) - interpolation3;
        float f16 = f12 + f11 + interpolation3;
        this.f41740j.set(fI - interpolation2, f15, fI + interpolation2, f16);
        canvas.drawRoundRect(this.f41740j, interpolation2, interpolation2, this.f41739i);
        this.f41733c.reset();
        this.f41733c.moveTo(fI, f11);
        this.f41733c.lineTo(fI, f15);
        float f17 = ((interpolation - fI) / 2.0f) + fI;
        this.f41733c.quadTo(f17, f11, interpolation, (f11 - this.f41745o) + fI3);
        this.f41733c.lineTo(interpolation, (this.f41745o + f11) - fI3);
        this.f41733c.quadTo(f17, f11, fI, f16);
        this.f41733c.close();
        canvas.drawPath(this.f41733c, this.f41739i);
    }

    private void c(Canvas canvas, float f11) {
        g(canvas, f11);
        float fI = i();
        float fH = h(this.f41735e);
        float fH2 = h((this.f41735e + 1) % this.f41736f);
        float ratioRadius = getRatioRadius();
        float f12 = this.f41745o;
        float f13 = this.f41746p * f12;
        float f14 = (f13 - ratioRadius) * fI;
        float f15 = f13 - f14;
        float f16 = ratioRadius + f14;
        float f17 = (f12 - this.f41743m) * fI;
        this.f41739i.setColor(this.f41738h);
        if (fI < 0.99f) {
            RectF rectF = this.f41740j;
            rectF.set(fH - f15, (f11 - f12) + f17, fH + f15, (f12 + f11) - f17);
            canvas.drawRoundRect(this.f41740j, f15, f15, this.f41739i);
        }
        if (fI > 0.1f) {
            float f18 = this.f41743m;
            float f19 = f11 + f18 + f17;
            RectF rectF2 = this.f41740j;
            rectF2.set(fH2 - f16, (f11 - f18) - f17, fH2 + f16, f19);
            canvas.drawRoundRect(this.f41740j, f16, f16, this.f41739i);
        }
    }

    private void d(Canvas canvas, float f11) {
        g(canvas, f11);
        float fH = h(this.f41735e);
        float fH2 = h((this.f41735e + 1) % this.f41736f);
        float ratioSelectedRadius = getRatioSelectedRadius();
        float f12 = fH - ratioSelectedRadius;
        float f13 = fH + ratioSelectedRadius;
        float f14 = fH2 - ratioSelectedRadius;
        float fI = f12 + ((f14 - f12) * i());
        float fI2 = f13 + (((fH2 + ratioSelectedRadius) - f13) * i());
        RectF rectF = this.f41740j;
        float f15 = this.f41745o;
        rectF.set(fI, f11 - f15, fI2, f11 + f15);
        this.f41739i.setColor(this.f41738h);
        RectF rectF2 = this.f41740j;
        float f16 = this.f41745o;
        canvas.drawRoundRect(rectF2, f16, f16, this.f41739i);
    }

    private void e(Canvas canvas, float f11) {
        float fMax;
        float fMin;
        g(canvas, f11);
        float fH = h(this.f41735e);
        float ratioSelectedRadius = getRatioSelectedRadius();
        float f12 = fH - ratioSelectedRadius;
        float f13 = fH + ratioSelectedRadius;
        float fI = i();
        float fMax2 = this.f41747q + (Math.max(getRatioRadius(), ratioSelectedRadius) * 2.0f);
        int i11 = this.f41735e;
        if ((i11 + 1) % this.f41736f == 0) {
            float f14 = fMax2 * (-i11);
            fMax = f12 + Math.max(f14 * fI * 2.0f, f14);
            fMin = Math.min(f14 * (fI - 0.5f) * 2.0f, 0.0f);
        } else {
            fMax = f12 + Math.max((fI - 0.5f) * fMax2 * 2.0f, 0.0f);
            fMin = Math.min(fI * fMax2 * 2.0f, fMax2);
        }
        float f15 = f13 + fMin;
        RectF rectF = this.f41740j;
        float f16 = this.f41745o;
        rectF.set(fMax, f11 - f16, f15, f11 + f16);
        this.f41739i.setColor(this.f41738h);
        RectF rectF2 = this.f41740j;
        float f17 = this.f41745o;
        canvas.drawRoundRect(rectF2, f17, f17, this.f41739i);
    }

    private void f(Canvas canvas, float f11) {
        float fI = i();
        float ratioSelectedRadius = getRatioSelectedRadius();
        float ratioRadius = getRatioRadius();
        float f12 = ratioSelectedRadius - ratioRadius;
        float f13 = f12 * fI;
        int i11 = (this.f41735e + 1) % this.f41736f;
        boolean z10 = i11 == 0;
        this.f41739i.setColor(this.f41737g);
        for (int i12 = 0; i12 < this.f41736f; i12++) {
            float fH = h(i12);
            if (z10) {
                fH += f13;
            }
            float f14 = fH - ratioRadius;
            float f15 = this.f41743m;
            float f16 = f11 - f15;
            float f17 = fH + ratioRadius;
            float f18 = f11 + f15;
            if (this.f41735e + 1 <= i12) {
                this.f41740j.set(f14 + f12, f16, f17 + f12, f18);
            } else {
                this.f41740j.set(f14, f16, f17, f18);
            }
            RectF rectF = this.f41740j;
            float f19 = this.f41743m;
            canvas.drawRoundRect(rectF, f19, f19, this.f41739i);
        }
        this.f41739i.setColor(this.f41738h);
        if (fI < 0.99f) {
            float fH2 = h(this.f41735e) - ratioSelectedRadius;
            if (z10) {
                fH2 += f13;
            }
            RectF rectF2 = this.f41740j;
            float f20 = this.f41745o;
            rectF2.set(fH2, f11 - f20, (((ratioSelectedRadius * 2.0f) + fH2) + f12) - f13, f11 + f20);
            RectF rectF3 = this.f41740j;
            float f21 = this.f41745o;
            canvas.drawRoundRect(rectF3, f21, f21, this.f41739i);
        }
        if (fI > 0.1f) {
            float fH3 = h(i11) + ratioSelectedRadius;
            if (z10) {
                f12 = f13;
            }
            float f22 = fH3 + f12;
            RectF rectF4 = this.f41740j;
            float f23 = this.f41745o;
            rectF4.set((f22 - (ratioSelectedRadius * 2.0f)) - f13, f11 - f23, f22, f11 + f23);
            RectF rectF5 = this.f41740j;
            float f24 = this.f41745o;
            canvas.drawRoundRect(rectF5, f24, f24, this.f41739i);
        }
    }

    private void g(Canvas canvas, float f11) {
        this.f41739i.setColor(this.f41737g);
        for (int i11 = 0; i11 < this.f41736f; i11++) {
            float fH = h(i11);
            float ratioRadius = getRatioRadius();
            float f12 = this.f41743m;
            this.f41740j.set(fH - ratioRadius, f11 - f12, fH + ratioRadius, f12 + f11);
            RectF rectF = this.f41740j;
            float f13 = this.f41743m;
            canvas.drawRoundRect(rectF, f13, f13, this.f41739i);
        }
    }

    private float getRatioRadius() {
        return this.f41743m * this.f41744n;
    }

    private float getRatioSelectedRadius() {
        return this.f41745o * this.f41746p;
    }

    private float h(int i11) {
        float ratioRadius = getRatioRadius();
        float fMax = Math.max(ratioRadius, getRatioSelectedRadius());
        return getPaddingLeft() + fMax + (((fMax * 2.0f) + this.f41747q) * i11) + (this.f41742l == 3 ? 0.0f : (fMax - ratioRadius) / 2.0f);
    }

    private float i() {
        return this.f41731a.getInterpolation(this.f41734d);
    }

    private int j(int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            return (int) ((Math.max(getRatioSelectedRadius(), getRatioRadius()) * 2.0f) + getPaddingTop() + getPaddingBottom());
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private int k(int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode != Integer.MIN_VALUE && mode != 0) {
            if (mode != 1073741824) {
                return 0;
            }
            return size;
        }
        float ratioSelectedRadius = getRatioSelectedRadius();
        float ratioRadius = getRatioRadius();
        float fMax = Math.max(ratioSelectedRadius, ratioRadius) * 2.0f;
        int i12 = this.f41736f;
        return (int) ((fMax * i12) + ((i12 - 1) * this.f41747q) + (ratioSelectedRadius - ratioRadius) + getPaddingLeft() + getPaddingRight());
    }

    @Override // com.to.aboomy.pager2banner.a
    public RelativeLayout.LayoutParams getParams() {
        if (this.f41741k == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            this.f41741k = layoutParams;
            layoutParams.addRule(12);
            this.f41741k.addRule(14);
            this.f41741k.bottomMargin = a(10.0f);
        }
        return this.f41741k;
    }

    @Override // com.to.aboomy.pager2banner.a
    public View getView() {
        return this;
    }

    @Override // com.to.aboomy.pager2banner.a
    public void initIndicatorCount(int i11, int i12) {
        this.f41736f = i11;
        setVisibility(i11 > 1 ? 0 : 8);
        requestLayout();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f41736f == 0) {
            return;
        }
        float height = (getHeight() / 2.0f) + 0.5f;
        int i11 = this.f41742l;
        if (i11 == 0) {
            d(canvas, height);
            return;
        }
        if (i11 == 1) {
            e(canvas, height);
            return;
        }
        if (i11 == 2) {
            b(canvas, height);
        } else if (i11 == 3) {
            f(canvas, height);
        } else if (i11 == 4) {
            c(canvas, height);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        setMeasuredDimension(k(i11), j(i12));
    }

    @Override // com.to.aboomy.pager2banner.a
    public void onPageScrollStateChanged(int i11) {
    }

    @Override // com.to.aboomy.pager2banner.a
    public void onPageScrolled(int i11, float f11, int i12) {
        this.f41735e = i11;
        this.f41734d = f11;
        invalidate();
    }

    @Override // com.to.aboomy.pager2banner.a
    public void onPageSelected(int i11) {
    }

    public IndicatorView setIndicatorColor(int i11) {
        this.f41737g = i11;
        return this;
    }

    public IndicatorView setIndicatorRadius(float f11) {
        int iA = a(f11);
        if (this.f41743m == this.f41745o) {
            this.f41745o = iA;
        }
        this.f41743m = iA;
        return this;
    }

    public IndicatorView setIndicatorRatio(float f11) {
        if (this.f41744n == this.f41746p) {
            this.f41746p = f11;
        }
        this.f41744n = f11;
        return this;
    }

    public IndicatorView setIndicatorSelectedRadius(float f11) {
        this.f41745o = a(f11);
        return this;
    }

    public IndicatorView setIndicatorSelectedRatio(float f11) {
        this.f41746p = f11;
        return this;
    }

    public IndicatorView setIndicatorSelectorColor(int i11) {
        this.f41738h = i11;
        return this;
    }

    public IndicatorView setIndicatorSpacing(float f11) {
        this.f41747q = a(f11);
        return this;
    }

    public IndicatorView setIndicatorStyle(int i11) {
        this.f41742l = i11;
        return this;
    }

    public IndicatorView setParams(RelativeLayout.LayoutParams layoutParams) {
        this.f41741k = layoutParams;
        return this;
    }
}
