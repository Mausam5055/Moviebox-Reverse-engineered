package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ToolbarUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Animator f29599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Animator f29600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f29601f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f29602g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f29596a = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f29597b = new LinkedHashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f29598c = new LinkedHashSet();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29603h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Animator f29604i = null;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i.this.k(new g() { // from class: com.google.android.material.search.h
                @Override // com.google.android.material.search.i.g
                public final void a(SearchBar.b bVar) {
                    bVar.a();
                }
            });
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f29606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Animator f29607b;

        b(View view, Animator animator) {
            this.f29606a = view;
            this.f29607b = animator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f29606a.setVisibility(8);
            this.f29607b.start();
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i.this.f29604i = null;
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SearchBar f29610a;

        d(SearchBar searchBar) {
            this.f29610a = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i.this.f29601f = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f29610a.setVisibility(4);
        }
    }

    class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i.this.f29604i = null;
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SearchBar f29613a;

        f(SearchBar searchBar) {
            this.f29613a = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f29613a.setVisibility(0);
            i.this.f29602g = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f29613a.stopOnLoadAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface g {
        void a(SearchBar.b bVar);
    }

    i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void A(ab.i iVar, View view, ValueAnimator valueAnimator) {
        iVar.e0(1.0f - valueAnimator.getAnimatedFraction());
        ViewCompat.setBackground(view, iVar);
        view.setAlpha(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(SearchBar searchBar, View view, AppBarLayout appBarLayout, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(t(searchBar, view), o(searchBar, view, appBarLayout));
        animatorSet.addListener(new c());
        Iterator it = this.f29597b.iterator();
        while (it.hasNext()) {
            animatorSet.addListener((AnimatorListenerAdapter) it.next());
        }
        if (z10) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f29604i = animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(g gVar) {
        Iterator it = this.f29596a.iterator();
        while (it.hasNext()) {
            gVar.a((SearchBar.b) it.next());
        }
    }

    private Animator l(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return p(searchBar, view, appBarLayout).o(250L).d(new f(searchBar)).g();
    }

    private Animator m(View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(view));
        TimeInterpolator timeInterpolator = oa.a.f70918a;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f29603h ? 250L : 0L);
        valueAnimatorOfFloat.setStartDelay(this.f29603h ? 500L : 0L);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.f(view));
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(250L);
        valueAnimatorOfFloat2.setStartDelay(750L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        return animatorSet;
    }

    private List n(View view) {
        boolean zP = com.google.android.material.internal.f0.p(view);
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if ((!zP && (childAt instanceof ActionMenuView)) || (zP && !(childAt instanceof ActionMenuView))) {
                    arrayList.add(childAt);
                }
            }
        }
        return arrayList;
    }

    private Animator o(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return p(searchBar, view, appBarLayout).o(300L).d(new d(searchBar)).i();
    }

    private com.google.android.material.internal.g p(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return new com.google.android.material.internal.g(searchBar, view).m(q(searchBar, view)).n(appBarLayout != null ? appBarLayout.getTop() : 0).c(n(view));
    }

    private ValueAnimator.AnimatorUpdateListener q(SearchBar searchBar, final View view) {
        final ab.i iVarM = ab.i.m(view.getContext());
        iVarM.a0(searchBar.getCornerSize());
        iVarM.c0(ViewCompat.getElevation(searchBar));
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                i.A(iVarM, view, valueAnimator);
            }
        };
    }

    private List r(SearchBar searchBar) {
        List listI = com.google.android.material.internal.f0.i(searchBar);
        if (searchBar.getCenterView() != null) {
            listI.remove(searchBar.getCenterView());
        }
        return listI;
    }

    private Animator s(SearchBar searchBar) {
        List listR = r(searchBar);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.e(listR));
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setInterpolator(oa.a.f70918a);
        return valueAnimatorOfFloat;
    }

    private Animator t(SearchBar searchBar, final View view) {
        List listR = r(searchBar);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.e(listR));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(0.0f);
            }
        });
        valueAnimatorOfFloat.setDuration(75L);
        valueAnimatorOfFloat.setInterpolator(oa.a.f70918a);
        return valueAnimatorOfFloat;
    }

    private Animator u(View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(view));
        valueAnimatorOfFloat.setInterpolator(oa.a.f70918a);
        valueAnimatorOfFloat.setDuration(250L);
        return valueAnimatorOfFloat;
    }

    private Animator v(TextView textView, View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(250L);
        animatorSet.play(w(textView));
        if (view != null) {
            animatorSet.play(u(view));
        }
        return animatorSet;
    }

    private Animator w(TextView textView) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(textView));
        valueAnimatorOfFloat.setInterpolator(oa.a.f70918a);
        valueAnimatorOfFloat.setDuration(250L);
        return valueAnimatorOfFloat;
    }

    boolean D(AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f29598c.remove(animatorListenerAdapter);
    }

    boolean E(AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f29597b.remove(animatorListenerAdapter);
    }

    boolean F(SearchBar.b bVar) {
        return this.f29596a.remove(bVar);
    }

    void G(boolean z10) {
        this.f29603h = z10;
    }

    void H(SearchBar searchBar, View view, AppBarLayout appBarLayout, boolean z10) {
        Animator animator;
        if (y() && (animator = this.f29604i) != null) {
            animator.cancel();
        }
        this.f29602g = true;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(l(searchBar, view, appBarLayout), s(searchBar));
        animatorSet.addListener(new e());
        Iterator it = this.f29598c.iterator();
        while (it.hasNext()) {
            animatorSet.addListener((AnimatorListenerAdapter) it.next());
        }
        if (z10) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f29604i = animatorSet;
    }

    void I(final SearchBar searchBar, final View view, final AppBarLayout appBarLayout, final boolean z10) {
        Animator animator;
        if (x() && (animator = this.f29604i) != null) {
            animator.cancel();
        }
        this.f29601f = true;
        view.setVisibility(4);
        view.post(new Runnable() { // from class: com.google.android.material.search.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f29566a.C(searchBar, view, appBarLayout, z10);
            }
        });
    }

    void J(SearchBar searchBar) {
        k(new g() { // from class: com.google.android.material.search.d
            @Override // com.google.android.material.search.i.g
            public final void a(SearchBar.b bVar) {
                bVar.b();
            }
        });
        TextView textView = searchBar.getTextView();
        View centerView = searchBar.getCenterView();
        View viewF = ToolbarUtils.f(searchBar);
        Animator animatorV = v(textView, viewF);
        animatorV.addListener(new a());
        this.f29599d = animatorV;
        textView.setAlpha(0.0f);
        if (viewF != null) {
            viewF.setAlpha(0.0f);
        }
        if (centerView == null) {
            animatorV.start();
            return;
        }
        centerView.setAlpha(0.0f);
        centerView.setVisibility(0);
        Animator animatorM = m(centerView);
        this.f29600e = animatorM;
        animatorM.addListener(new b(centerView, animatorV));
        animatorM.start();
    }

    void K(SearchBar searchBar) {
        Animator animator = this.f29599d;
        if (animator != null) {
            animator.end();
        }
        Animator animator2 = this.f29600e;
        if (animator2 != null) {
            animator2.end();
        }
        View centerView = searchBar.getCenterView();
        if (centerView != null) {
            centerView.setAlpha(0.0f);
        }
    }

    void h(AnimatorListenerAdapter animatorListenerAdapter) {
        this.f29598c.add(animatorListenerAdapter);
    }

    void i(AnimatorListenerAdapter animatorListenerAdapter) {
        this.f29597b.add(animatorListenerAdapter);
    }

    void j(SearchBar.b bVar) {
        this.f29596a.add(bVar);
    }

    boolean x() {
        return this.f29602g;
    }

    boolean y() {
        return this.f29601f;
    }

    boolean z() {
        return this.f29603h;
    }
}
