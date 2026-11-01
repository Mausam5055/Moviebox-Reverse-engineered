package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import i00.b;
import j00.c;
import java.util.List;
import k00.a;

/* JADX INFO: loaded from: classes7.dex */
public class WrapPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f70403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f70406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Interpolator f70407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Interpolator f70408f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f70409g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f70410h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RectF f70411i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f70412j;

    public WrapPagerIndicator(Context context) {
        super(context);
        this.f70407e = new LinearInterpolator();
        this.f70408f = new LinearInterpolator();
        this.f70411i = new RectF();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f70410h = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f70403a = b.a(context, 6.0d);
        this.f70404b = b.a(context, 10.0d);
    }

    public Interpolator getEndInterpolator() {
        return this.f70408f;
    }

    public int getFillColor() {
        return this.f70405c;
    }

    public int getHorizontalPadding() {
        return this.f70404b;
    }

    public Paint getPaint() {
        return this.f70410h;
    }

    public float getRoundRadius() {
        return this.f70406d;
    }

    public Interpolator getStartInterpolator() {
        return this.f70407e;
    }

    public int getVerticalPadding() {
        return this.f70403a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f70410h.setColor(this.f70405c);
        RectF rectF = this.f70411i;
        float f11 = this.f70406d;
        canvas.drawRoundRect(rectF, f11, f11, this.f70410h);
    }

    @Override // j00.c
    public void onPageScrollStateChanged(int i11) {
    }

    @Override // j00.c
    public void onPageScrolled(int i11, float f11, int i12) {
        List list = this.f70409g;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarF = g00.a.f(this.f70409g, i11);
        a aVarF2 = g00.a.f(this.f70409g, i11 + 1);
        RectF rectF = this.f70411i;
        int i13 = aVarF.f66559e;
        rectF.left = (i13 - this.f70404b) + ((aVarF2.f66559e - i13) * this.f70408f.getInterpolation(f11));
        RectF rectF2 = this.f70411i;
        rectF2.top = aVarF.f66560f - this.f70403a;
        int i14 = aVarF.f66561g;
        rectF2.right = this.f70404b + i14 + ((aVarF2.f66561g - i14) * this.f70407e.getInterpolation(f11));
        RectF rectF3 = this.f70411i;
        rectF3.bottom = aVarF.f66562h + this.f70403a;
        if (!this.f70412j) {
            this.f70406d = rectF3.height() / 2.0f;
        }
        invalidate();
    }

    @Override // j00.c
    public void onPageSelected(int i11) {
    }

    @Override // j00.c
    public void onPositionDataProvide(List<a> list) {
        this.f70409g = list;
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f70408f = interpolator;
        if (interpolator == null) {
            this.f70408f = new LinearInterpolator();
        }
    }

    public void setFillColor(int i11) {
        this.f70405c = i11;
    }

    public void setHorizontalPadding(int i11) {
        this.f70404b = i11;
    }

    public void setRoundRadius(float f11) {
        this.f70406d = f11;
        this.f70412j = true;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f70407e = interpolator;
        if (interpolator == null) {
            this.f70407e = new LinearInterpolator();
        }
    }

    public void setVerticalPadding(int i11) {
        this.f70403a = i11;
    }
}
