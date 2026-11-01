package com.transsion.usercenter.profile;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes6.dex */
public class FixAppBarLayoutBehavior extends AppBarLayout.Behavior {
    private View A;
    private d B;
    private int C;
    private int D;
    private boolean E;
    private VelocityTracker F;
    private int G;
    private RecyclerView H;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f57041q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f57042r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f57043s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f57044t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f57045u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f57046v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f57047w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int[] f57048x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private View f57049y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ViewPager2 f57050z;

    class a extends AppBarLayout.Behavior.a {
        a() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior.c
        public boolean a(AppBarLayout appBarLayout) {
            return true;
        }
    }

    class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            View childAt = FixAppBarLayoutBehavior.this.f57050z.getChildAt(i11);
            if (childAt != null) {
                FixAppBarLayoutBehavior.this.F0(childAt);
            }
        }
    }

    class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FixAppBarLayoutBehavior.this.f57042r = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface d {
        void a(float f11, boolean z10);
    }

    public FixAppBarLayoutBehavior() {
        this.f57042r = false;
        this.f57048x = null;
        this.C = -1;
        this.D = -1;
        this.E = false;
        R0();
    }

    public FixAppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57042r = false;
        this.f57048x = null;
        this.C = -1;
        this.D = -1;
        this.E = false;
        R0();
    }

    private void D0() {
        ViewPager2 viewPager2 = this.f57050z;
        if (viewPager2 != null) {
            viewPager2.registerOnPageChangeCallback(new b());
        }
    }

    private boolean E0() {
        RecyclerView.m layoutManager;
        RecyclerView recyclerView = this.H;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return true;
        }
        View viewFindViewByPosition = layoutManager.findViewByPosition(0);
        return viewFindViewByPosition != null && viewFindViewByPosition.getTop() >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (childAt instanceof RecyclerView) {
                    this.H = (RecyclerView) childAt;
                }
            }
        }
    }

    private boolean H0() {
        return this.f57049y != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I0(AppBarLayout appBarLayout, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f57049y.setScaleX(fFloatValue);
        this.f57049y.setScaleY(fFloatValue);
        O0(appBarLayout, (int) ((1.0f - valueAnimator.getAnimatedFraction()) * this.f57045u));
        if (this.B != null) {
            this.B.a(Math.min((fFloatValue - 1.0f) / 0.3f, 1.0f), true);
        }
    }

    private boolean M0(AppBarLayout appBarLayout, MotionEvent motionEvent) {
        float yVelocity;
        int actionMasked = motionEvent.getActionMasked();
        if (this.D < 0) {
            this.D = ViewConfiguration.get(appBarLayout.getContext()).getScaledTouchSlop();
        }
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.F;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.F.computeCurrentVelocity(1000);
                    yVelocity = this.F.getYVelocity(this.C);
                } else {
                    yVelocity = 0.0f;
                }
                this.f57041q = yVelocity <= 100.0f;
                P0(appBarLayout);
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.C);
                if (iFindPointerIndex < 0) {
                    lg.a.f68839a.i("FixAppBarLayoutBehavior", "Error processing scroll; pointer index for id " + this.C + " not found. Did any MotionEvents get skipped?", false);
                } else {
                    int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    int i11 = this.G - y10;
                    if (!this.E) {
                        int iAbs = Math.abs(i11);
                        int i12 = this.D;
                        if (iAbs > i12) {
                            this.E = true;
                            i11 = i11 > 0 ? i11 - i12 : i11 + i12;
                        }
                    }
                    if (this.E) {
                        this.G = y10;
                        if (G0(y10)) {
                            return Q0(appBarLayout, appBarLayout, i11);
                        }
                        if (E0()) {
                            return Q0(appBarLayout, appBarLayout, i11);
                        }
                    }
                }
            } else if (actionMasked == 3) {
            }
            this.E = false;
            this.C = -1;
            VelocityTracker velocityTracker2 = this.F;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.F = null;
            }
        } else {
            this.C = motionEvent.getPointerId(0);
            this.G = (int) (motionEvent.getY() + 0.5f);
            if (this.F == null) {
                this.F = VelocityTracker.obtain();
            }
        }
        VelocityTracker velocityTracker3 = this.F;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return false;
    }

    private void O0(ViewGroup viewGroup, int i11) {
        int childCount = viewGroup.getChildCount();
        int[] iArr = this.f57048x;
        if (iArr == null || iArr.length != childCount) {
            this.f57048x = new int[childCount];
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = viewGroup.getChildAt(i12);
                if (childAt != null) {
                    this.f57048x[i12] = childAt.getTop();
                } else {
                    this.f57048x[i12] = -1;
                }
            }
        }
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt2 = viewGroup.getChildAt(i13);
            if (childAt2.getId() != R$id.toolbar) {
                if (childAt2.getId() == R$id.collapsing) {
                    O0((ViewGroup) childAt2, i11);
                } else if (this.f57048x[i13] >= 0) {
                    childAt2.getMeasuredHeight();
                    childAt2.setTranslationY(i11);
                }
            }
        }
        ViewPager2 viewPager2 = this.f57050z;
        if (viewPager2 != null) {
            viewPager2.setTranslationY(i11);
        }
    }

    private void P0(final AppBarLayout appBarLayout) {
        if (!H0() || this.f57042r || this.f57044t <= 0.0f) {
            return;
        }
        this.f57042r = true;
        this.f57044t = 0.0f;
        if (this.f57041q) {
            ValueAnimator duration = ValueAnimator.ofFloat(this.f57043s, 1.0f).setDuration(300L);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.usercenter.profile.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f57109a.I0(appBarLayout, valueAnimator);
                }
            });
            duration.addListener(new c());
            duration.start();
            return;
        }
        this.f57049y.setScaleX(1.0f);
        this.f57049y.setScaleY(1.0f);
        O0(appBarLayout, 0);
        this.f57042r = false;
        d dVar = this.B;
        if (dVar != null) {
            dVar.a(0.0f, true);
        }
    }

    private boolean Q0(AppBarLayout appBarLayout, View view, int i11) {
        if (this.f57042r || !H0() || ((i11 >= 0 || appBarLayout.getBottom() < this.f57046v) && (i11 <= 0 || appBarLayout.getBottom() <= this.f57046v))) {
            return false;
        }
        float f11 = this.f57044t + (-i11);
        this.f57044t = f11;
        float fMin = Math.min(f11, 500.0f);
        this.f57044t = fMin;
        float fMax = Math.max(1.0f, (fMin / 500.0f) + 1.0f);
        this.f57043s = fMax;
        this.f57045u = (int) ((this.f57047w / 2) * (fMax - 1.0f));
        this.f57049y.setScaleX(fMax);
        this.f57049y.setScaleY(this.f57043s);
        O0(appBarLayout, this.f57045u);
        view.setScrollY(0);
        if (this.B == null) {
            return true;
        }
        this.B.a(Math.min((this.f57043s - 1.0f) / 0.3f, 1.0f), false);
        return true;
    }

    private void R0() {
        u0(new a());
    }

    private void T0(int i11, AppBarLayout appBarLayout, View view, int i12) {
        if (i12 == 1) {
            int iE = E();
            if ((i11 >= 0 || iE != 0) && (i11 <= 0 || iE != (-appBarLayout.getTotalScrollRange()))) {
                return;
            }
            ViewCompat.stopNestedScroll(view, 1);
        }
    }

    public boolean G0(int i11) {
        View view = this.A;
        return view == null || i11 < view.getTop();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0076  */
    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public boolean k(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int iFindPointerIndex;
        lg.a.f68839a.c("FixAppBarLayoutBehavior", "---onInterceptTouchEvent isOnInterceptTouchEvent: " + super.k(coordinatorLayout, appBarLayout, motionEvent), false);
        if (!H0()) {
            return super.k(coordinatorLayout, appBarLayout, motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.D < 0) {
            this.D = ViewConfiguration.get(appBarLayout.getContext()).getScaledTouchSlop();
        }
        if (actionMasked == 0) {
            this.E = false;
            if (coordinatorLayout.isPointInChildBounds(appBarLayout, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                this.C = motionEvent.getPointerId(0);
                this.G = (int) (motionEvent.getY() + 0.5f);
                if (this.F == null) {
                    this.F = VelocityTracker.obtain();
                }
            }
        } else if (actionMasked == 1) {
            this.E = false;
            this.C = -1;
            velocityTracker = this.F;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.F = null;
            }
        } else if (actionMasked == 2) {
            int i11 = this.C;
            if (i11 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i11)) >= 0) {
                int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                if (Math.abs(this.G - y10) > this.D) {
                    this.E = true;
                    this.G = y10;
                    return true;
                }
            }
        } else if (actionMasked == 3) {
            this.E = false;
            this.C = -1;
            velocityTracker = this.F;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.F = null;
            }
        }
        VelocityTracker velocityTracker2 = this.F;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return super.k(coordinatorLayout, appBarLayout, motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: K0, reason: merged with bridge method [inline-methods] */
    public boolean o(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f11, float f12) {
        if (f12 > 100.0f) {
            this.f57041q = false;
        }
        return super.o(coordinatorLayout, appBarLayout, view, f11, f12);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public void s(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11, int i12, int i13, int i14, int i15) {
        super.s(coordinatorLayout, appBarLayout, view, i11, i12, i13, i14, i15);
        T0(i14, appBarLayout, view, i15);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: N0, reason: merged with bridge method [inline-methods] */
    public boolean D(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, MotionEvent motionEvent) {
        lg.a.f68839a.c("FixAppBarLayoutBehavior", appBarLayout.getScrollY() + "   onTouchEvent " + motionEvent.toString(), false);
        if (H0() && M0(appBarLayout, motionEvent)) {
            return true;
        }
        return super.D(coordinatorLayout, appBarLayout, motionEvent);
    }

    public void S0(d dVar) {
        this.B = dVar;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, com.google.android.material.appbar.i, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: k0 */
    public boolean l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11) {
        boolean zL = super.l(coordinatorLayout, appBarLayout, i11);
        if (this.f57049y == null) {
            View viewFindViewWithTag = coordinatorLayout.findViewWithTag("largeScale");
            this.f57049y = viewFindViewWithTag;
            if (viewFindViewWithTag != null) {
                appBarLayout.setClipChildren(false);
                this.f57047w = this.f57049y.getHeight();
            }
        }
        if (this.f57050z == null) {
            this.f57050z = (ViewPager2) coordinatorLayout.findViewWithTag("viewPager");
            D0();
        }
        if (this.A == null) {
            this.A = coordinatorLayout.findViewWithTag("emptyView");
        }
        this.f57046v = appBarLayout.getHeight();
        this.f57048x = null;
        return zL;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: m0 */
    public void q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11, int i12, int[] iArr, int i13) {
        if (E0() && Q0(appBarLayout, view, i12)) {
            return;
        }
        super.q(coordinatorLayout, appBarLayout, view, i11, i12, iArr, i13);
        T0(i12, appBarLayout, view, i13);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: q0 */
    public boolean A(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i11, int i12) {
        this.f57041q = true;
        return super.A(coordinatorLayout, appBarLayout, view, view2, i11, i12);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /* JADX INFO: renamed from: r0 */
    public void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11) {
        if (H0()) {
            P0(appBarLayout);
        }
        super.C(coordinatorLayout, appBarLayout, view, i11);
    }
}
