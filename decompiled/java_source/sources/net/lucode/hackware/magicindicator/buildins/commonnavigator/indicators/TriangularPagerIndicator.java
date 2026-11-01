package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import i00.b;
import j00.c;
import java.util.List;
import k00.a;

/* JADX INFO: loaded from: classes7.dex */
public class TriangularPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f70392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f70393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70397f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f70398g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f70399h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Path f70400i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Interpolator f70401j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f70402k;

    public TriangularPagerIndicator(Context context) {
        super(context);
        this.f70400i = new Path();
        this.f70401j = new LinearInterpolator();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f70393b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f70394c = b.a(context, 3.0d);
        this.f70397f = b.a(context, 14.0d);
        this.f70396e = b.a(context, 8.0d);
    }

    public int getLineColor() {
        return this.f70395d;
    }

    public int getLineHeight() {
        return this.f70394c;
    }

    public Interpolator getStartInterpolator() {
        return this.f70401j;
    }

    public int getTriangleHeight() {
        return this.f70396e;
    }

    public int getTriangleWidth() {
        return this.f70397f;
    }

    public float getYOffset() {
        return this.f70399h;
    }

    public boolean isReverse() {
        return this.f70398g;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f70393b.setColor(this.f70395d);
        if (this.f70398g) {
            canvas.drawRect(0.0f, (getHeight() - this.f70399h) - this.f70396e, getWidth(), ((getHeight() - this.f70399h) - this.f70396e) + this.f70394c, this.f70393b);
        } else {
            canvas.drawRect(0.0f, (getHeight() - this.f70394c) - this.f70399h, getWidth(), getHeight() - this.f70399h, this.f70393b);
        }
        this.f70400i.reset();
        if (this.f70398g) {
            this.f70400i.moveTo(this.f70402k - (this.f70397f / 2), (getHeight() - this.f70399h) - this.f70396e);
            this.f70400i.lineTo(this.f70402k, getHeight() - this.f70399h);
            this.f70400i.lineTo(this.f70402k + (this.f70397f / 2), (getHeight() - this.f70399h) - this.f70396e);
        } else {
            this.f70400i.moveTo(this.f70402k - (this.f70397f / 2), getHeight() - this.f70399h);
            this.f70400i.lineTo(this.f70402k, (getHeight() - this.f70396e) - this.f70399h);
            this.f70400i.lineTo(this.f70402k + (this.f70397f / 2), getHeight() - this.f70399h);
        }
        this.f70400i.close();
        canvas.drawPath(this.f70400i, this.f70393b);
    }

    @Override // j00.c
    public void onPageScrollStateChanged(int i11) {
    }

    @Override // j00.c
    public void onPageScrolled(int i11, float f11, int i12) {
        List list = this.f70392a;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarF = g00.a.f(this.f70392a, i11);
        a aVarF2 = g00.a.f(this.f70392a, i11 + 1);
        int i13 = aVarF.f66555a;
        float f12 = i13 + ((aVarF.f66557c - i13) / 2);
        int i14 = aVarF2.f66555a;
        this.f70402k = f12 + (((i14 + ((aVarF2.f66557c - i14) / 2)) - f12) * this.f70401j.getInterpolation(f11));
        invalidate();
    }

    @Override // j00.c
    public void onPageSelected(int i11) {
    }

    @Override // j00.c
    public void onPositionDataProvide(List<a> list) {
        this.f70392a = list;
    }

    public void setLineColor(int i11) {
        this.f70395d = i11;
    }

    public void setLineHeight(int i11) {
        this.f70394c = i11;
    }

    public void setReverse(boolean z10) {
        this.f70398g = z10;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f70401j = interpolator;
        if (interpolator == null) {
            this.f70401j = new LinearInterpolator();
        }
    }

    public void setTriangleHeight(int i11) {
        this.f70396e = i11;
    }

    public void setTriangleWidth(int i11) {
        this.f70397f = i11;
    }

    public void setYOffset(float f11) {
        this.f70399h = f11;
    }
}
