package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f29211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f29212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f29213c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f29214d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f29215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f29216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29217g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f29218h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.f29212b.setVisibility(0);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            g.this.f29212b.setVisibility(8);
        }
    }

    public g(View view, View view2) {
        this.f29211a = view;
        this.f29212b = view2;
    }

    private void e(Animator animator, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            animator.addListener((AnimatorListenerAdapter) it.next());
        }
    }

    private AnimatorSet f(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(j(z10), k(z10), h(z10));
        return animatorSet;
    }

    private Animator h(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat((this.f29212b.getLeft() - this.f29211a.getLeft()) + (this.f29211a.getRight() - this.f29212b.getRight()), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(q.l(this.f29214d));
        valueAnimatorOfFloat.setDuration(this.f29216f);
        valueAnimatorOfFloat.setInterpolator(v.a(z10, oa.a.f70919b));
        return valueAnimatorOfFloat;
    }

    private Animator j(boolean z10) {
        Rect rectD = f0.d(this.f29211a, this.f29217g);
        Rect rectD2 = f0.d(this.f29212b, this.f29218h);
        final Rect rect = new Rect(rectD);
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new u(rect), rectD, rectD2);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29199a.l(rect, valueAnimator);
            }
        });
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f29215e;
        if (animatorUpdateListener != null) {
            valueAnimatorOfObject.addUpdateListener(animatorUpdateListener);
        }
        valueAnimatorOfObject.setDuration(this.f29216f);
        valueAnimatorOfObject.setInterpolator(v.a(z10, oa.a.f70919b));
        return valueAnimatorOfObject;
    }

    private Animator k(boolean z10) {
        List listI = f0.i(this.f29212b);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(q.e(listI));
        valueAnimatorOfFloat.setDuration(this.f29216f);
        valueAnimatorOfFloat.setInterpolator(v.a(z10, oa.a.f70918a));
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(Rect rect, ValueAnimator valueAnimator) {
        f0.u(this.f29212b, rect);
    }

    public g c(Collection collection) {
        this.f29214d.addAll(collection);
        return this;
    }

    public g d(AnimatorListenerAdapter animatorListenerAdapter) {
        this.f29213c.add(animatorListenerAdapter);
        return this;
    }

    public Animator g() {
        AnimatorSet animatorSetF = f(false);
        animatorSetF.addListener(new b());
        e(animatorSetF, this.f29213c);
        return animatorSetF;
    }

    public Animator i() {
        AnimatorSet animatorSetF = f(true);
        animatorSetF.addListener(new a());
        e(animatorSetF, this.f29213c);
        return animatorSetF;
    }

    public g m(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f29215e = animatorUpdateListener;
        return this;
    }

    public g n(int i11) {
        this.f29217g = i11;
        return this;
    }

    public g o(long j11) {
        this.f29216f = j11;
        return this;
    }
}
