package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.util.i;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public class b extends Drawable implements Animatable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Interpolator f14951g = new LinearInterpolator();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Interpolator f14952h = new o1.b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f14953i = {ViewCompat.MEASURED_STATE_MASK};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f14954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f14955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Resources f14956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Animator f14957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f14958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f14959f;

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f14960a;

        a(c cVar) {
            this.f14960a = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            b.this.n(fFloatValue, this.f14960a);
            b.this.b(fFloatValue, this.f14960a, false);
            b.this.invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: androidx.swiperefreshlayout.widget.b$b, reason: collision with other inner class name */
    class C0124b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f14962a;

        C0124b(c cVar) {
            this.f14962a = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            b.this.b(1.0f, this.f14962a, true);
            this.f14962a.A();
            this.f14962a.l();
            b bVar = b.this;
            if (!bVar.f14959f) {
                bVar.f14958e += 1.0f;
                return;
            }
            bVar.f14959f = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f14962a.x(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.f14958e = 0.0f;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final RectF f14964a = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Paint f14965b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Paint f14966c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Paint f14967d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f14968e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f14969f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f14970g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float f14971h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int[] f14972i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f14973j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f14974k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f14975l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        float f14976m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f14977n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Path f14978o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f14979p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        float f14980q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f14981r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f14982s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f14983t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f14984u;

        c() {
            Paint paint = new Paint();
            this.f14965b = paint;
            Paint paint2 = new Paint();
            this.f14966c = paint2;
            Paint paint3 = new Paint();
            this.f14967d = paint3;
            this.f14968e = 0.0f;
            this.f14969f = 0.0f;
            this.f14970g = 0.0f;
            this.f14971h = 5.0f;
            this.f14979p = 1.0f;
            this.f14983t = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        void A() {
            this.f14974k = this.f14968e;
            this.f14975l = this.f14969f;
            this.f14976m = this.f14970g;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f14964a;
            float f11 = this.f14980q;
            float fMin = (this.f14971h / 2.0f) + f11;
            if (f11 <= 0.0f) {
                fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f14981r * this.f14979p) / 2.0f, this.f14971h / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, rect.centerY() + fMin);
            float f12 = this.f14968e;
            float f13 = this.f14970g;
            float f14 = (f12 + f13) * 360.0f;
            float f15 = ((this.f14969f + f13) * 360.0f) - f14;
            this.f14965b.setColor(this.f14984u);
            this.f14965b.setAlpha(this.f14983t);
            float f16 = this.f14971h / 2.0f;
            rectF.inset(f16, f16);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f14967d);
            float f17 = -f16;
            rectF.inset(f17, f17);
            canvas.drawArc(rectF, f14, f15, false, this.f14965b);
            b(canvas, f14, f15, rectF);
        }

        void b(Canvas canvas, float f11, float f12, RectF rectF) {
            if (this.f14977n) {
                Path path = this.f14978o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f14978o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f13 = (this.f14981r * this.f14979p) / 2.0f;
                this.f14978o.moveTo(0.0f, 0.0f);
                this.f14978o.lineTo(this.f14981r * this.f14979p, 0.0f);
                Path path3 = this.f14978o;
                float f14 = this.f14981r;
                float f15 = this.f14979p;
                path3.lineTo((f14 * f15) / 2.0f, this.f14982s * f15);
                this.f14978o.offset((fMin + rectF.centerX()) - f13, rectF.centerY() + (this.f14971h / 2.0f));
                this.f14978o.close();
                this.f14966c.setColor(this.f14984u);
                this.f14966c.setAlpha(this.f14983t);
                canvas.save();
                canvas.rotate(f11 + f12, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f14978o, this.f14966c);
                canvas.restore();
            }
        }

        int c() {
            return this.f14983t;
        }

        float d() {
            return this.f14969f;
        }

        int e() {
            return this.f14972i[f()];
        }

        int f() {
            return (this.f14973j + 1) % this.f14972i.length;
        }

        float g() {
            return this.f14968e;
        }

        int h() {
            return this.f14972i[this.f14973j];
        }

        float i() {
            return this.f14975l;
        }

        float j() {
            return this.f14976m;
        }

        float k() {
            return this.f14974k;
        }

        void l() {
            t(f());
        }

        void m() {
            this.f14974k = 0.0f;
            this.f14975l = 0.0f;
            this.f14976m = 0.0f;
            y(0.0f);
            v(0.0f);
            w(0.0f);
        }

        void n(int i11) {
            this.f14983t = i11;
        }

        void o(float f11, float f12) {
            this.f14981r = (int) f11;
            this.f14982s = (int) f12;
        }

        void p(float f11) {
            if (f11 != this.f14979p) {
                this.f14979p = f11;
            }
        }

        void q(float f11) {
            this.f14980q = f11;
        }

        void r(int i11) {
            this.f14984u = i11;
        }

        void s(ColorFilter colorFilter) {
            this.f14965b.setColorFilter(colorFilter);
        }

        void t(int i11) {
            this.f14973j = i11;
            this.f14984u = this.f14972i[i11];
        }

        void u(int[] iArr) {
            this.f14972i = iArr;
            t(0);
        }

        void v(float f11) {
            this.f14969f = f11;
        }

        void w(float f11) {
            this.f14970g = f11;
        }

        void x(boolean z10) {
            if (this.f14977n != z10) {
                this.f14977n = z10;
            }
        }

        void y(float f11) {
            this.f14968e = f11;
        }

        void z(float f11) {
            this.f14971h = f11;
            this.f14965b.setStrokeWidth(f11);
        }
    }

    public b(Context context) {
        this.f14956c = ((Context) i.g(context)).getResources();
        c cVar = new c();
        this.f14954a = cVar;
        cVar.u(f14953i);
        k(2.5f);
        m();
    }

    private void a(float f11, c cVar) {
        n(f11, cVar);
        float fFloor = (float) (Math.floor(cVar.j() / 0.8f) + 1.0d);
        cVar.y(cVar.k() + (((cVar.i() - 0.01f) - cVar.k()) * f11));
        cVar.v(cVar.i());
        cVar.w(cVar.j() + ((fFloor - cVar.j()) * f11));
    }

    private int c(float f11, int i11, int i12) {
        int i13 = (i11 >> 24) & 255;
        int i14 = (i11 >> 16) & 255;
        int i15 = (i11 >> 8) & 255;
        int i16 = i11 & 255;
        return ((i13 + ((int) ((((i12 >> 24) & 255) - i13) * f11))) << 24) | ((i14 + ((int) ((((i12 >> 16) & 255) - i14) * f11))) << 16) | ((i15 + ((int) ((((i12 >> 8) & 255) - i15) * f11))) << 8) | (i16 + ((int) (f11 * ((i12 & 255) - i16))));
    }

    private void h(float f11) {
        this.f14955b = f11;
    }

    private void i(float f11, float f12, float f13, float f14) {
        c cVar = this.f14954a;
        float f15 = this.f14956c.getDisplayMetrics().density;
        cVar.z(f12 * f15);
        cVar.q(f11 * f15);
        cVar.t(0);
        cVar.o(f13 * f15, f14 * f15);
    }

    private void m() {
        c cVar = this.f14954a;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new a(cVar));
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(f14951g);
        valueAnimatorOfFloat.addListener(new C0124b(cVar));
        this.f14957d = valueAnimatorOfFloat;
    }

    void b(float f11, c cVar, boolean z10) {
        float interpolation;
        float interpolation2;
        if (this.f14959f) {
            a(f11, cVar);
            return;
        }
        if (f11 != 1.0f || z10) {
            float fJ = cVar.j();
            if (f11 < 0.5f) {
                interpolation = cVar.k();
                interpolation2 = (f14952h.getInterpolation(f11 / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float fK = cVar.k() + 0.79f;
                interpolation = fK - (((1.0f - f14952h.getInterpolation((f11 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation2 = fK;
            }
            float f12 = fJ + (0.20999998f * f11);
            float f13 = (f11 + this.f14958e) * 216.0f;
            cVar.y(interpolation);
            cVar.v(interpolation2);
            cVar.w(f12);
            h(f13);
        }
    }

    public void d(boolean z10) {
        this.f14954a.x(z10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f14955b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f14954a.a(canvas, bounds);
        canvas.restore();
    }

    public void e(float f11) {
        this.f14954a.p(f11);
        invalidateSelf();
    }

    public void f(int... iArr) {
        this.f14954a.u(iArr);
        this.f14954a.t(0);
        invalidateSelf();
    }

    public void g(float f11) {
        this.f14954a.w(f11);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f14954a.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f14957d.isRunning();
    }

    public void j(float f11, float f12) {
        this.f14954a.y(f11);
        this.f14954a.v(f12);
        invalidateSelf();
    }

    public void k(float f11) {
        this.f14954a.z(f11);
        invalidateSelf();
    }

    public void l(int i11) {
        if (i11 == 0) {
            i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    void n(float f11, c cVar) {
        if (f11 > 0.75f) {
            cVar.r(c((f11 - 0.75f) / 0.25f, cVar.h(), cVar.e()));
        } else {
            cVar.r(cVar.h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f14954a.n(i11);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f14954a.s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f14957d.cancel();
        this.f14954a.A();
        if (this.f14954a.d() != this.f14954a.g()) {
            this.f14959f = true;
            this.f14957d.setDuration(666L);
            this.f14957d.start();
        } else {
            this.f14954a.t(0);
            this.f14954a.m();
            this.f14957d.setDuration(1332L);
            this.f14957d.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f14957d.cancel();
        h(0.0f);
        this.f14954a.x(false);
        this.f14954a.t(0);
        this.f14954a.m();
        invalidateSelf();
    }
}
