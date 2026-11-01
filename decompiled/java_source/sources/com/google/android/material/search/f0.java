package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SearchView f29574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f29575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ClippableRoundedCornerLayout f29576c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FrameLayout f29577d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FrameLayout f29578e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Toolbar f29579f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Toolbar f29580g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TextView f29581h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final EditText f29582i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ImageButton f29583j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View f29584k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final TouchObserverFrameLayout f29585l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final wa.h f29586m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private AnimatorSet f29587n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private SearchBar f29588o;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!f0.this.f29574a.k()) {
                f0.this.f29574a.x();
            }
            f0.this.f29574a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f0.this.f29576c.setVisibility(0);
            f0.this.f29588o.stopOnLoadAnimation();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f0.this.f29576c.setVisibility(8);
            if (!f0.this.f29574a.k()) {
                f0.this.f29574a.clearFocusAndHideKeyboard();
            }
            f0.this.f29574a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f0.this.f29574a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!f0.this.f29574a.k()) {
                f0.this.f29574a.x();
            }
            f0.this.f29574a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f0.this.f29576c.setVisibility(0);
            f0.this.f29574a.setTransitionState(SearchView.TransitionState.SHOWING);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f0.this.f29576c.setVisibility(8);
            if (!f0.this.f29574a.k()) {
                f0.this.f29574a.clearFocusAndHideKeyboard();
            }
            f0.this.f29574a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f0.this.f29574a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f29593a;

        e(boolean z10) {
            this.f29593a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f0.this.U(this.f29593a ? 1.0f : 0.0f);
            f0.this.f29576c.resetClipBoundsAndCornerRadius();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f0.this.U(this.f29593a ? 0.0f : 1.0f);
        }
    }

    f0(SearchView searchView) {
        this.f29574a = searchView;
        this.f29575b = searchView.f29531a;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchView.f29532b;
        this.f29576c = clippableRoundedCornerLayout;
        this.f29577d = searchView.f29535e;
        this.f29578e = searchView.f29536f;
        this.f29579f = searchView.f29537g;
        this.f29580g = searchView.f29538h;
        this.f29581h = searchView.f29539i;
        this.f29582i = searchView.f29540j;
        this.f29583j = searchView.f29541k;
        this.f29584k = searchView.f29542l;
        this.f29585l = searchView.f29543m;
        this.f29586m = new wa.h(clippableRoundedCornerLayout);
    }

    private Animator A(boolean z10) {
        return K(z10, true, this.f29582i);
    }

    private AnimatorSet B(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (this.f29587n == null) {
            animatorSet.playTogether(s(z10), t(z10));
        }
        animatorSet.playTogether(H(z10), G(z10), u(z10), w(z10), F(z10), z(z10), q(z10), A(z10), I(z10));
        animatorSet.addListener(new e(z10));
        return animatorSet;
    }

    private int C(View view) {
        int marginEnd = MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        return com.google.android.material.internal.f0.p(this.f29588o) ? this.f29588o.getLeft() - marginEnd : (this.f29588o.getRight() - this.f29574a.getWidth()) + marginEnd;
    }

    private int D(View view) {
        int marginStart = MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        int paddingStart = ViewCompat.getPaddingStart(this.f29588o);
        return com.google.android.material.internal.f0.p(this.f29588o) ? ((this.f29588o.getWidth() - this.f29588o.getRight()) + marginStart) - paddingStart : (this.f29588o.getLeft() - marginStart) + paddingStart;
    }

    private int E() {
        return ((this.f29588o.getTop() + this.f29588o.getBottom()) / 2) - ((this.f29578e.getTop() + this.f29578e.getBottom()) / 2);
    }

    private Animator F(boolean z10) {
        return K(z10, false, this.f29577d);
    }

    private Animator G(boolean z10) {
        Rect rectM = this.f29586m.m();
        Rect rectL = this.f29586m.l();
        if (rectM == null) {
            rectM = com.google.android.material.internal.f0.c(this.f29574a);
        }
        if (rectL == null) {
            rectL = com.google.android.material.internal.f0.b(this.f29576c, this.f29588o);
        }
        final Rect rect = new Rect(rectL);
        final float cornerSize = this.f29588o.getCornerSize();
        final float fMax = Math.max(this.f29576c.getCornerRadius(), this.f29586m.k());
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new com.google.android.material.internal.u(rect), rectL, rectM);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.z
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29627a.P(cornerSize, fMax, rect, valueAnimator);
            }
        });
        valueAnimatorOfObject.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfObject.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        return valueAnimatorOfObject;
    }

    private Animator H(boolean z10) {
        TimeInterpolator timeInterpolator = z10 ? oa.a.f70918a : oa.a.f70919b;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, timeInterpolator));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f29575b));
        return valueAnimatorOfFloat;
    }

    private Animator I(boolean z10) {
        return K(z10, true, this.f29581h);
    }

    private AnimatorSet J(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(L());
        k(animatorSet);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        animatorSet.setDuration(z10 ? 350L : 300L);
        return animatorSet;
    }

    private Animator K(boolean z10, boolean z11, View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z11 ? D(view) : C(view), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.m(view));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.n(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        return animatorSet;
    }

    private Animator L() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f29576c.getHeight(), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.n(this.f29576c));
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N(androidx.appcompat.graphics.drawable.c cVar, ValueAnimator valueAnimator) {
        cVar.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void O(com.google.android.material.internal.h hVar, ValueAnimator valueAnimator) {
        hVar.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(float f11, float f12, Rect rect, ValueAnimator valueAnimator) {
        this.f29576c.updateClipBoundsAndCornerRadius(rect, oa.a.a(f11, f12, valueAnimator.getAnimatedFraction()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q() {
        AnimatorSet animatorSetB = B(true);
        animatorSetB.addListener(new a());
        animatorSetB.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f29576c;
        clippableRoundedCornerLayout.setTranslationY(clippableRoundedCornerLayout.getHeight());
        AnimatorSet animatorSetJ = J(true);
        animatorSetJ.addListener(new c());
        animatorSetJ.start();
    }

    private void T(float f11) {
        ActionMenuView actionMenuViewB;
        if (!this.f29574a.isMenuItemsAnimated() || (actionMenuViewB = ToolbarUtils.b(this.f29579f)) == null) {
            return;
        }
        actionMenuViewB.setAlpha(f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(float f11) {
        this.f29583j.setAlpha(f11);
        this.f29584k.setAlpha(f11);
        this.f29585l.setAlpha(f11);
        T(f11);
    }

    private void V(Drawable drawable) {
        if (drawable instanceof androidx.appcompat.graphics.drawable.c) {
            ((androidx.appcompat.graphics.drawable.c) drawable).setProgress(1.0f);
        }
        if (drawable instanceof com.google.android.material.internal.h) {
            ((com.google.android.material.internal.h) drawable).a(1.0f);
        }
    }

    private void W(Toolbar toolbar) {
        ActionMenuView actionMenuViewB = ToolbarUtils.b(toolbar);
        if (actionMenuViewB != null) {
            for (int i11 = 0; i11 < actionMenuViewB.getChildCount(); i11++) {
                View childAt = actionMenuViewB.getChildAt(i11);
                childAt.setClickable(false);
                childAt.setFocusable(false);
                childAt.setFocusableInTouchMode(false);
            }
        }
    }

    private void Y() {
        Menu menu = this.f29580g.getMenu();
        if (menu != null) {
            menu.clear();
        }
        if (this.f29588o.getMenuResId() == -1 || !this.f29574a.isMenuItemsAnimated()) {
            this.f29580g.setVisibility(8);
            return;
        }
        this.f29580g.inflateMenu(this.f29588o.getMenuResId());
        W(this.f29580g);
        this.f29580g.setVisibility(0);
    }

    private AnimatorSet b0() {
        if (this.f29574a.k()) {
            this.f29574a.clearFocusAndHideKeyboard();
        }
        AnimatorSet animatorSetB = B(false);
        animatorSetB.addListener(new b());
        animatorSetB.start();
        return animatorSetB;
    }

    private AnimatorSet c0() {
        if (this.f29574a.k()) {
            this.f29574a.clearFocusAndHideKeyboard();
        }
        AnimatorSet animatorSetJ = J(false);
        animatorSetJ.addListener(new d());
        animatorSetJ.start();
        return animatorSetJ;
    }

    private void d0() {
        if (this.f29574a.k()) {
            this.f29574a.x();
        }
        this.f29574a.setTransitionState(SearchView.TransitionState.SHOWING);
        Y();
        this.f29582i.setText(this.f29588o.getText());
        EditText editText = this.f29582i;
        editText.setSelection(editText.getText().length());
        this.f29576c.setVisibility(4);
        this.f29576c.post(new Runnable() { // from class: com.google.android.material.search.b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f29562a.Q();
            }
        });
    }

    private void e0() {
        if (this.f29574a.k()) {
            final SearchView searchView = this.f29574a;
            Objects.requireNonNull(searchView);
            searchView.postDelayed(new Runnable() { // from class: com.google.android.material.search.d0
                @Override // java.lang.Runnable
                public final void run() {
                    searchView.x();
                }
            }, 150L);
        }
        this.f29576c.setVisibility(4);
        this.f29576c.post(new Runnable() { // from class: com.google.android.material.search.e0
            @Override // java.lang.Runnable
            public final void run() {
                this.f29571a.R();
            }
        });
    }

    private void j(AnimatorSet animatorSet) {
        ActionMenuView actionMenuViewB = ToolbarUtils.b(this.f29579f);
        if (actionMenuViewB == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(C(actionMenuViewB), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.m(actionMenuViewB));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.n(actionMenuViewB));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void k(AnimatorSet animatorSet) {
        ImageButton imageButtonE = ToolbarUtils.e(this.f29579f);
        if (imageButtonE == null) {
            return;
        }
        Drawable drawableQ = a1.a.q(imageButtonE.getDrawable());
        if (!this.f29574a.isAnimatedNavigationIcon()) {
            V(drawableQ);
        } else {
            m(animatorSet, drawableQ);
            n(animatorSet, drawableQ);
        }
    }

    private void l(AnimatorSet animatorSet) {
        ImageButton imageButtonE = ToolbarUtils.e(this.f29579f);
        if (imageButtonE == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(D(imageButtonE), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.m(imageButtonE));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.n(imageButtonE));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void m(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof androidx.appcompat.graphics.drawable.c) {
            final androidx.appcompat.graphics.drawable.c cVar = (androidx.appcompat.graphics.drawable.c) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.a0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    f0.N(cVar, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private void n(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof com.google.android.material.internal.h) {
            final com.google.android.material.internal.h hVar = (com.google.android.material.internal.h) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.c0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    f0.O(hVar, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private Animator q(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        if (this.f29574a.isMenuItemsAnimated()) {
            valueAnimatorOfFloat.addUpdateListener(new com.google.android.material.internal.i(ToolbarUtils.b(this.f29580g), ToolbarUtils.b(this.f29579f)));
        }
        return valueAnimatorOfFloat;
    }

    private AnimatorSet s(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        k(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        return animatorSet;
    }

    private AnimatorSet t(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        l(animatorSet);
        j(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        return animatorSet;
    }

    private Animator u(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 50L : 42L);
        valueAnimatorOfFloat.setStartDelay(z10 ? 250L : 0L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70918a));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f29583j));
        return valueAnimatorOfFloat;
    }

    private Animator v(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 150L : 83L);
        valueAnimatorOfFloat.setStartDelay(z10 ? 75L : 0L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70918a));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f29584k, this.f29585l));
        return valueAnimatorOfFloat;
    }

    private Animator w(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(v(z10), y(z10), x(z10));
        return animatorSet;
    }

    private Animator x(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.95f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.g(this.f29585l));
        return valueAnimatorOfFloat;
    }

    private Animator y(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat((this.f29585l.getHeight() * 0.050000012f) / 2.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, oa.a.f70919b));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.n(this.f29584k));
        return valueAnimatorOfFloat;
    }

    private Animator z(boolean z10) {
        return K(z10, false, this.f29580g);
    }

    AnimatorSet M() {
        return this.f29588o != null ? b0() : c0();
    }

    public androidx.activity.b S() {
        return this.f29586m.c();
    }

    void X(SearchBar searchBar) {
        this.f29588o = searchBar;
    }

    void Z() {
        if (this.f29588o != null) {
            d0();
        } else {
            e0();
        }
    }

    void a0(androidx.activity.b bVar) {
        this.f29586m.t(bVar, this.f29588o);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void f0(androidx.activity.b bVar) {
        if (bVar.a() <= 0.0f) {
            return;
        }
        wa.h hVar = this.f29586m;
        SearchBar searchBar = this.f29588o;
        hVar.v(bVar, searchBar, searchBar.getCornerSize());
        AnimatorSet animatorSet = this.f29587n;
        if (animatorSet != null) {
            animatorSet.setCurrentPlayTime((long) (bVar.a() * this.f29587n.getDuration()));
            return;
        }
        if (this.f29574a.k()) {
            this.f29574a.clearFocusAndHideKeyboard();
        }
        if (this.f29574a.isAnimatedNavigationIcon()) {
            AnimatorSet animatorSetS = s(false);
            this.f29587n = animatorSetS;
            animatorSetS.start();
            this.f29587n.pause();
        }
    }

    public void o() {
        this.f29586m.g(this.f29588o);
        AnimatorSet animatorSet = this.f29587n;
        if (animatorSet != null) {
            animatorSet.reverse();
        }
        this.f29587n = null;
    }

    public void p() {
        this.f29586m.j(M().getTotalDuration(), this.f29588o);
        if (this.f29587n != null) {
            t(false).start();
            this.f29587n.resume();
        }
        this.f29587n = null;
    }

    wa.h r() {
        return this.f29586m;
    }
}
