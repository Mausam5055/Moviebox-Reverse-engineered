package androidx.media3.ui;

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

/* JADX INFO: loaded from: classes2.dex */
final class e0 {
    private boolean A;
    private boolean B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PlayerControlView f13652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f13653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup f13654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ViewGroup f13655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ViewGroup f13656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewGroup f13657f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ViewGroup f13658g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ViewGroup f13659h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ViewGroup f13660i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View f13661j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View f13662k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final AnimatorSet f13663l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final AnimatorSet f13664m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AnimatorSet f13665n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AnimatorSet f13666o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AnimatorSet f13667p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ValueAnimator f13668q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ValueAnimator f13669r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Runnable f13670s = new Runnable() { // from class: androidx.media3.ui.r
        @Override // java.lang.Runnable
        public final void run() {
            this.f13712a.d0();
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Runnable f13671t = new Runnable() { // from class: androidx.media3.ui.x
        @Override // java.lang.Runnable
        public final void run() {
            this.f13755a.D();
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Runnable f13672u = new Runnable() { // from class: androidx.media3.ui.y
        @Override // java.lang.Runnable
        public final void run() {
            this.f13756a.H();
        }
    };

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Runnable f13673v = new Runnable() { // from class: androidx.media3.ui.z
        @Override // java.lang.Runnable
        public final void run() {
            this.f13757a.G();
        }
    };

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Runnable f13674w = new Runnable() { // from class: androidx.media3.ui.a0
        @Override // java.lang.Runnable
        public final void run() {
            this.f13629a.E();
        }
    };

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final View.OnLayoutChangeListener f13675x = new View.OnLayoutChangeListener() { // from class: androidx.media3.ui.b0
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.f13638a.S(view, i11, i12, i13, i14, i15, i16, i17, i18);
        }
    };
    private boolean C = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f13677z = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final List f13676y = new ArrayList();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (e0.this.f13653b != null) {
                e0.this.f13653b.setVisibility(4);
            }
            if (e0.this.f13654c != null) {
                e0.this.f13654c.setVisibility(4);
            }
            if (e0.this.f13656e != null) {
                e0.this.f13656e.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!(e0.this.f13661j instanceof DefaultTimeBar) || e0.this.A) {
                return;
            }
            ((DefaultTimeBar) e0.this.f13661j).hideScrubber(250L);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (e0.this.f13653b != null) {
                e0.this.f13653b.setVisibility(0);
            }
            if (e0.this.f13654c != null) {
                e0.this.f13654c.setVisibility(0);
            }
            if (e0.this.f13656e != null) {
                e0.this.f13656e.setVisibility(e0.this.A ? 0 : 4);
            }
            if (!(e0.this.f13661j instanceof DefaultTimeBar) || e0.this.A) {
                return;
            }
            ((DefaultTimeBar) e0.this.f13661j).showScrubber(250L);
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PlayerControlView f13680a;

        c(PlayerControlView playerControlView) {
            this.f13680a = playerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(1);
            if (e0.this.B) {
                this.f13680a.post(e0.this.f13670s);
                e0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            e0.this.a0(3);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PlayerControlView f13682a;

        d(PlayerControlView playerControlView) {
            this.f13682a = playerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(2);
            if (e0.this.B) {
                this.f13682a.post(e0.this.f13670s);
                e0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            e0.this.a0(3);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PlayerControlView f13684a;

        e(PlayerControlView playerControlView) {
            this.f13684a = playerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(2);
            if (e0.this.B) {
                this.f13684a.post(e0.this.f13670s);
                e0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            e0.this.a0(3);
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            e0.this.a0(4);
        }
    }

    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            e0.this.a0(4);
        }
    }

    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (e0.this.f13657f != null) {
                e0.this.f13657f.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (e0.this.f13659h != null) {
                e0.this.f13659h.setVisibility(0);
                e0.this.f13659h.setTranslationX(e0.this.f13659h.getWidth());
                e0.this.f13659h.scrollTo(e0.this.f13659h.getWidth(), 0);
            }
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (e0.this.f13659h != null) {
                e0.this.f13659h.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (e0.this.f13657f != null) {
                e0.this.f13657f.setVisibility(0);
            }
        }
    }

    public e0(PlayerControlView playerControlView) {
        this.f13652a = playerControlView;
        this.f13653b = playerControlView.findViewById(R$id.exo_controls_background);
        this.f13654c = (ViewGroup) playerControlView.findViewById(R$id.exo_center_controls);
        this.f13656e = (ViewGroup) playerControlView.findViewById(R$id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) playerControlView.findViewById(R$id.exo_bottom_bar);
        this.f13655d = viewGroup;
        this.f13660i = (ViewGroup) playerControlView.findViewById(R$id.exo_time);
        View viewFindViewById = playerControlView.findViewById(R$id.exo_progress);
        this.f13661j = viewFindViewById;
        this.f13657f = (ViewGroup) playerControlView.findViewById(R$id.exo_basic_controls);
        this.f13658g = (ViewGroup) playerControlView.findViewById(R$id.exo_extra_controls);
        this.f13659h = (ViewGroup) playerControlView.findViewById(R$id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = playerControlView.findViewById(R$id.exo_overflow_show);
        this.f13662k = viewFindViewById2;
        View viewFindViewById3 = playerControlView.findViewById(R$id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f13648a.U(view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f13648a.U(view);
                }
            });
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media3.ui.d0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13650a.K(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media3.ui.s
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13724a.L(valueAnimator);
            }
        });
        valueAnimatorOfFloat2.addListener(new b());
        Resources resources = playerControlView.getResources();
        float dimension = resources.getDimension(R$dimen.exo_styled_bottom_bar_height) - resources.getDimension(R$dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R$dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f13663l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(playerControlView));
        animatorSet.play(valueAnimatorOfFloat).with(O(0.0f, dimension, viewFindViewById)).with(O(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f13664m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(playerControlView));
        animatorSet2.play(O(dimension, dimension2, viewFindViewById)).with(O(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f13665n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(playerControlView));
        animatorSet3.play(valueAnimatorOfFloat).with(O(0.0f, dimension2, viewFindViewById)).with(O(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f13666o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(valueAnimatorOfFloat2).with(O(dimension, 0.0f, viewFindViewById)).with(O(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f13667p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(valueAnimatorOfFloat2).with(O(dimension2, 0.0f, viewFindViewById)).with(O(dimension2, 0.0f, viewGroup));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f13668q = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media3.ui.v
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13753a.M(valueAnimator);
            }
        });
        valueAnimatorOfFloat3.addListener(new h());
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f13669r = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media3.ui.w
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13754a.N(valueAnimator);
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
        this.f13665n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        a0(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        this.f13663l.start();
        V(this.f13672u, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.f13664m.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f13653b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f13654c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f13656e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f13653b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f13654c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f13656e;
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
            view.post(new Runnable() { // from class: androidx.media3.ui.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.f13725a.e0();
                }
            });
        }
        boolean z10 = i13 - i11 != i17 - i15;
        if (this.A || !z10) {
            return;
        }
        view.post(new Runnable() { // from class: androidx.media3.ui.u
            @Override // java.lang.Runnable
            public final void run() {
                this.f13726a.T();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        int i11;
        if (this.f13657f == null || this.f13658g == null) {
            return;
        }
        int width = (this.f13652a.getWidth() - this.f13652a.getPaddingLeft()) - this.f13652a.getPaddingRight();
        while (true) {
            if (this.f13658g.getChildCount() <= 1) {
                break;
            }
            int childCount = this.f13658g.getChildCount() - 2;
            View childAt = this.f13658g.getChildAt(childCount);
            this.f13658g.removeViewAt(childCount);
            this.f13657f.addView(childAt, 0);
        }
        View view = this.f13662k;
        if (view != null) {
            view.setVisibility(8);
        }
        int iB = B(this.f13660i);
        int childCount2 = this.f13657f.getChildCount() - 1;
        for (int i12 = 0; i12 < childCount2; i12++) {
            iB += B(this.f13657f.getChildAt(i12));
        }
        if (iB <= width) {
            ViewGroup viewGroup = this.f13659h;
            if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f13669r.isStarted()) {
                return;
            }
            this.f13668q.cancel();
            this.f13669r.start();
            return;
        }
        View view2 = this.f13662k;
        if (view2 != null) {
            view2.setVisibility(0);
            iB += B(this.f13662k);
        }
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < childCount2; i13++) {
            View childAt2 = this.f13657f.getChildAt(i13);
            iB -= B(childAt2);
            arrayList.add(childAt2);
            if (iB <= width) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f13657f.removeViews(0, arrayList.size());
        for (i11 = 0; i11 < arrayList.size(); i11++) {
            this.f13658g.addView((View) arrayList.get(i11), this.f13658g.getChildCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(View view) {
        X();
        if (view.getId() == R$id.exo_overflow_show) {
            this.f13668q.start();
        } else if (view.getId() == R$id.exo_overflow_hide) {
            this.f13669r.start();
        }
    }

    private void V(Runnable runnable, long j11) {
        if (j11 >= 0) {
            this.f13652a.postDelayed(runnable, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(int i11) {
        int i12 = this.f13677z;
        this.f13677z = i11;
        if (i11 == 2) {
            this.f13652a.setVisibility(8);
        } else if (i12 == 2) {
            this.f13652a.setVisibility(0);
        }
        if (i12 != i11) {
            this.f13652a.Z();
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
        int i11 = this.f13677z;
        if (i11 == 1) {
            this.f13666o.start();
        } else if (i11 == 2) {
            this.f13667p.start();
        } else if (i11 == 3) {
            this.B = true;
        } else if (i11 == 4) {
            return;
        }
        X();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        ViewGroup viewGroup = this.f13656e;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.A ? 0 : 4);
        }
        if (this.f13661j != null) {
            int dimensionPixelSize = this.f13652a.getResources().getDimensionPixelSize(R$dimen.exo_styled_progress_margin_bottom);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f13661j.getLayoutParams();
            if (marginLayoutParams != null) {
                if (this.A) {
                    dimensionPixelSize = 0;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                this.f13661j.setLayoutParams(marginLayoutParams);
            }
            View view = this.f13661j;
            if (view instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                if (this.A) {
                    defaultTimeBar.hideScrubber(true);
                } else {
                    int i11 = this.f13677z;
                    if (i11 == 1) {
                        defaultTimeBar.hideScrubber(false);
                    } else if (i11 != 3) {
                        defaultTimeBar.showScrubber();
                    }
                }
            }
        }
        for (View view2 : this.f13676y) {
            view2.setVisibility((this.A && b0(view2)) ? 4 : 0);
        }
    }

    private boolean f0() {
        int width = (this.f13652a.getWidth() - this.f13652a.getPaddingLeft()) - this.f13652a.getPaddingRight();
        int height = (this.f13652a.getHeight() - this.f13652a.getPaddingBottom()) - this.f13652a.getPaddingTop();
        int iB = B(this.f13654c);
        ViewGroup viewGroup = this.f13654c;
        int paddingLeft = iB - (viewGroup != null ? viewGroup.getPaddingLeft() + this.f13654c.getPaddingRight() : 0);
        int iZ = z(this.f13654c);
        ViewGroup viewGroup2 = this.f13654c;
        return width <= Math.max(paddingLeft, B(this.f13660i) + B(this.f13662k)) || height <= (iZ - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f13654c.getPaddingBottom() : 0)) + (z(this.f13655d) * 2);
    }

    private void y(float f11) {
        ViewGroup viewGroup = this.f13659h;
        if (viewGroup != null) {
            this.f13659h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f11)));
        }
        ViewGroup viewGroup2 = this.f13660i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f11);
        }
        ViewGroup viewGroup3 = this.f13657f;
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
        return view != null && this.f13676y.contains(view);
    }

    public void C() {
        int i11 = this.f13677z;
        if (i11 == 3 || i11 == 2) {
            return;
        }
        W();
        if (!this.C) {
            E();
        } else if (this.f13677z == 1) {
            H();
        } else {
            D();
        }
    }

    public void F() {
        int i11 = this.f13677z;
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
        return this.f13677z == 0 && this.f13652a.isVisible();
    }

    public void P() {
        this.f13652a.addOnLayoutChangeListener(this.f13675x);
    }

    public void Q() {
        this.f13652a.removeOnLayoutChangeListener(this.f13675x);
    }

    public void R(boolean z10, int i11, int i12, int i13, int i14) {
        View view = this.f13653b;
        if (view != null) {
            view.layout(0, 0, i13 - i11, i14 - i12);
        }
    }

    public void W() {
        this.f13652a.removeCallbacks(this.f13674w);
        this.f13652a.removeCallbacks(this.f13671t);
        this.f13652a.removeCallbacks(this.f13673v);
        this.f13652a.removeCallbacks(this.f13672u);
    }

    public void X() {
        if (this.f13677z == 3) {
            return;
        }
        W();
        int showTimeoutMs = this.f13652a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                V(this.f13674w, showTimeoutMs);
            } else if (this.f13677z == 1) {
                V(this.f13672u, 2000L);
            } else {
                V(this.f13673v, showTimeoutMs);
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
            this.f13676y.remove(view);
            return;
        }
        if (this.A && b0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f13676y.add(view);
    }

    public void c0() {
        if (!this.f13652a.isVisible()) {
            this.f13652a.setVisibility(0);
            this.f13652a.f0();
            this.f13652a.d0();
        }
        d0();
    }
}
