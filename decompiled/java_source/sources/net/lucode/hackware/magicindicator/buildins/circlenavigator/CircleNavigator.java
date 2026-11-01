package net.lucode.hackware.magicindicator.buildins.circlenavigator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import i00.b;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class CircleNavigator extends View implements h00.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f70327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Interpolator f70333g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f70334h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List f70335i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f70336j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f70337k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f70338l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f70339m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f70340n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f70341o;

    public interface a {
    }

    public CircleNavigator(Context context) {
        super(context);
        this.f70333g = new LinearInterpolator();
        this.f70334h = new Paint(1);
        this.f70335i = new ArrayList();
        this.f70341o = true;
        c(context);
    }

    private void a(Canvas canvas) {
        this.f70334h.setStyle(Paint.Style.STROKE);
        this.f70334h.setStrokeWidth(this.f70329c);
        int size = this.f70335i.size();
        for (int i11 = 0; i11 < size; i11++) {
            PointF pointF = (PointF) this.f70335i.get(i11);
            canvas.drawCircle(pointF.x, pointF.y, this.f70327a, this.f70334h);
        }
    }

    private void b(Canvas canvas) {
        this.f70334h.setStyle(Paint.Style.FILL);
        if (this.f70335i.size() > 0) {
            canvas.drawCircle(this.f70336j, (int) ((getHeight() / 2.0f) + 0.5f), this.f70327a, this.f70334h);
        }
    }

    private void c(Context context) {
        this.f70340n = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f70327a = b.a(context, 3.0d);
        this.f70330d = b.a(context, 8.0d);
        this.f70329c = b.a(context, 1.0d);
    }

    private int d(int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            return (this.f70327a * 2) + (this.f70329c * 2) + getPaddingTop() + getPaddingBottom();
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private int e(int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i12 = this.f70332f;
            return (this.f70329c * 2) + (this.f70327a * i12 * 2) + ((i12 - 1) * this.f70330d) + getPaddingLeft() + getPaddingRight();
        }
        if (mode != 1073741824) {
            return 0;
        }
        return size;
    }

    private void f() {
        this.f70335i.clear();
        if (this.f70332f > 0) {
            int height = (int) ((getHeight() / 2.0f) + 0.5f);
            int i11 = this.f70327a;
            int i12 = (i11 * 2) + this.f70330d;
            int paddingLeft = i11 + ((int) ((this.f70329c / 2.0f) + 0.5f)) + getPaddingLeft();
            for (int i13 = 0; i13 < this.f70332f; i13++) {
                this.f70335i.add(new PointF(paddingLeft, height));
                paddingLeft += i12;
            }
            this.f70336j = ((PointF) this.f70335i.get(this.f70331e)).x;
        }
    }

    public a getCircleClickListener() {
        return null;
    }

    public int getCircleColor() {
        return this.f70328b;
    }

    public int getCircleCount() {
        return this.f70332f;
    }

    public int getCircleSpacing() {
        return this.f70330d;
    }

    public int getRadius() {
        return this.f70327a;
    }

    public Interpolator getStartInterpolator() {
        return this.f70333g;
    }

    public int getStrokeWidth() {
        return this.f70329c;
    }

    public boolean isFollowTouch() {
        return this.f70341o;
    }

    public boolean isTouchable() {
        return this.f70337k;
    }

    @Override // h00.a
    public void notifyDataSetChanged() {
        f();
        invalidate();
    }

    @Override // h00.a
    public void onAttachToMagicIndicator() {
    }

    @Override // h00.a
    public void onDetachFromMagicIndicator() {
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f70334h.setColor(this.f70328b);
        a(canvas);
        b(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        f();
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        setMeasuredDimension(e(i11), d(i12));
    }

    @Override // h00.a
    public void onPageScrollStateChanged(int i11) {
    }

    @Override // h00.a
    public void onPageScrolled(int i11, float f11, int i12) {
        if (!this.f70341o || this.f70335i.isEmpty()) {
            return;
        }
        int iMin = Math.min(this.f70335i.size() - 1, i11);
        int iMin2 = Math.min(this.f70335i.size() - 1, i11 + 1);
        PointF pointF = (PointF) this.f70335i.get(iMin);
        PointF pointF2 = (PointF) this.f70335i.get(iMin2);
        float f12 = pointF.x;
        this.f70336j = f12 + ((pointF2.x - f12) * this.f70333g.getInterpolation(f11));
        invalidate();
    }

    @Override // h00.a
    public void onPageSelected(int i11) {
        this.f70331e = i11;
        if (this.f70341o) {
            return;
        }
        this.f70336j = ((PointF) this.f70335i.get(i11)).x;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (motionEvent.getAction() != 0 || !this.f70337k) {
            return super.onTouchEvent(motionEvent);
        }
        this.f70338l = x10;
        this.f70339m = y10;
        return true;
    }

    public void setCircleClickListener(a aVar) {
        if (this.f70337k) {
            return;
        }
        this.f70337k = true;
    }

    public void setCircleColor(int i11) {
        this.f70328b = i11;
        invalidate();
    }

    public void setCircleCount(int i11) {
        this.f70332f = i11;
    }

    public void setCircleSpacing(int i11) {
        this.f70330d = i11;
        f();
        invalidate();
    }

    public void setFollowTouch(boolean z10) {
        this.f70341o = z10;
    }

    public void setRadius(int i11) {
        this.f70327a = i11;
        f();
        invalidate();
    }

    public void setStartInterpolator(Interpolator interpolator) {
        this.f70333g = interpolator;
        if (interpolator == null) {
            this.f70333g = new LinearInterpolator();
        }
    }

    public void setStrokeWidth(int i11) {
        this.f70329c = i11;
        invalidate();
    }

    public void setTouchable(boolean z10) {
        this.f70337k = z10;
    }
}
