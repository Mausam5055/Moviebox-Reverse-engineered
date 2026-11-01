package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import com.google.android.material.R$anim;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class m extends i {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f29494k = {533, 567, 850, 750};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int[] f29495l = {1267, 1000, 333, 0};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Property f29496m = new c(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f29497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ObjectAnimator f29498d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Interpolator[] f29499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f29500f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29501g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29502h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f29503i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    androidx.vectordrawable.graphics.drawable.b f29504j;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            m mVar = m.this;
            mVar.f29501g = (mVar.f29501g + 1) % m.this.f29500f.f29420c.length;
            m.this.f29502h = true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            m.this.a();
            m mVar = m.this;
            androidx.vectordrawable.graphics.drawable.b bVar = mVar.f29504j;
            if (bVar != null) {
                bVar.onAnimationEnd(mVar.f29476a);
            }
        }
    }

    class c extends Property {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(m mVar) {
            return Float.valueOf(mVar.n());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(m mVar, Float f11) {
            mVar.r(f11.floatValue());
        }
    }

    public m(Context context, n nVar) {
        super(2);
        this.f29501g = 0;
        this.f29504j = null;
        this.f29500f = nVar;
        this.f29499e = new Interpolator[]{androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line1_head_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line1_tail_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line2_head_interpolator), androidx.vectordrawable.graphics.drawable.d.a(context, R$anim.linear_indeterminate_line2_tail_interpolator)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float n() {
        return this.f29503i;
    }

    private void o() {
        if (this.f29497c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<m, Float>) f29496m, 0.0f, 1.0f);
            this.f29497c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.f29497c.setInterpolator(null);
            this.f29497c.setRepeatCount(-1);
            this.f29497c.addListener(new a());
        }
        if (this.f29498d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<m, Float>) f29496m, 1.0f);
            this.f29498d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.f29498d.setInterpolator(null);
            this.f29498d.addListener(new b());
        }
    }

    private void p() {
        if (this.f29502h) {
            Iterator it = this.f29477b.iterator();
            while (it.hasNext()) {
                ((h.a) it.next()).f29474c = this.f29500f.f29420c[this.f29501g];
            }
            this.f29502h = false;
        }
    }

    private void s(int i11) {
        for (int i12 = 0; i12 < this.f29477b.size(); i12++) {
            h.a aVar = (h.a) this.f29477b.get(i12);
            int[] iArr = f29495l;
            int i13 = i12 * 2;
            int i14 = iArr[i13];
            int[] iArr2 = f29494k;
            aVar.f29472a = d1.a.a(this.f29499e[i13].getInterpolation(b(i11, i14, iArr2[i13])), 0.0f, 1.0f);
            int i15 = i13 + 1;
            aVar.f29473b = d1.a.a(this.f29499e[i15].getInterpolation(b(i11, iArr[i15], iArr2[i15])), 0.0f, 1.0f);
        }
    }

    @Override // com.google.android.material.progressindicator.i
    public void a() {
        ObjectAnimator objectAnimator = this.f29497c;
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
        this.f29504j = bVar;
    }

    @Override // com.google.android.material.progressindicator.i
    public void f() {
        ObjectAnimator objectAnimator = this.f29498d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        a();
        if (this.f29476a.isVisible()) {
            this.f29498d.setFloatValues(this.f29503i, 1.0f);
            this.f29498d.setDuration((long) ((1.0f - this.f29503i) * 1800.0f));
            this.f29498d.start();
        }
    }

    @Override // com.google.android.material.progressindicator.i
    public void g() {
        o();
        q();
        this.f29497c.start();
    }

    @Override // com.google.android.material.progressindicator.i
    public void h() {
        this.f29504j = null;
    }

    void q() {
        this.f29501g = 0;
        Iterator it = this.f29477b.iterator();
        while (it.hasNext()) {
            ((h.a) it.next()).f29474c = this.f29500f.f29420c[0];
        }
    }

    void r(float f11) {
        this.f29503i = f11;
        s((int) (f11 * 1800.0f));
        p();
        this.f29476a.invalidateSelf();
    }
}
