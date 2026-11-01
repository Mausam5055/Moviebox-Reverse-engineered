package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import i00.a;
import i00.b;
import j00.c;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class LinePagerIndicator extends View implements c {
    public static final int MODE_EXACTLY = 2;
    public static final int MODE_MATCH_EDGE = 0;
    public static final int MODE_WRAP_CONTENT = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f70374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Interpolator f70375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f70376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f70377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f70378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f70379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f70380g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f70381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f70382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List f70383j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List f70384k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private RectF f70385l;

    public LinePagerIndicator(Context context) {
        super(context);
        this.f70375b = new LinearInterpolator();
        this.f70376c = new LinearInterpolator();
        this.f70385l = new RectF();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f70382i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f70378e = b.a(context, 3.0d);
        this.f70380g = b.a(context, 10.0d);
    }

    public List<Integer> getColors() {
        return this.f70384k;
    }

    public Interpolator getEndInterpolator() {
        return this.f70376c;
    }

    public float getLineHeight() {
        return this.f70378e;
    }

    public float getLineWidth() {
        return this.f70380g;
    }

    public int getMode() {
        return this.f70374a;
    }

    public Paint getPaint() {
        return this.f70382i;
    }

    public float getRoundRadius() {
        return this.f70381h;
    }

    public Interpolator getStartInterpolator() {
        return this.f70375b;
    }

    public float getXOffset() {
        return this.f70379f;
    }

    public float getYOffset() {
        return this.f70377d;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.f70385l;
        float f11 = this.f70381h;
        canvas.drawRoundRect(rectF, f11, f11, this.f70382i);
    }

    @Override // j00.c
    public void onPageScrollStateChanged(int i11) {
    }

    @Override // j00.c
    public void onPageScrolled(int i11, float f11, int i12) {
        float fB;
        float fB2;
        float fB3;
        float f12;
        float f13;
        int i13;
        List list = this.f70383j;
        if (list == null || list.isEmpty()) {
            return;
        }
        List list2 = this.f70384k;
        if (list2 != null && list2.size() > 0) {
            this.f70382i.setColor(a.a(f11, ((Integer) this.f70384k.get(Math.abs(i11) % this.f70384k.size())).intValue(), ((Integer) this.f70384k.get(Math.abs(i11 + 1) % this.f70384k.size())).intValue()));
        }
        k00.a aVarF = g00.a.f(this.f70383j, i11);
        k00.a aVarF2 = g00.a.f(this.f70383j, i11 + 1);
        int i14 = this.f70374a;
        if (i14 != 0) {
            if (i14 == 1) {
                float f14 = aVarF.f66559e;
                f13 = this.f70379f;
                fB = f14 + f13;
                f12 = aVarF2.f66559e + f13;
                fB2 = aVarF.f66561g - f13;
                i13 = aVarF2.f66561g;
            } else {
                fB = aVarF.f66555a + ((aVarF.b() - this.f70380g) / 2.0f);
                float fB4 = aVarF2.f66555a + ((aVarF2.b() - this.f70380g) / 2.0f);
                fB2 = ((aVarF.b() + this.f70380g) / 2.0f) + aVarF.f66555a;
                fB3 = ((aVarF2.b() + this.f70380g) / 2.0f) + aVarF2.f66555a;
                f12 = fB4;
            }
            this.f70385l.left = fB + ((f12 - fB) * this.f70375b.getInterpolation(f11));
            this.f70385l.right = fB2 + ((fB3 - fB2) * this.f70376c.getInterpolation(f11));
            this.f70385l.top = (getHeight() - this.f70378e) - this.f70377d;
            this.f70385l.bottom = getHeight() - this.f70377d;
            invalidate();
        }
        float f15 = aVarF.f66555a;
        f13 = this.f70379f;
        fB = f15 + f13;
        f12 = aVarF2.f66555a + f13;
        fB2 = aVarF.f66557c - f13;
        i13 = aVarF2.f66557c;
        fB3 = i13 - f13;
        this.f70385l.left = fB + ((f12 - fB) * this.f70375b.getInterpolation(f11));
        this.f70385l.right = fB2 + ((fB3 - fB2) * this.f70376c.getInterpolation(f11));
        this.f70385l.top = (getHeight() - this.f70378e) - this.f70377d;
        this.f70385l.bottom = getHeight() - this.f70377d;
        invalidate();
    }

    @Override // j00.c
    public void onPageSelected(int i11) {
    }

    @Override // j00.c
    public void onPositionDataProvide(List<k00.a> list) {
        this.f70383j = list;
    }

    public void setColors(Integer... numArr) {
        this.f70384k = Arrays.asList(numArr);
    }

    public void setEndInterpolator(Interpolator interpolator) {
        this.f70376c = interpolator;
        if (interpolator == null) {
            this.f70376c = new LinearInterpolator();
        }
    }

    public void setLineHeight(float f11) {
        this.f70378e = f11;
    }

    public void setLineWidth(float f11) {
        this.f70380g = f11;
    }

    public void setMode(int i11) {
        if (i11 == 2 || i11 == 0 || i11 == 1) {
            this.f70374a = i11;
            return;
        }
        throw new IllegalArgumentException("mode " + i11 + " not supported.");
    }

    public void setRoundRadius(float f11) {
        this.f70381h = f11;
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f70375b = interpolator;
        if (interpolator == null) {
            this.f70375b = new LinearInterpolator();
        }
    }

    public void setXOffset(float f11) {
        this.f70379f = f11;
    }

    public void setYOffset(float f11) {
        this.f70377d = f11;
    }
}
