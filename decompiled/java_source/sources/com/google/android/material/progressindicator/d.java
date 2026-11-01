package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;

/* JADX INFO: loaded from: classes4.dex */
final class d extends i {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f29430k = {0, 1350, 2700, 4050};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int[] f29431l = {667, 2017, 3367, 4717};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int[] f29432m = {1000, 2350, 3700, 5050};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Property f29433n = new c(Float.class, "animationFraction");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Property f29434o = new C0399d(Float.class, "completeEndFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f29435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ObjectAnimator f29436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o1.b f29437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f29438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f29440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f29441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    androidx.vectordrawable.graphics.drawable.b f29442j;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            d dVar = d.this;
            dVar.f29439g = (dVar.f29439g + 4) % d.this.f29438f.f29420c.length;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            d.this.a();
            d dVar = d.this;
            androidx.vectordrawable.graphics.drawable.b bVar = dVar.f29442j;
            if (bVar != null) {
                bVar.onAnimationEnd(dVar.f29476a);
            }
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(d dVar) {
            return Float.valueOf(dVar.o());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, Float f11) {
            dVar.t(f11.floatValue());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.d$d, reason: collision with other inner class name */
    class C0399d extends Property {
        C0399d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(d dVar) {
            return Float.valueOf(dVar.p());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, Float f11) {
            dVar.u(f11.floatValue());
        }
    }

    public d(e eVar) {
        super(1);
        this.f29439g = 0;
        this.f29442j = null;
        this.f29438f = eVar;
        this.f29437e = new o1.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float o() {
        return this.f29440h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float p() {
        return this.f29441i;
    }

    private void q() {
        if (this.f29435c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<d, Float>) f29433n, 0.0f, 1.0f);
            this.f29435c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.f29435c.setInterpolator(null);
            this.f29435c.setRepeatCount(-1);
            this.f29435c.addListener(new a());
        }
        if (this.f29436d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<d, Float>) f29434o, 0.0f, 1.0f);
            this.f29436d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.f29436d.setInterpolator(this.f29437e);
            this.f29436d.addListener(new b());
        }
    }

    private void r(int i11) {
        for (int i12 = 0; i12 < 4; i12++) {
            float fB = b(i11, f29432m[i12], 333);
            if (fB >= 0.0f && fB <= 1.0f) {
                int i13 = i12 + this.f29439g;
                int[] iArr = this.f29438f.f29420c;
                int length = i13 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                int i14 = iArr[length];
                int i15 = iArr[length2];
                ((h.a) this.f29477b.get(0)).f29474c = oa.c.b().evaluate(this.f29437e.getInterpolation(fB), Integer.valueOf(i14), Integer.valueOf(i15)).intValue();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(float f11) {
        this.f29441i = f11;
    }

    private void v(int i11) {
        h.a aVar = (h.a) this.f29477b.get(0);
        float f11 = this.f29440h;
        aVar.f29472a = (f11 * 1520.0f) - 20.0f;
        aVar.f29473b = f11 * 1520.0f;
        for (int i12 = 0; i12 < 4; i12++) {
            aVar.f29473b += this.f29437e.getInterpolation(b(i11, f29430k[i12], 667)) * 250.0f;
            aVar.f29472a += this.f29437e.getInterpolation(b(i11, f29431l[i12], 667)) * 250.0f;
        }
        float f12 = aVar.f29472a;
        float f13 = aVar.f29473b;
        aVar.f29472a = (f12 + ((f13 - f12) * this.f29441i)) / 360.0f;
        aVar.f29473b = f13 / 360.0f;
    }

    @Override // com.google.android.material.progressindicator.i
    void a() {
        ObjectAnimator objectAnimator = this.f29435c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.i
    public void c() {
        s();
    }

    @Override // com.google.android.material.progressindicator.i
    public void d(androidx.vectordrawable.graphics.drawable.b bVar) {
        this.f29442j = bVar;
    }

    @Override // com.google.android.material.progressindicator.i
    void f() {
        ObjectAnimator objectAnimator = this.f29436d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f29476a.isVisible()) {
            this.f29436d.start();
        } else {
            a();
        }
    }

    @Override // com.google.android.material.progressindicator.i
    void g() {
        q();
        s();
        this.f29435c.start();
    }

    @Override // com.google.android.material.progressindicator.i
    public void h() {
        this.f29442j = null;
    }

    void s() {
        this.f29439g = 0;
        ((h.a) this.f29477b.get(0)).f29474c = this.f29438f.f29420c[0];
        this.f29441i = 0.0f;
    }

    void t(float f11) {
        this.f29440h = f11;
        int i11 = (int) (f11 * 5400.0f);
        v(i11);
        r(i11);
        this.f29476a.invalidateSelf();
    }
}
