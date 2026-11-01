package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.f0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class ClockHandView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f30049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeInterpolator f30050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ValueAnimator f30051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f30052d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f30053e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f30054f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f30055g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f30056h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f30057i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f30058j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f30059k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f30060l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Paint f30061m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final RectF f30062n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f30063o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f30064p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f30065q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f30066r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double f30067s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f30068t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f30069u;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface b {
        void a(float f11, boolean z10);
    }

    public interface c {
        void d(float f11, boolean z10);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialClockStyle);
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f30051c = new ValueAnimator();
        this.f30058j = new ArrayList();
        Paint paint = new Paint();
        this.f30061m = paint;
        this.f30062n = new RectF();
        this.f30069u = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClockHandView, i11, R$style.Widget_MaterialComponents_TimePicker_Clock);
        this.f30049a = wa.j.f(context, R$attr.motionDurationLong2, 200);
        this.f30050b = wa.j.g(context, R$attr.motionEasingEmphasizedInterpolator, oa.a.f70919b);
        this.f30068t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_materialCircleRadius, 0);
        this.f30059k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.f30063o = resources.getDimensionPixelSize(R$dimen.material_clock_hand_stroke_width);
        this.f30060l = resources.getDimensionPixelSize(R$dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        q(0.0f);
        this.f30056h = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void c(float f11, float f12) {
        this.f30069u = va.a.a((float) (getWidth() / 2), (float) (getHeight() / 2), f11, f12) > ((float) i(2)) + f0.g(getContext(), 12) ? 1 : 2;
    }

    private void d(Canvas canvas) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        int i11 = i(this.f30069u);
        float f11 = width;
        float f12 = i11;
        float fCos = (((float) Math.cos(this.f30067s)) * f12) + f11;
        float f13 = height;
        float fSin = (f12 * ((float) Math.sin(this.f30067s))) + f13;
        this.f30061m.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f30059k, this.f30061m);
        double dSin = Math.sin(this.f30067s);
        double dCos = Math.cos(this.f30067s);
        double d11 = i11 - this.f30059k;
        this.f30061m.setStrokeWidth(this.f30063o);
        canvas.drawLine(f11, f13, width + ((int) (dCos * d11)), height + ((int) (d11 * dSin)), this.f30061m);
        canvas.drawCircle(f11, f13, this.f30060l, this.f30061m);
    }

    private int g(float f11, float f12) {
        int degrees = (int) Math.toDegrees(Math.atan2(f12 - (getHeight() / 2), f11 - (getWidth() / 2)));
        int i11 = degrees + 90;
        return i11 < 0 ? degrees + 450 : i11;
    }

    private int i(int i11) {
        return i11 == 2 ? Math.round(this.f30068t * 0.66f) : this.f30068t;
    }

    private Pair k(float f11) {
        float fH = h();
        if (Math.abs(fH - f11) > 180.0f) {
            if (fH > 180.0f && f11 < 180.0f) {
                f11 += 360.0f;
            }
            if (fH < 180.0f && f11 > 180.0f) {
                fH += 360.0f;
            }
        }
        return new Pair(Float.valueOf(fH), Float.valueOf(f11));
    }

    private boolean l(float f11, float f12, boolean z10, boolean z11, boolean z12) {
        float fG = g(f11, f12);
        boolean z13 = false;
        boolean z14 = h() != fG;
        if (z11 && z14) {
            return true;
        }
        if (!z14 && !z10) {
            return false;
        }
        if (z12 && this.f30052d) {
            z13 = true;
        }
        r(fG, z13);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(ValueAnimator valueAnimator) {
        s(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
    }

    private void s(float f11, boolean z10) {
        float f12 = f11 % 360.0f;
        this.f30064p = f12;
        this.f30067s = Math.toRadians(f12 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float fI = i(this.f30069u);
        float fCos = width + (((float) Math.cos(this.f30067s)) * fI);
        float fSin = height + (fI * ((float) Math.sin(this.f30067s)));
        RectF rectF = this.f30062n;
        int i11 = this.f30059k;
        rectF.set(fCos - i11, fSin - i11, fCos + i11, fSin + i11);
        Iterator it = this.f30058j.iterator();
        while (it.hasNext()) {
            ((c) it.next()).d(f12, z10);
        }
        invalidate();
    }

    public void b(c cVar) {
        this.f30058j.add(cVar);
    }

    int e() {
        return this.f30069u;
    }

    public RectF f() {
        return this.f30062n;
    }

    public float h() {
        return this.f30064p;
    }

    public int j() {
        return this.f30059k;
    }

    public void n(boolean z10) {
        this.f30052d = z10;
    }

    public void o(int i11) {
        this.f30068t = i11;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        d(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        if (this.f30051c.isRunning()) {
            return;
        }
        q(h());
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        b bVar;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked == 0) {
            this.f30053e = x10;
            this.f30054f = y10;
            this.f30055g = true;
            this.f30065q = false;
            z10 = false;
            z11 = false;
            z12 = true;
        } else if (actionMasked == 1 || actionMasked == 2) {
            int i11 = (int) (x10 - this.f30053e);
            int i12 = (int) (y10 - this.f30054f);
            this.f30055g = (i11 * i11) + (i12 * i12) > this.f30056h;
            boolean z13 = this.f30065q;
            z10 = actionMasked == 1;
            if (this.f30057i) {
                c(x10, y10);
            }
            z12 = false;
            z11 = z13;
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
        }
        boolean zL = l(x10, y10, z11, z12, z10) | this.f30065q;
        this.f30065q = zL;
        if (zL && z10 && (bVar = this.f30066r) != null) {
            bVar.a(g(x10, y10), this.f30055g);
        }
        return true;
    }

    void p(int i11) {
        this.f30069u = i11;
        invalidate();
    }

    public void q(float f11) {
        r(f11, false);
    }

    public void r(float f11, boolean z10) {
        ValueAnimator valueAnimator = this.f30051c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            s(f11, false);
            return;
        }
        Pair pairK = k(f11);
        this.f30051c.setFloatValues(((Float) pairK.first).floatValue(), ((Float) pairK.second).floatValue());
        this.f30051c.setDuration(this.f30049a);
        this.f30051c.setInterpolator(this.f30050b);
        this.f30051c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f30115a.m(valueAnimator2);
            }
        });
        this.f30051c.addListener(new a());
        this.f30051c.start();
    }

    void t(boolean z10) {
        if (this.f30057i && !z10) {
            this.f30069u = 1;
        }
        this.f30057i = z10;
        invalidate();
    }

    public void u(b bVar) {
        this.f30066r = bVar;
    }
}
