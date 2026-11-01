package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$integer;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.b {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f28172z = R$style.Widget_Design_AppBarLayout;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f28177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28178f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WindowInsetsCompat f28179g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List f28180h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f28181i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f28182j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f28183k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f28184l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f28185m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private WeakReference f28186n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f28187o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ValueAnimator f28188p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f28189q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final List f28190r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final long f28191s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final TimeInterpolator f28192t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int[] f28193u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Drawable f28194v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Integer f28195w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float f28196x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Behavior f28197y;

    /* JADX INFO: Access modifiers changed from: protected */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f28198k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f28199l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ValueAnimator f28200m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private SavedState f28201n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private WeakReference f28202o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private c f28203p;

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;
            boolean fullyExpanded;
            boolean fullyScrolled;

            class a implements Parcelable.ClassLoaderCreator {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i11) {
                    return new SavedState[i11];
                }
            }

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.fullyScrolled = parcel.readByte() != 0;
                this.fullyExpanded = parcel.readByte() != 0;
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i11) {
                super.writeToParcel(parcel, i11);
                parcel.writeByte(this.fullyScrolled ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.fullyExpanded ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }
        }

        class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CoordinatorLayout f28204a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f28205b;

            a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f28204a = coordinatorLayout;
                this.f28205b = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.P(this.f28204a, this.f28205b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        class b extends AccessibilityDelegateCompat {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f28207a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ CoordinatorLayout f28208b;

            b(AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout) {
                this.f28207a = appBarLayout;
                this.f28208b = coordinatorLayout;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                View viewF0;
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
                if (this.f28207a.getTotalScrollRange() == 0 || (viewF0 = BaseBehavior.this.f0(this.f28208b)) == null || !BaseBehavior.this.b0(this.f28207a)) {
                    return;
                }
                if (BaseBehavior.this.M() != (-this.f28207a.getTotalScrollRange())) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.setScrollable(true);
                }
                if (BaseBehavior.this.M() != 0) {
                    if (!viewF0.canScrollVertically(-1)) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                    } else if ((-this.f28207a.getDownNestedPreScrollRange()) != 0) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                    }
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public boolean performAccessibilityAction(View view, int i11, Bundle bundle) {
                if (i11 == 4096) {
                    this.f28207a.setExpanded(false);
                    return true;
                }
                if (i11 != 8192) {
                    return super.performAccessibilityAction(view, i11, bundle);
                }
                if (BaseBehavior.this.M() != 0) {
                    View viewF0 = BaseBehavior.this.f0(this.f28208b);
                    if (!viewF0.canScrollVertically(-1)) {
                        this.f28207a.setExpanded(true);
                        return true;
                    }
                    int i12 = -this.f28207a.getDownNestedPreScrollRange();
                    if (i12 != 0) {
                        BaseBehavior.this.q(this.f28208b, this.f28207a, viewF0, 0, i12, new int[]{0, 0}, 1);
                        return true;
                    }
                }
                return false;
            }
        }

        public static abstract class c {
            public abstract boolean a(AppBarLayout appBarLayout);
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        private void U(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            if (ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
                return;
            }
            ViewCompat.setAccessibilityDelegate(coordinatorLayout, new b(appBarLayout, coordinatorLayout));
        }

        private void V(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11, float f11) {
            int iAbs = Math.abs(M() - i11);
            float fAbs = Math.abs(f11);
            W(coordinatorLayout, appBarLayout, i11, fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f));
        }

        private void W(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11, int i12) {
            int iM = M();
            if (iM == i11) {
                ValueAnimator valueAnimator = this.f28200m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f28200m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f28200m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f28200m = valueAnimator3;
                valueAnimator3.setInterpolator(oa.a.f70922e);
                this.f28200m.addUpdateListener(new a(coordinatorLayout, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f28200m.setDuration(Math.min(i12, 600));
            this.f28200m.setIntValues(iM, i11);
            this.f28200m.start();
        }

        private int X(int i11, int i12, int i13) {
            return i11 < (i12 + i13) / 2 ? i12 : i13;
        }

        private boolean Z(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
            return appBarLayout.j() && coordinatorLayout.getHeight() - view.getHeight() <= appBarLayout.getHeight();
        }

        private static boolean a0(int i11, int i12) {
            return (i11 & i12) == i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b0(AppBarLayout appBarLayout) {
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                if (((e) appBarLayout.getChildAt(i11).getLayoutParams()).f28213a != 0) {
                    return true;
                }
            }
            return false;
        }

        private View c0(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = coordinatorLayout.getChildAt(i11);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        private static View d0(AppBarLayout appBarLayout, int i11) {
            int iAbs = Math.abs(i11);
            int childCount = appBarLayout.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = appBarLayout.getChildAt(i12);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int e0(AppBarLayout appBarLayout, int i11) {
            int childCount = appBarLayout.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = appBarLayout.getChildAt(i12);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                e eVar = (e) childAt.getLayoutParams();
                if (a0(eVar.c(), 32)) {
                    top -= ((LinearLayout.LayoutParams) eVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) eVar).bottomMargin;
                }
                int i13 = -i11;
                if (top <= i13 && bottom >= i13) {
                    return i12;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public View f0(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = coordinatorLayout.getChildAt(i11);
                if (((CoordinatorLayout.f) childAt.getLayoutParams()).f() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        private int i0(AppBarLayout appBarLayout, int i11) {
            int iAbs = Math.abs(i11);
            int childCount = appBarLayout.getChildCount();
            int topInset = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = appBarLayout.getChildAt(i12);
                e eVar = (e) childAt.getLayoutParams();
                Interpolator interpolatorD = eVar.d();
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    if (interpolatorD == null) {
                        break;
                    }
                    int iC = eVar.c();
                    if ((iC & 1) != 0) {
                        topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                        if ((iC & 2) != 0) {
                            topInset -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        topInset -= appBarLayout.getTopInset();
                    }
                    if (topInset <= 0) {
                        break;
                    }
                    float f11 = topInset;
                    return Integer.signum(i11) * (childAt.getTop() + Math.round(f11 * interpolatorD.getInterpolation((iAbs - childAt.getTop()) / f11)));
                }
            }
            return i11;
        }

        private boolean w0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            List<View> dependents = coordinatorLayout.getDependents(appBarLayout);
            int size = dependents.size();
            for (int i11 = 0; i11 < size; i11++) {
                CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) dependents.get(i11).getLayoutParams()).f();
                if (cVarF instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) cVarF).K() != 0;
                }
            }
            return false;
        }

        private void x0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int topInset = appBarLayout.getTopInset() + appBarLayout.getPaddingTop();
            int iM = M() - topInset;
            int iE0 = e0(appBarLayout, iM);
            if (iE0 >= 0) {
                View childAt = appBarLayout.getChildAt(iE0);
                e eVar = (e) childAt.getLayoutParams();
                int iC = eVar.c();
                if ((iC & 17) == 17) {
                    int topInset2 = -childAt.getTop();
                    int minimumHeight = -childAt.getBottom();
                    if (iE0 == 0 && ViewCompat.getFitsSystemWindows(appBarLayout) && ViewCompat.getFitsSystemWindows(childAt)) {
                        topInset2 -= appBarLayout.getTopInset();
                    }
                    if (a0(iC, 2)) {
                        minimumHeight += ViewCompat.getMinimumHeight(childAt);
                    } else if (a0(iC, 5)) {
                        int minimumHeight2 = ViewCompat.getMinimumHeight(childAt) + minimumHeight;
                        if (iM < minimumHeight2) {
                            topInset2 = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if (a0(iC, 32)) {
                        topInset2 += ((LinearLayout.LayoutParams) eVar).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) eVar).bottomMargin;
                    }
                    V(coordinatorLayout, appBarLayout, d1.a.b(X(iM, minimumHeight, topInset2) + topInset, -appBarLayout.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void y0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11, int i12, boolean z10) {
            View viewD0 = d0(appBarLayout, i11);
            boolean zY = false;
            if (viewD0 != null) {
                int iC = ((e) viewD0.getLayoutParams()).c();
                if ((iC & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(viewD0);
                    if (i12 <= 0 || (iC & 12) == 0 ? !((iC & 2) == 0 || (-i11) < (viewD0.getBottom() - minimumHeight) - appBarLayout.getTopInset()) : (-i11) >= (viewD0.getBottom() - minimumHeight) - appBarLayout.getTopInset()) {
                        zY = true;
                    }
                }
            }
            if (appBarLayout.isLiftOnScroll()) {
                zY = appBarLayout.y(c0(coordinatorLayout));
            }
            boolean zV = appBarLayout.v(zY);
            if (z10 || (zV && w0(coordinatorLayout, appBarLayout))) {
                if (appBarLayout.getBackground() != null) {
                    appBarLayout.getBackground().jumpToCurrentState();
                }
                if (appBarLayout.getForeground() != null) {
                    appBarLayout.getForeground().jumpToCurrentState();
                }
                if (appBarLayout.getStateListAnimator() != null) {
                    appBarLayout.getStateListAnimator().jumpToCurrentState();
                }
            }
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        int M() {
            return E() + this.f28198k;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
        public boolean H(AppBarLayout appBarLayout) {
            c cVar = this.f28203p;
            if (cVar != null) {
                return cVar.a(appBarLayout);
            }
            WeakReference weakReference = this.f28202o;
            if (weakReference == null) {
                return true;
            }
            View view = (View) weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
        public int K(AppBarLayout appBarLayout) {
            return (-appBarLayout.getDownNestedScrollRange()) + appBarLayout.getTopInset();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
        public int L(AppBarLayout appBarLayout) {
            return appBarLayout.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
        public void N(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            x0(coordinatorLayout, appBarLayout);
            if (appBarLayout.isLiftOnScroll()) {
                appBarLayout.v(appBarLayout.y(c0(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.i, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11) {
            boolean zL = super.l(coordinatorLayout, appBarLayout, i11);
            int pendingAction = appBarLayout.getPendingAction();
            SavedState savedState = this.f28201n;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z10 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i12 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z10) {
                            V(coordinatorLayout, appBarLayout, i12, 0.0f);
                        } else {
                            P(coordinatorLayout, appBarLayout, i12);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z10) {
                            V(coordinatorLayout, appBarLayout, 0, 0.0f);
                        } else {
                            P(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (savedState.fullyScrolled) {
                P(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else if (savedState.fullyExpanded) {
                P(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(savedState.firstVisibleChildIndex);
                P(coordinatorLayout, appBarLayout, (-childAt.getBottom()) + (this.f28201n.firstVisibleChildAtMinimumHeight ? ViewCompat.getMinimumHeight(childAt) + appBarLayout.getTopInset() : Math.round(childAt.getHeight() * this.f28201n.firstVisibleChildPercentageShown)));
            }
            appBarLayout.s();
            this.f28201n = null;
            G(d1.a.b(E(), -appBarLayout.getTotalScrollRange(), 0));
            y0(coordinatorLayout, appBarLayout, E(), 0, true);
            appBarLayout.q(E());
            U(coordinatorLayout, appBarLayout);
            return zL;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
        public boolean m(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11, int i12, int i13, int i14) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) appBarLayout.getLayoutParams())).height != -2) {
                return super.m(coordinatorLayout, appBarLayout, i11, i12, i13, i14);
            }
            coordinatorLayout.onMeasureChild(appBarLayout, i11, i12, View.MeasureSpec.makeMeasureSpec(0, 0), i14);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
        public void q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11, int i12, int[] iArr, int i13) {
            int i14;
            int downNestedPreScrollRange;
            if (i12 != 0) {
                if (i12 < 0) {
                    i14 = -appBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i14;
                } else {
                    i14 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i15 = i14;
                int i16 = downNestedPreScrollRange;
                if (i15 != i16) {
                    iArr[1] = O(coordinatorLayout, appBarLayout, i12, i15, i16);
                }
            }
            if (appBarLayout.isLiftOnScroll()) {
                appBarLayout.v(appBarLayout.y(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
        public void t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
            if (i14 < 0) {
                iArr[1] = O(coordinatorLayout, appBarLayout, i14, -appBarLayout.getDownNestedScrollRange(), 0);
            }
            if (i14 == 0) {
                U(coordinatorLayout, appBarLayout);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
        public void x(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                s0((SavedState) parcelable, true);
                super.x(coordinatorLayout, appBarLayout, this.f28201n.getSuperState());
            } else {
                super.x(coordinatorLayout, appBarLayout, parcelable);
                this.f28201n = null;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
        public Parcelable y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            Parcelable parcelableY = super.y(coordinatorLayout, appBarLayout);
            SavedState savedStateT0 = t0(parcelableY, appBarLayout);
            return savedStateT0 == null ? parcelableY : savedStateT0;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
        public boolean A(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i11, int i12) {
            ValueAnimator valueAnimator;
            boolean z10 = (i11 & 2) != 0 && (appBarLayout.isLiftOnScroll() || Z(coordinatorLayout, appBarLayout, view));
            if (z10 && (valueAnimator = this.f28200m) != null) {
                valueAnimator.cancel();
            }
            this.f28202o = null;
            this.f28199l = i12;
            return z10;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
        public void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11) {
            if (this.f28199l == 0 || i11 == 1) {
                x0(coordinatorLayout, appBarLayout);
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.v(appBarLayout.y(view));
                }
            }
            this.f28202o = new WeakReference(view);
        }

        void s0(SavedState savedState, boolean z10) {
            if (this.f28201n == null || z10) {
                this.f28201n = savedState;
            }
        }

        SavedState t0(Parcelable parcelable, AppBarLayout appBarLayout) {
            int iE = E();
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                int bottom = childAt.getBottom() + iE;
                if (childAt.getTop() + iE <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z10 = iE == 0;
                    savedState.fullyExpanded = z10;
                    savedState.fullyScrolled = !z10 && (-iE) >= appBarLayout.getTotalScrollRange();
                    savedState.firstVisibleChildIndex = i11;
                    savedState.firstVisibleChildAtMinimumHeight = bottom == ViewCompat.getMinimumHeight(childAt) + appBarLayout.getTopInset();
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        public void u0(c cVar) {
            this.f28203p = cVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* JADX INFO: renamed from: v0, reason: merged with bridge method [inline-methods] */
        public int Q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11, int i12, int i13) {
            int iM = M();
            int i14 = 0;
            if (i12 == 0 || iM < i12 || iM > i13) {
                this.f28198k = 0;
            } else {
                int iB = d1.a.b(i11, i12, i13);
                if (iM != iB) {
                    int iI0 = appBarLayout.h() ? i0(appBarLayout, iB) : iB;
                    boolean zG = G(iI0);
                    int i15 = iM - iB;
                    this.f28198k = iB - iI0;
                    if (zG) {
                        while (i14 < appBarLayout.getChildCount()) {
                            e eVar = (e) appBarLayout.getChildAt(i14).getLayoutParams();
                            c cVarB = eVar.b();
                            if (cVarB != null && (eVar.c() & 1) != 0) {
                                cVarB.a(appBarLayout, appBarLayout.getChildAt(i14), E());
                            }
                            i14++;
                        }
                    }
                    if (!zG && appBarLayout.h()) {
                        coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
                    }
                    appBarLayout.q(E());
                    y0(coordinatorLayout, appBarLayout, iB, iB < iM ? -1 : 1, false);
                    i14 = i15;
                }
            }
            U(coordinatorLayout, appBarLayout);
            return i14;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {

        public static abstract class a extends BaseBehavior.c {
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.D(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ int E() {
            return super.E();
        }

        @Override // com.google.android.material.appbar.i
        public /* bridge */ /* synthetic */ boolean G(int i11) {
            return super.G(i11);
        }

        @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.k(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: k0 */
        public /* bridge */ /* synthetic */ boolean l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11) {
            return super.l(coordinatorLayout, appBarLayout, i11);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: l0 */
        public /* bridge */ /* synthetic */ boolean m(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i11, int i12, int i13, int i14) {
            return super.m(coordinatorLayout, appBarLayout, i11, i12, i13, i14);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: m0 */
        public /* bridge */ /* synthetic */ void q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11, int i12, int[] iArr, int i13) {
            super.q(coordinatorLayout, appBarLayout, view, i11, i12, iArr, i13);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: n0 */
        public /* bridge */ /* synthetic */ void t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
            super.t(coordinatorLayout, appBarLayout, view, i11, i12, i13, i14, i15, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: o0 */
        public /* bridge */ /* synthetic */ void x(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.x(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: p0 */
        public /* bridge */ /* synthetic */ Parcelable y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.y(coordinatorLayout, appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: q0 */
        public /* bridge */ /* synthetic */ boolean A(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i11, int i12) {
            return super.A(coordinatorLayout, appBarLayout, view, view2, i11, i12);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: r0 */
        public /* bridge */ /* synthetic */ void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i11) {
            super.C(coordinatorLayout, appBarLayout, view, i11);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void u0(BaseBehavior.c cVar) {
            super.u0(cVar);
        }
    }

    public static class ScrollingViewBehavior extends h {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ScrollingViewBehavior_Layout);
            O(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        private static int R(AppBarLayout appBarLayout) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                return ((BaseBehavior) cVarF).M();
            }
            return 0;
        }

        private void S(View view, View view2) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) view2.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) cVarF).f28198k) + M()) - I(view2));
            }
        }

        private void T(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.v(appBarLayout.y(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.h
        float J(View view) {
            int i11;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iR = R(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iR > downNestedPreScrollRange) && (i11 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iR / i11) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.h
        int L(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.L(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.h
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public AppBarLayout H(List list) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = (View) list.get(i11);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            S(view, view2);
            T(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void i(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override // com.google.android.material.appbar.i, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
            return super.l(coordinatorLayout, view, i11);
        }

        @Override // com.google.android.material.appbar.h, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean m(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, int i13, int i14) {
            return super.m(coordinatorLayout, view, i11, i12, i13, i14);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z10) {
            AppBarLayout appBarLayoutH = H(coordinatorLayout.getDependencies(view));
            if (appBarLayoutH != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                Rect rect3 = this.f28265d;
                rect3.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect3.contains(rect2)) {
                    appBarLayoutH.setExpanded(false, !z10);
                    return true;
                }
            }
            return false;
        }
    }

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.r(windowInsetsCompat);
        }
    }

    public interface b {
        void onOffsetChanged(AppBarLayout appBarLayout, int i11);
    }

    public static abstract class c {
        public abstract void a(AppBarLayout appBarLayout, View view, float f11);
    }

    public static class d extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f28211a = new Rect();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f28212b = new Rect();

        private static void b(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }

        @Override // com.google.android.material.appbar.AppBarLayout.c
        public void a(AppBarLayout appBarLayout, View view, float f11) {
            b(this.f28211a, appBarLayout, view);
            float fAbs = this.f28211a.top - Math.abs(f11);
            if (fAbs > 0.0f) {
                ViewCompat.setClipBounds(view, null);
                view.setTranslationY(0.0f);
                view.setVisibility(0);
                return;
            }
            float fA = 1.0f - d1.a.a(Math.abs(fAbs / this.f28211a.height()), 0.0f, 1.0f);
            float fHeight = (-fAbs) - ((this.f28211a.height() * 0.3f) * (1.0f - (fA * fA)));
            view.setTranslationY(fHeight);
            view.getDrawingRect(this.f28212b);
            this.f28212b.offset(0, (int) (-fHeight));
            if (fHeight >= this.f28212b.height()) {
                view.setVisibility(4);
            } else {
                view.setVisibility(0);
            }
            ViewCompat.setClipBounds(view, this.f28212b);
        }
    }

    public static class e extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f28213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c f28214b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Interpolator f28215c;

        public e(int i11, int i12) {
            super(i11, i12);
            this.f28213a = 1;
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f28213a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AppBarLayout_Layout);
            this.f28213a = typedArrayObtainStyledAttributes.getInt(R$styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            f(typedArrayObtainStyledAttributes.getInt(R$styleable.AppBarLayout_Layout_layout_scrollEffect, 0));
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f28215c = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f28213a = 1;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f28213a = 1;
        }

        public e(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f28213a = 1;
        }

        private c a(int i11) {
            if (i11 != 1) {
                return null;
            }
            return new d();
        }

        public c b() {
            return this.f28214b;
        }

        public int c() {
            return this.f28213a;
        }

        public Interpolator d() {
            return this.f28215c;
        }

        boolean e() {
            int i11 = this.f28213a;
            return (i11 & 1) == 1 && (i11 & 10) != 0;
        }

        public void f(int i11) {
            this.f28214b = a(i11);
        }

        public void g(int i11) {
            this.f28213a = i11;
        }
    }

    public interface f {
    }

    public interface g extends b {
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.appBarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28172z;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28174b = -1;
        this.f28175c = -1;
        this.f28176d = -1;
        this.f28178f = 0;
        this.f28190r = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        int i13 = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            k.a(this);
        }
        k.c(this, attributeSet, i11, i12);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.AppBarLayout, i11, i12, new int[0]);
        ViewCompat.setBackground(this, typedArrayI.getDrawable(R$styleable.AppBarLayout_android_background));
        ColorStateList colorStateListA = xa.c.a(context2, typedArrayI, R$styleable.AppBarLayout_liftOnScrollColor);
        this.f28187o = colorStateListA != null;
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(getBackground());
        if (colorStateListG != null) {
            ab.i iVar = new ab.i();
            iVar.d0(colorStateListG);
            if (colorStateListA != null) {
                k(iVar, colorStateListG, colorStateListA);
            } else {
                l(context2, iVar);
            }
        }
        this.f28191s = wa.j.f(context2, R$attr.motionDurationMedium2, getResources().getInteger(R$integer.app_bar_elevation_anim_duration));
        this.f28192t = wa.j.g(context2, R$attr.motionEasingStandardInterpolator, oa.a.f70918a);
        if (typedArrayI.hasValue(R$styleable.AppBarLayout_expanded)) {
            t(typedArrayI.getBoolean(R$styleable.AppBarLayout_expanded, false), false, false);
        }
        if (typedArrayI.hasValue(R$styleable.AppBarLayout_elevation)) {
            k.b(this, typedArrayI.getDimensionPixelSize(R$styleable.AppBarLayout_elevation, 0));
        }
        if (i13 >= 26) {
            if (typedArrayI.hasValue(R$styleable.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(typedArrayI.getBoolean(R$styleable.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (typedArrayI.hasValue(R$styleable.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(typedArrayI.getBoolean(R$styleable.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.f28196x = getResources().getDimension(R$dimen.design_appbar_elevation);
        this.f28184l = typedArrayI.getBoolean(R$styleable.AppBarLayout_liftOnScroll, false);
        this.f28185m = typedArrayI.getResourceId(R$styleable.AppBarLayout_liftOnScrollTargetViewId, -1);
        setStatusBarForeground(typedArrayI.getDrawable(R$styleable.AppBarLayout_statusBarForeground));
        typedArrayI.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }

    private void A(float f11, float f12) {
        ValueAnimator valueAnimator = this.f28188p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f11, f12);
        this.f28188p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f28191s);
        this.f28188p.setInterpolator(this.f28192t);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f28189q;
        if (animatorUpdateListener != null) {
            this.f28188p.addUpdateListener(animatorUpdateListener);
        }
        this.f28188p.start();
    }

    private void B() {
        setWillNotDraw(!x());
    }

    private void c() {
        WeakReference weakReference = this.f28186n;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f28186n = null;
    }

    private Integer d() {
        Drawable drawable = this.f28194v;
        if (drawable instanceof ab.i) {
            return Integer.valueOf(((ab.i) drawable).C());
        }
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(drawable);
        if (colorStateListG != null) {
            return Integer.valueOf(colorStateListG.getDefaultColor());
        }
        return null;
    }

    private View e(View view) {
        int i11;
        if (this.f28186n == null && (i11 = this.f28185m) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i11) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f28185m);
            }
            if (viewFindViewById != null) {
                this.f28186n = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.f28186n;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    private boolean i() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            if (((e) getChildAt(i11).getLayoutParams()).e()) {
                return true;
            }
        }
        return false;
    }

    private void k(final ab.i iVar, final ColorStateList colorStateList, final ColorStateList colorStateList2) {
        final Integer numF = com.google.android.material.color.b.f(getContext(), R$attr.colorSurface);
        this.f28189q = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f28258a.o(colorStateList, colorStateList2, iVar, numF, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, iVar);
    }

    private void l(Context context, final ab.i iVar) {
        iVar.S(context);
        this.f28189q = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f28263a.p(iVar, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, iVar);
    }

    private void m() {
        Behavior behavior = this.f28197y;
        BaseBehavior.SavedState savedStateT0 = (behavior == null || this.f28174b == -1 || this.f28178f != 0) ? null : behavior.t0(AbsSavedState.EMPTY_STATE, this);
        this.f28174b = -1;
        this.f28175c = -1;
        this.f28176d = -1;
        if (savedStateT0 != null) {
            this.f28197y.s0(savedStateT0, false);
        }
    }

    private boolean n() {
        return getBackground() instanceof ab.i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(ColorStateList colorStateList, ColorStateList colorStateList2, ab.i iVar, Integer num, ValueAnimator valueAnimator) {
        Integer num2;
        int iJ = com.google.android.material.color.b.j(colorStateList.getDefaultColor(), colorStateList2.getDefaultColor(), ((Float) valueAnimator.getAnimatedValue()).floatValue());
        iVar.d0(ColorStateList.valueOf(iJ));
        if (this.f28194v != null && (num2 = this.f28195w) != null && num2.equals(num)) {
            a1.a.n(this.f28194v, iJ);
        }
        if (this.f28190r.isEmpty()) {
            return;
        }
        Iterator it = this.f28190r.iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            if (iVar.z() != null) {
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(ab.i iVar, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        iVar.c0(fFloatValue);
        Drawable drawable = this.f28194v;
        if (drawable instanceof ab.i) {
            ((ab.i) drawable).c0(fFloatValue);
        }
        Iterator it = this.f28190r.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            iVar.C();
            throw null;
        }
    }

    private void t(boolean z10, boolean z11, boolean z12) {
        this.f28178f = (z10 ? 1 : 2) | (z11 ? 4 : 0) | (z12 ? 8 : 0);
        requestLayout();
    }

    private boolean u(boolean z10) {
        if (this.f28182j == z10) {
            return false;
        }
        this.f28182j = z10;
        refreshDrawableState();
        return true;
    }

    private boolean x() {
        return this.f28194v != null && getTopInset() > 0;
    }

    private boolean z() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) ? false : true;
    }

    public void addLiftOnScrollListener(@NonNull f fVar) {
        this.f28190r.add(fVar);
    }

    public void addOnOffsetChangedListener(@Nullable b bVar) {
        if (this.f28180h == null) {
            this.f28180h = new ArrayList();
        }
        if (bVar == null || this.f28180h.contains(bVar)) {
            return;
        }
        this.f28180h.add(bVar);
    }

    public void addOnOffsetChangedListener(g gVar) {
        addOnOffsetChangedListener((b) gVar);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    public void clearLiftOnScrollListener() {
        this.f28190r.clear();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (x()) {
            int iSave = canvas.save();
            canvas.translate(0.0f, -this.f28173a);
            this.f28194v.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f28194v;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-1, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new e((LinearLayout.LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        Behavior behavior = new Behavior();
        this.f28197y = behavior;
        return behavior;
    }

    int getDownNestedPreScrollRange() {
        int iMin;
        int minimumHeight;
        int i11 = this.f28175c;
        if (i11 != -1) {
            return i11;
        }
        int i12 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = eVar.f28213a;
                if ((i13 & 5) != 5) {
                    if (i12 > 0) {
                        break;
                    }
                } else {
                    int i14 = ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                    if ((i13 & 8) != 0) {
                        minimumHeight = ViewCompat.getMinimumHeight(childAt);
                    } else {
                        if ((i13 & 2) != 0) {
                            minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                        } else {
                            iMin = i14 + measuredHeight;
                        }
                        if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                            iMin = Math.min(iMin, measuredHeight - getTopInset());
                        }
                        i12 += iMin;
                    }
                    iMin = i14 + minimumHeight;
                    if (childCount == 0) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i12 += iMin;
                }
            }
        }
        int iMax = Math.max(0, i12);
        this.f28175c = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i11 = this.f28176d;
        if (i11 != -1) {
            return i11;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                int i13 = eVar.f28213a;
                if ((i13 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight;
                if ((i13 & 2) != 0) {
                    minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f28176d = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f28185m;
    }

    @Nullable
    public ab.i getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof ab.i) {
            return (ab.i) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    int getPendingAction() {
        return this.f28178f;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f28194v;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f28179g;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i11 = this.f28174b;
        if (i11 != -1) {
            return i11;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i13 = eVar.f28213a;
                if ((i13 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight + ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                if (i12 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                    minimumHeight -= getTopInset();
                }
                if ((i13 & 2) != 0) {
                    minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f28174b = iMax;
        return iMax;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean h() {
        return this.f28177e;
    }

    public boolean isLiftOnScroll() {
        return this.f28184l;
    }

    public boolean isLifted() {
        return this.f28183k;
    }

    boolean j() {
        return getTotalScrollRange() != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ab.j.e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        if (this.f28193u == null) {
            this.f28193u = new int[4];
        }
        int[] iArr = this.f28193u;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + iArr.length);
        boolean z10 = this.f28182j;
        int i12 = R$attr.state_liftable;
        if (!z10) {
            i12 = -i12;
        }
        iArr[0] = i12;
        iArr[1] = (z10 && this.f28183k) ? R$attr.state_lifted : -R$attr.state_lifted;
        int i13 = R$attr.state_collapsible;
        if (!z10) {
            i13 = -i13;
        }
        iArr[2] = i13;
        iArr[3] = (z10 && this.f28183k) ? R$attr.state_collapsed : -R$attr.state_collapsed;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        boolean z11 = true;
        if (ViewCompat.getFitsSystemWindows(this) && z()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        m();
        this.f28177e = false;
        int childCount2 = getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            if (((e) getChildAt(i15).getLayoutParams()).d() != null) {
                this.f28177e = true;
                break;
            }
        }
        Drawable drawable = this.f28194v;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f28181i) {
            return;
        }
        if (!this.f28184l && !i()) {
            z11 = false;
        }
        u(z11);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int mode = View.MeasureSpec.getMode(i12);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && z()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = d1.a.b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i12));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m();
    }

    void q(int i11) {
        this.f28173a = i11;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List list = this.f28180h;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                b bVar = (b) this.f28180h.get(i12);
                if (bVar != null) {
                    bVar.onOffsetChanged(this, i11);
                }
            }
        }
    }

    WindowInsetsCompat r(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!androidx.core.util.d.a(this.f28179g, windowInsetsCompat2)) {
            this.f28179g = windowInsetsCompat2;
            B();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    public boolean removeLiftOnScrollListener(@NonNull f fVar) {
        return this.f28190r.remove(fVar);
    }

    public void removeOnOffsetChangedListener(@Nullable b bVar) {
        List list = this.f28180h;
        if (list == null || bVar == null) {
            return;
        }
        list.remove(bVar);
    }

    public void removeOnOffsetChangedListener(g gVar) {
        removeOnOffsetChangedListener((b) gVar);
    }

    void s() {
        this.f28178f = 0;
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        ab.j.d(this, f11);
    }

    public void setExpanded(boolean z10) {
        setExpanded(z10, ViewCompat.isLaidOut(this));
    }

    public void setExpanded(boolean z10, boolean z11) {
        t(z10, z11, true);
    }

    public void setLiftOnScroll(boolean z10) {
        this.f28184l = z10;
    }

    public void setLiftOnScrollTargetView(@Nullable View view) {
        this.f28185m = -1;
        if (view == null) {
            c();
        } else {
            this.f28186n = new WeakReference(view);
        }
    }

    public void setLiftOnScrollTargetViewId(int i11) {
        this.f28185m = i11;
        c();
    }

    public boolean setLiftable(boolean z10) {
        this.f28181i = true;
        return u(z10);
    }

    public void setLiftableOverrideEnabled(boolean z10) {
        this.f28181i = z10;
    }

    public boolean setLifted(boolean z10) {
        return w(z10, true);
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i11) {
        if (i11 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i11);
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f28194v;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.f28194v = drawable != null ? drawable.mutate() : null;
            this.f28195w = d();
            Drawable drawable3 = this.f28194v;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f28194v.setState(getDrawableState());
                }
                a1.a.m(this.f28194v, ViewCompat.getLayoutDirection(this));
                this.f28194v.setVisible(getVisibility() == 0, false);
                this.f28194v.setCallback(this);
            }
            B();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(int i11) {
        setStatusBarForeground(new ColorDrawable(i11));
    }

    public void setStatusBarForegroundResource(int i11) {
        setStatusBarForeground(g.a.b(getContext(), i11));
    }

    @Deprecated
    public void setTargetElevation(float f11) {
        k.b(this, f11);
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        boolean z10 = i11 == 0;
        Drawable drawable = this.f28194v;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
    }

    boolean v(boolean z10) {
        return w(z10, !this.f28181i);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f28194v;
    }

    boolean w(boolean z10, boolean z11) {
        if (!z11 || this.f28183k == z10) {
            return false;
        }
        this.f28183k = z10;
        refreshDrawableState();
        if (!n()) {
            return true;
        }
        if (this.f28187o) {
            A(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
            return true;
        }
        if (!this.f28184l) {
            return true;
        }
        A(z10 ? 0.0f : this.f28196x, z10 ? this.f28196x : 0.0f);
        return true;
    }

    boolean y(View view) {
        View viewE = e(view);
        if (viewE != null) {
            view = viewE;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }
}
