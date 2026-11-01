package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;

/* JADX INFO: loaded from: classes4.dex */
final class l extends i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Property f29486i = new b(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f29487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o1.b f29488d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f29489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29490f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f29491g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f29492h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            l lVar = l.this;
            lVar.f29490f = (lVar.f29490f + 1) % l.this.f29489e.f29420c.length;
            l.this.f29491g = true;
        }
    }

    class b extends Property {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(l lVar) {
            return Float.valueOf(lVar.n());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(l lVar, Float f11) {
            lVar.r(f11.floatValue());
        }
    }

    public l(n nVar) {
        super(3);
        this.f29490f = 1;
        this.f29489e = nVar;
        this.f29488d = new o1.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float n() {
        return this.f29492h;
    }

    private void o() {
        if (this.f29487c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<l, Float>) f29486i, 0.0f, 1.0f);
            this.f29487c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.f29487c.setInterpolator(null);
            this.f29487c.setRepeatCount(-1);
            this.f29487c.addListener(new a());
        }
    }

    private void p() {
        if (!this.f29491g || ((h.a) this.f29477b.get(1)).f29473b >= 1.0f) {
            return;
        }
        ((h.a) this.f29477b.get(2)).f29474c = ((h.a) this.f29477b.get(1)).f29474c;
        ((h.a) this.f29477b.get(1)).f29474c = ((h.a) this.f29477b.get(0)).f29474c;
        ((h.a) this.f29477b.get(0)).f29474c = this.f29489e.f29420c[this.f29490f];
        this.f29491g = false;
    }

    private void s(int i11) {
        ((h.a) this.f29477b.get(0)).f29472a = 0.0f;
        float fB = b(i11, 0, 667);
        h.a aVar = (h.a) this.f29477b.get(0);
        h.a aVar2 = (h.a) this.f29477b.get(1);
        float interpolation = this.f29488d.getInterpolation(fB);
        aVar2.f29472a = interpolation;
        aVar.f29473b = interpolation;
        h.a aVar3 = (h.a) this.f29477b.get(1);
        h.a aVar4 = (h.a) this.f29477b.get(2);
        float interpolation2 = this.f29488d.getInterpolation(fB + 0.49925038f);
        aVar4.f29472a = interpolation2;
        aVar3.f29473b = interpolation2;
        ((h.a) this.f29477b.get(2)).f29473b = 1.0f;
    }

    @Override // com.google.android.material.progressindicator.i
    public void a() {
        ObjectAnimator objectAnimator = this.f29487c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.i
    public void c() {
        q();
    }

    @Override // com.google.android.material.progressindicator.i
    public void d(androidx.vectordrawable.graphics.drawable.b bVar) {
    }

    @Override // com.google.android.material.progressindicator.i
    public void f() {
    }

    @Override // com.google.android.material.progressindicator.i
    public void g() {
        o();
        q();
        this.f29487c.start();
    }

    @Override // com.google.android.material.progressindicator.i
    public void h() {
    }

    void q() {
        this.f29491g = true;
        this.f29490f = 1;
        for (h.a aVar : this.f29477b) {
            com.google.android.material.progressindicator.b bVar = this.f29489e;
            aVar.f29474c = bVar.f29420c[0];
            aVar.f29475d = bVar.f29424g / 2;
        }
    }

    void r(float f11) {
        this.f29492h = f11;
        s((int) (f11 * 333.0f));
        p();
        this.f29476a.invalidateSelf();
    }
}
