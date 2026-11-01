package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class g extends Drawable implements Animatable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Property f29454o = new c(Float.class, "growFraction");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f29455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.google.android.material.progressindicator.b f29456b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ValueAnimator f29458d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f29459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f29460f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f29461g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f29462h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List f29463i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.vectordrawable.graphics.drawable.b f29464j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f29465k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f29466l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f29468n;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final Paint f29467m = new Paint();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.google.android.material.progressindicator.a f29457c = new com.google.android.material.progressindicator.a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            g.this.f();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            g.super.setVisible(false, false);
            g.this.e();
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(g gVar) {
            return Float.valueOf(gVar.h());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(g gVar, Float f11) {
            gVar.n(f11.floatValue());
        }
    }

    g(Context context, com.google.android.material.progressindicator.b bVar) {
        this.f29455a = context;
        this.f29456b = bVar;
        setAlpha(255);
    }

    private void d(ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f29465k;
        this.f29465k = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.cancel();
        }
        this.f29465k = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        androidx.vectordrawable.graphics.drawable.b bVar = this.f29464j;
        if (bVar != null) {
            bVar.onAnimationEnd(this);
        }
        List list = this.f29463i;
        if (list == null || this.f29465k) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((androidx.vectordrawable.graphics.drawable.b) it.next()).onAnimationEnd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        androidx.vectordrawable.graphics.drawable.b bVar = this.f29464j;
        if (bVar != null) {
            bVar.onAnimationStart(this);
        }
        List list = this.f29463i;
        if (list == null || this.f29465k) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((androidx.vectordrawable.graphics.drawable.b) it.next()).onAnimationStart(this);
        }
    }

    private void g(ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f29465k;
        this.f29465k = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f29465k = z10;
    }

    private void l() {
        if (this.f29458d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<g, Float>) f29454o, 0.0f, 1.0f);
            this.f29458d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f29458d.setInterpolator(oa.a.f70919b);
            p(this.f29458d);
        }
        if (this.f29459e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<g, Float>) f29454o, 1.0f, 0.0f);
            this.f29459e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f29459e.setInterpolator(oa.a.f70919b);
            o(this.f29459e);
        }
    }

    private void o(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f29459e;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f29459e = valueAnimator;
        valueAnimator.addListener(new b());
    }

    private void p(ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f29458d;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f29458d = valueAnimator;
        valueAnimator.addListener(new a());
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f29468n;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    float h() {
        if (this.f29456b.b() || this.f29456b.a()) {
            return (this.f29461g || this.f29460f) ? this.f29462h : this.f29466l;
        }
        return 1.0f;
    }

    public boolean i() {
        return q(false, false, false);
    }

    public boolean isRunning() {
        return k() || j();
    }

    public boolean j() {
        ValueAnimator valueAnimator = this.f29459e;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f29461g;
    }

    public boolean k() {
        ValueAnimator valueAnimator = this.f29458d;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f29460f;
    }

    public void m(androidx.vectordrawable.graphics.drawable.b bVar) {
        if (this.f29463i == null) {
            this.f29463i = new ArrayList();
        }
        if (this.f29463i.contains(bVar)) {
            return;
        }
        this.f29463i.add(bVar);
    }

    void n(float f11) {
        if (this.f29466l != f11) {
            this.f29466l = f11;
            invalidateSelf();
        }
    }

    public boolean q(boolean z10, boolean z11, boolean z12) {
        return r(z10, z11, z12 && this.f29457c.a(this.f29455a.getContentResolver()) > 0.0f);
    }

    boolean r(boolean z10, boolean z11, boolean z12) {
        l();
        if (!isVisible() && !z10) {
            return false;
        }
        ValueAnimator valueAnimator = z10 ? this.f29458d : this.f29459e;
        ValueAnimator valueAnimator2 = z10 ? this.f29459e : this.f29458d;
        if (!z12) {
            if (valueAnimator2.isRunning()) {
                d(valueAnimator2);
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                g(valueAnimator);
            }
            return super.setVisible(z10, false);
        }
        if (valueAnimator.isRunning()) {
            return false;
        }
        boolean z13 = !z10 || super.setVisible(z10, false);
        if (!(z10 ? this.f29456b.b() : this.f29456b.a())) {
            g(valueAnimator);
            return z13;
        }
        if (z11 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z13;
    }

    public boolean s(androidx.vectordrawable.graphics.drawable.b bVar) {
        List list = this.f29463i;
        if (list == null || !list.contains(bVar)) {
            return false;
        }
        this.f29463i.remove(bVar);
        if (!this.f29463i.isEmpty()) {
            return true;
        }
        this.f29463i = null;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f29468n = i11;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f29467m.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        return q(z10, z11, true);
    }

    public void start() {
        r(true, true, false);
    }

    public void stop() {
        r(false, true, false);
    }
}
