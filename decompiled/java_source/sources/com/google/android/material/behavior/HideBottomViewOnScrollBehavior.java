package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.v4.media.session.c;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$attr;
import java.util.Iterator;
import java.util.LinkedHashSet;
import wa.j;

/* JADX INFO: loaded from: classes4.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f28309j = R$attr.motionDurationLong2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f28310k = R$attr.motionDurationMedium4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f28311l = R$attr.motionEasingEmphasizedInterpolator;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashSet f28312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TimeInterpolator f28315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TimeInterpolator f28316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28319h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPropertyAnimator f28320i;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f28320i = null;
        }
    }

    public interface b {
    }

    public HideBottomViewOnScrollBehavior() {
        this.f28312a = new LinkedHashSet();
        this.f28317f = 0;
        this.f28318g = 2;
        this.f28319h = 0;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28312a = new LinkedHashSet();
        this.f28317f = 0;
        this.f28318g = 2;
        this.f28319h = 0;
    }

    private void G(View view, int i11, long j11, TimeInterpolator timeInterpolator) {
        this.f28320i = view.animate().translationY(i11).setInterpolator(timeInterpolator).setDuration(j11).setListener(new a());
    }

    private void Q(View view, int i11) {
        this.f28318g = i11;
        Iterator it = this.f28312a.iterator();
        if (it.hasNext()) {
            c.a(it.next());
            throw null;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean A(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i11, int i12) {
        return i11 == 2;
    }

    public void F(b bVar) {
        this.f28312a.add(bVar);
    }

    public void H() {
        this.f28312a.clear();
    }

    public boolean I() {
        return this.f28318g == 1;
    }

    public boolean J() {
        return this.f28318g == 2;
    }

    public void K(b bVar) {
        this.f28312a.remove(bVar);
    }

    public void L(View view, int i11) {
        this.f28319h = i11;
        if (this.f28318g == 1) {
            view.setTranslationY(this.f28317f + i11);
        }
    }

    public void M(View view) {
        N(view, true);
    }

    public void N(View view, boolean z10) {
        if (I()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f28320i;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        Q(view, 1);
        int i11 = this.f28317f + this.f28319h;
        if (z10) {
            G(view, i11, this.f28314c, this.f28316e);
        } else {
            view.setTranslationY(i11);
        }
    }

    public void O(View view) {
        P(view, true);
    }

    public void P(View view, boolean z10) {
        if (J()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f28320i;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        Q(view, 2);
        if (z10) {
            G(view, 0, this.f28313b, this.f28315d);
        } else {
            view.setTranslationY(0);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
        this.f28317f = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f28313b = j.f(view.getContext(), f28309j, 225);
        this.f28314c = j.f(view.getContext(), f28310k, 175);
        Context context = view.getContext();
        int i12 = f28311l;
        this.f28315d = j.g(context, i12, oa.a.f70921d);
        this.f28316e = j.g(view.getContext(), i12, oa.a.f70920c);
        return super.l(coordinatorLayout, view, i11);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void t(CoordinatorLayout coordinatorLayout, View view, View view2, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        if (i12 > 0) {
            M(view);
        } else if (i12 < 0) {
            O(view);
        }
    }
}
