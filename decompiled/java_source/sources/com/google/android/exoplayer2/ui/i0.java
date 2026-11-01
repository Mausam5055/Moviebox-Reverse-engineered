package com.google.android.exoplayer2.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class i0 {
    private boolean A;
    private boolean B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final StyledPlayerControlView f27127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f27128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup f27129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ViewGroup f27130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ViewGroup f27131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewGroup f27132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ViewGroup f27133g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ViewGroup f27134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ViewGroup f27135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View f27136j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View f27137k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AnimatorSet f27138l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final AnimatorSet f27139m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AnimatorSet f27140n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AnimatorSet f27141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AnimatorSet f27142p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ValueAnimator f27143q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ValueAnimator f27144r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Runnable f27145s = new Runnable() { // from class: com.google.android.exoplayer2.ui.v
        @Override // java.lang.Runnable
        public final void run() {
            this.f27223a.d0();
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Runnable f27146t = new Runnable() { // from class: com.google.android.exoplayer2.ui.b0
        @Override // java.lang.Runnable
        public final void run() {
            this.f27109a.D();
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Runnable f27147u = new Runnable() { // from class: com.google.android.exoplayer2.ui.c0
        @Override // java.lang.Runnable
        public final void run() {
            this.f27117a.H();
        }
    };

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Runnable f27148v = new Runnable() { // from class: com.google.android.exoplayer2.ui.d0
        @Override // java.lang.Runnable
        public final void run() {
            this.f27118a.G();
        }
    };

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Runnable f27149w = new Runnable() { // from class: com.google.android.exoplayer2.ui.e0
        @Override // java.lang.Runnable
        public final void run() {
            this.f27120a.E();
        }
    };

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final View.OnLayoutChangeListener f27150x = new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.f0
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.f27122a.S(view, i11, i12, i13, i14, i15, i16, i17, i18);
        }
    };
    private boolean C = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f27152z = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final List f27151y = new ArrayList();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (i0.this.f27128b != null) {
                i0.this.f27128b.setVisibility(4);
            }
            if (i0.this.f27129c != null) {
                i0.this.f27129c.setVisibility(4);
            }
            if (i0.this.f27131e != null) {
                i0.this.f27131e.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!(i0.this.f27136j instanceof DefaultTimeBar) || i0.this.A) {
                return;
            }
            ((DefaultTimeBar) i0.this.f27136j).hideScrubber(250L);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (i0.this.f27128b != null) {
                i0.this.f27128b.setVisibility(0);
            }
            if (i0.this.f27129c != null) {
                i0.this.f27129c.setVisibility(0);
            }
            if (i0.this.f27131e != null) {
                i0.this.f27131e.setVisibility(i0.this.A ? 0 : 4);
            }
            if (!(i0.this.f27136j instanceof DefaultTimeBar) || i0.this.A) {
                return;
            }
            ((DefaultTimeBar) i0.this.f27136j).showScrubber(250L);
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f27155a;

        c(StyledPlayerControlView styledPlayerControlView) {
            this.f27155a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(1);
            if (i0.this.B) {
                this.f27155a.post(i0.this.f27145s);
                i0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i0.this.a0(3);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f27157a;

        d(StyledPlayerControlView styledPlayerControlView) {
            this.f27157a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(2);
            if (i0.this.B) {
                this.f27157a.post(i0.this.f27145s);
                i0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i0.this.a0(3);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f27159a;

        e(StyledPlayerControlView styledPlayerControlView) {
            this.f27159a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(2);
            if (i0.this.B) {
                this.f27159a.post(i0.this.f27145s);
                i0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i0.this.a0(3);
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i0.this.a0(4);
        }
    }

    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            i0.this.a0(4);
        }
    }

    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (i0.this.f27132f != null) {
                i0.this.f27132f.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (i0.this.f27134h != null) {
                i0.this.f27134h.setVisibility(0);
                i0.this.f27134h.setTranslationX(i0.this.f27134h.getWidth());
                i0.this.f27134h.scrollTo(i0.this.f27134h.getWidth(), 0);
            }
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (i0.this.f27134h != null) {
                i0.this.f27134h.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (i0.this.f27132f != null) {
                i0.this.f27132f.setVisibility(0);
            }
        }
    }

    public i0(StyledPlayerControlView styledPlayerControlView) {
        this.f27127a = styledPlayerControlView;
        this.f27128b = styledPlayerControlView.findViewById(R$id.exo_controls_background);
        this.f27129c = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_center_controls);
        this.f27131e = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_bottom_bar);
        this.f27130d = viewGroup;
        this.f27135i = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_time);
        View viewFindViewById = styledPlayerControlView.findViewById(R$id.exo_progress);
        this.f27136j = viewFindViewById;
        this.f27132f = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_basic_controls);
        this.f27133g = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls);
        this.f27134h = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = styledPlayerControlView.findViewById(R$id.exo_overflow_show);
        this.f27137k = viewFindViewById2;
        View viewFindViewById3 = styledPlayerControlView.findViewById(R$id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f27124a.U(view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f27124a.U(view);
                }
            });
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.h0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f27125a.K(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.w
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f27224a.L(valueAnimator);
            }
        });
        valueAnimatorOfFloat2.addListener(new b());
        Resources resources = styledPlayerControlView.getResources();
        float dimension = resources.getDimension(R$dimen.exo_styled_bottom_bar_height) - resources.getDimension(R$dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R$dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f27138l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(styledPlayerControlView));
        animatorSet.play(valueAnimatorOfFloat).with(O(0.0f, dimension, viewFindViewById)).with(O(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f27139m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(styledPlayerControlView));
        animatorSet2.play(O(dimension, dimension2, viewFindViewById)).with(O(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f27140n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(styledPlayerControlView));
        animatorSet3.play(valueAnimatorOfFloat).with(O(0.0f, dimension2, viewFindViewById)).with(O(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f27141o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(valueAnimatorOfFloat2).with(O(dimension, 0.0f, viewFindViewById)).with(O(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f27142p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(valueAnimatorOfFloat2).with(O(dimension2, 0.0f, viewFindViewById)).with(O(dimension2, 0.0f, viewGroup));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f27143q = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.z
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f27227a.M(valueAnimator);
            }
        });
        valueAnimatorOfFloat3.addListener(new h());
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f27144r = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.a0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f27102a.N(valueAnimator);
            }
        });
        valueAnimatorOfFloat4.addListener(new i());
    }

    private static int B(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        this.f27140n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        a0(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        this.f27138l.start();
        V(this.f27147u, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.f27139m.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f27128b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f27129c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f27131e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f27128b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f27129c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f27131e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private static ObjectAnimator O(float f11, float f12, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f11, f12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        boolean zF0 = f0();
        if (this.A != zF0) {
            this.A = zF0;
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.f27225a.e0();
                }
            });
        }
        boolean z10 = i13 - i11 != i17 - i15;
        if (this.A || !z10) {
            return;
        }
        view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f27226a.T();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        int i11;
        if (this.f27132f == null || this.f27133g == null) {
            return;
        }
        int width = (this.f27127a.getWidth() - this.f27127a.getPaddingLeft()) - this.f27127a.getPaddingRight();
        while (true) {
            if (this.f27133g.getChildCount() <= 1) {
                break;
            }
            int childCount = this.f27133g.getChildCount() - 2;
            View childAt = this.f27133g.getChildAt(childCount);
            this.f27133g.removeViewAt(childCount);
            this.f27132f.addView(childAt, 0);
        }
        View view = this.f27137k;
        if (view != null) {
            view.setVisibility(8);
        }
        int iB = B(this.f27135i);
        int childCount2 = this.f27132f.getChildCount() - 1;
        for (int i12 = 0; i12 < childCount2; i12++) {
            iB += B(this.f27132f.getChildAt(i12));
        }
        if (iB <= width) {
            ViewGroup viewGroup = this.f27134h;
            if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f27144r.isStarted()) {
                return;
            }
            this.f27143q.cancel();
            this.f27144r.start();
            return;
        }
        View view2 = this.f27137k;
        if (view2 != null) {
            view2.setVisibility(0);
            iB += B(this.f27137k);
        }
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < childCount2; i13++) {
            View childAt2 = this.f27132f.getChildAt(i13);
            iB -= B(childAt2);
            arrayList.add(childAt2);
            if (iB <= width) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f27132f.removeViews(0, arrayList.size());
        for (i11 = 0; i11 < arrayList.size(); i11++) {
            this.f27133g.addView((View) arrayList.get(i11), this.f27133g.getChildCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(View view) {
        X();
        if (view.getId() == R$id.exo_overflow_show) {
            this.f27143q.start();
        } else if (view.getId() == R$id.exo_overflow_hide) {
            this.f27144r.start();
        }
    }

    private void V(Runnable runnable, long j11) {
        if (j11 >= 0) {
            this.f27127a.postDelayed(runnable, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(int i11) {
        int i12 = this.f27152z;
        this.f27152z = i11;
        if (i11 == 2) {
            this.f27127a.setVisibility(8);
        } else if (i12 == 2) {
            this.f27127a.setVisibility(0);
        }
        if (i12 != i11) {
            this.f27127a.c0();
        }
    }

    private boolean b0(View view) {
        int id2 = view.getId();
        return id2 == R$id.exo_bottom_bar || id2 == R$id.exo_prev || id2 == R$id.exo_next || id2 == R$id.exo_rew || id2 == R$id.exo_rew_with_amount || id2 == R$id.exo_ffwd || id2 == R$id.exo_ffwd_with_amount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        if (!this.C) {
            a0(0);
            X();
            return;
        }
        int i11 = this.f27152z;
        if (i11 == 1) {
            this.f27141o.start();
        } else if (i11 == 2) {
            this.f27142p.start();
        } else if (i11 == 3) {
            this.B = true;
        } else if (i11 == 4) {
            return;
        }
        X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        ViewGroup viewGroup = this.f27131e;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.A ? 0 : 4);
        }
        View view = this.f27136j;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int dimensionPixelSize = this.f27127a.getResources().getDimensionPixelSize(R$dimen.exo_styled_progress_margin_bottom);
            if (this.A) {
                dimensionPixelSize = 0;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize;
            this.f27136j.setLayoutParams(marginLayoutParams);
            View view2 = this.f27136j;
            if (view2 instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view2;
                if (this.A) {
                    defaultTimeBar.hideScrubber(true);
                } else {
                    int i11 = this.f27152z;
                    if (i11 == 1) {
                        defaultTimeBar.hideScrubber(false);
                    } else if (i11 != 3) {
                        defaultTimeBar.showScrubber();
                    }
                }
            }
        }
        for (View view3 : this.f27151y) {
            view3.setVisibility((this.A && b0(view3)) ? 4 : 0);
        }
    }

    private boolean f0() {
        int width = (this.f27127a.getWidth() - this.f27127a.getPaddingLeft()) - this.f27127a.getPaddingRight();
        int height = (this.f27127a.getHeight() - this.f27127a.getPaddingBottom()) - this.f27127a.getPaddingTop();
        int iB = B(this.f27129c);
        ViewGroup viewGroup = this.f27129c;
        int paddingLeft = iB - (viewGroup != null ? viewGroup.getPaddingLeft() + this.f27129c.getPaddingRight() : 0);
        int iZ = z(this.f27129c);
        ViewGroup viewGroup2 = this.f27129c;
        return width <= Math.max(paddingLeft, B(this.f27135i) + B(this.f27137k)) || height <= (iZ - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f27129c.getPaddingBottom() : 0)) + (z(this.f27130d) * 2);
    }

    private void y(float f11) {
        ViewGroup viewGroup = this.f27134h;
        if (viewGroup != null) {
            this.f27134h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f11)));
        }
        ViewGroup viewGroup2 = this.f27135i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f11);
        }
        ViewGroup viewGroup3 = this.f27132f;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f11);
        }
    }

    private static int z(View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return height;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public boolean A(View view) {
        return view != null && this.f27151y.contains(view);
    }

    public void C() {
        int i11 = this.f27152z;
        if (i11 == 3 || i11 == 2) {
            return;
        }
        W();
        if (!this.C) {
            E();
        } else if (this.f27152z == 1) {
            H();
        } else {
            D();
        }
    }

    public void F() {
        int i11 = this.f27152z;
        if (i11 == 3 || i11 == 2) {
            return;
        }
        W();
        E();
    }

    public boolean I() {
        return this.C;
    }

    public boolean J() {
        return this.f27152z == 0 && this.f27127a.isVisible();
    }

    public void P() {
        this.f27127a.addOnLayoutChangeListener(this.f27150x);
    }

    public void Q() {
        this.f27127a.removeOnLayoutChangeListener(this.f27150x);
    }

    public void R(boolean z10, int i11, int i12, int i13, int i14) {
        View view = this.f27128b;
        if (view != null) {
            view.layout(0, 0, i13 - i11, i14 - i12);
        }
    }

    public void W() {
        this.f27127a.removeCallbacks(this.f27149w);
        this.f27127a.removeCallbacks(this.f27146t);
        this.f27127a.removeCallbacks(this.f27148v);
        this.f27127a.removeCallbacks(this.f27147u);
    }

    public void X() {
        if (this.f27152z == 3) {
            return;
        }
        W();
        int showTimeoutMs = this.f27127a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                V(this.f27149w, showTimeoutMs);
            } else if (this.f27152z == 1) {
                V(this.f27147u, 2000L);
            } else {
                V(this.f27148v, showTimeoutMs);
            }
        }
    }

    public void Y(boolean z10) {
        this.C = z10;
    }

    public void Z(View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (!z10) {
            view.setVisibility(8);
            this.f27151y.remove(view);
            return;
        }
        if (this.A && b0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f27151y.add(view);
    }

    public void c0() {
        if (!this.f27127a.isVisible()) {
            this.f27127a.setVisibility(0);
            this.f27127a.k0();
            this.f27127a.g0();
        }
        d0();
    }
}
