package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import i00.a;
import i00.b;
import j00.c;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class BezierPagerIndicator extends View implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f70361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f70362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f70363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f70364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f70365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f70366f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f70367g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f70368h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f70369i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Path f70370j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List f70371k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Interpolator f70372l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Interpolator f70373m;

    public BezierPagerIndicator(Context context) {
        super(context);
        this.f70370j = new Path();
        this.f70372l = new AccelerateInterpolator();
        this.f70373m = new DecelerateInterpolator();
        b(context);
    }

    private void a(Canvas canvas) {
        this.f70370j.reset();
        float height = (getHeight() - this.f70366f) - this.f70367g;
        this.f70370j.moveTo(this.f70365e, height);
        this.f70370j.lineTo(this.f70365e, height - this.f70364d);
        Path path = this.f70370j;
        float f11 = this.f70365e;
        float f12 = this.f70363c;
        path.quadTo(f11 + ((f12 - f11) / 2.0f), height, f12, height - this.f70362b);
        this.f70370j.lineTo(this.f70363c, this.f70362b + height);
        Path path2 = this.f70370j;
        float f13 = this.f70365e;
        path2.quadTo(((this.f70363c - f13) / 2.0f) + f13, height, f13, this.f70364d + height);
        this.f70370j.close();
        canvas.drawPath(this.f70370j, this.f70369i);
    }

    private void b(Context context) {
        Paint paint = new Paint(1);
        this.f70369i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f70367g = b.a(context, 3.5d);
        this.f70368h = b.a(context, 2.0d);
        this.f70366f = b.a(context, 1.5d);
    }

    public float getMaxCircleRadius() {
        return this.f70367g;
    }

    public float getMinCircleRadius() {
        return this.f70368h;
    }

    public float getYOffset() {
        return this.f70366f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(this.f70363c, (getHeight() - this.f70366f) - this.f70367g, this.f70362b, this.f70369i);
        canvas.drawCircle(this.f70365e, (getHeight() - this.f70366f) - this.f70367g, this.f70364d, this.f70369i);
        a(canvas);
    }

    @Override // j00.c
    public void onPageScrollStateChanged(int i11) {
    }

    @Override // j00.c
    public void onPageScrolled(int i11, float f11, int i12) {
        List list = this.f70361a;
        if (list == null || list.isEmpty()) {
            return;
        }
        List list2 = this.f70371k;
        if (list2 != null && list2.size() > 0) {
            this.f70369i.setColor(a.a(f11, ((Integer) this.f70371k.get(Math.abs(i11) % this.f70371k.size())).intValue(), ((Integer) this.f70371k.get(Math.abs(i11 + 1) % this.f70371k.size())).intValue()));
        }
        k00.a aVarF = g00.a.f(this.f70361a, i11);
        k00.a aVarF2 = g00.a.f(this.f70361a, i11 + 1);
        int i13 = aVarF.f66555a;
        float f12 = i13 + ((aVarF.f66557c - i13) / 2);
        int i14 = aVarF2.f66555a;
        float f13 = (i14 + ((aVarF2.f66557c - i14) / 2)) - f12;
        this.f70363c = (this.f70372l.getInterpolation(f11) * f13) + f12;
        this.f70365e = f12 + (f13 * this.f70373m.getInterpolation(f11));
        float f14 = this.f70367g;
        this.f70362b = f14 + ((this.f70368h - f14) * this.f70373m.getInterpolation(f11));
        float f15 = this.f70368h;
        this.f70364d = f15 + ((this.f70367g - f15) * this.f70372l.getInterpolation(f11));
        invalidate();
    }

    @Override // j00.c
    public void onPageSelected(int i11) {
    }

    @Override // j00.c
    public void onPositionDataProvide(List<k00.a> list) {
        this.f70361a = list;
    }

    public void setColors(Integer... numArr) {
        this.f70371k = Arrays.asList(numArr);
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f70373m = interpolator;
        if (interpolator == null) {
            this.f70373m = new DecelerateInterpolator();
        }
    }

    public void setMaxCircleRadius(float f11) {
        this.f70367g = f11;
    }

    public void setMinCircleRadius(float f11) {
        this.f70368h = f11;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f70372l = interpolator;
        if (interpolator == null) {
            this.f70372l = new AccelerateInterpolator();
        }
    }

    public void setYOffset(float f11) {
        this.f70366f = f11;
    }
}
