package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.core.R$attr;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.DifferentialMotionFlingController;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ScrollFeedbackProviderCompat;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements NestedScrollingParent3, NestedScrollingChild3, ScrollingView {
    private static final float C = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static final a D = new a();
    private static final int[] E = {R.attr.fillViewport};
    final d A;
    DifferentialMotionFlingController B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f8478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f8479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f8480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private OverScroller f8481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ScrollFeedbackProviderCompat f8482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8483f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f8484g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f8485h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f8486i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f8487j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private VelocityTracker f8488k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f8489l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f8490m;
    public EdgeEffect mEdgeGlowBottom;
    public EdgeEffect mEdgeGlowTop;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f8491n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f8492o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f8493p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f8494q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int[] f8495r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int[] f8496s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f8497t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f8498u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private SavedState f8499v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final NestedScrollingParentHelper f8500w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final NestedScrollingChildHelper f8501x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f8502y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private e f8503z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int scrollPosition;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.scrollPosition);
        }
    }

    static class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            AccessibilityRecordCompat.setMaxScrollX(accessibilityEvent, nestedScrollView.getScrollX());
            AccessibilityRecordCompat.setMaxScrollY(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int scrollRange;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            accessibilityNodeInfoCompat.setScrollable(true);
            if (nestedScrollView.getScrollY() > 0) {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i11, Bundle bundle) {
            if (super.performAccessibilityAction(view, i11, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            int height = nestedScrollView.getHeight();
            Rect rect = new Rect();
            if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                height = rect.height();
            }
            if (i11 != 4096) {
                if (i11 == 8192 || i11 == 16908344) {
                    int iMax = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (iMax == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.I(0, iMax, true);
                    return true;
                }
                if (i11 != 16908346) {
                    return false;
                }
            }
            int iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (iMin == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.I(0, iMin, true);
            return true;
        }
    }

    static class b {
        static boolean a(ViewGroup viewGroup) {
            return viewGroup.getClipToPadding();
        }
    }

    private static final class c {
        public static void a(View view, float f11) {
            try {
                view.setFrameContentVelocity(f11);
            } catch (LinkageError unused) {
            }
        }
    }

    class d implements DifferentialMotionFlingTarget {
        d() {
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public float getScaledScrollFactor() {
            return -NestedScrollView.this.getVerticalScrollFactorCompat();
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public boolean startDifferentialMotionFling(float f11) {
            if (f11 == 0.0f) {
                return false;
            }
            stopDifferentialMotionFling();
            NestedScrollView.this.fling((int) f11);
            return true;
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public void stopDifferentialMotionFling() {
            NestedScrollView.this.f8481d.abortAnimation();
        }
    }

    public interface e {
        void a(NestedScrollView nestedScrollView, int i11, int i12, int i13, int i14);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.nestedScrollViewStyle);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f8480c = new Rect();
        this.f8484g = true;
        this.f8485h = false;
        this.f8486i = null;
        this.f8487j = false;
        this.f8490m = true;
        this.f8494q = -1;
        this.f8495r = new int[2];
        this.f8496s = new int[2];
        d dVar = new d();
        this.A = dVar;
        this.B = new DifferentialMotionFlingController(getContext(), dVar);
        this.mEdgeGlowTop = h.a(context, attributeSet);
        this.mEdgeGlowBottom = h.a(context, attributeSet);
        this.f8478a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        o();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, E, i11, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.f8500w = new NestedScrollingParentHelper(this);
        this.f8501x = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        ViewCompat.setAccessibilityDelegate(this, D);
    }

    private boolean A(int i11, int i12, int i13) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i14 = height + scrollY;
        boolean z10 = false;
        boolean z11 = i11 == 33;
        View viewK = k(z11, i12, i13);
        if (viewK == null) {
            viewK = this;
        }
        if (i12 < scrollY || i13 > i14) {
            B(z11 ? i12 - scrollY : i13 - i14, 0, 1, true);
            z10 = true;
        }
        if (viewK != findFocus()) {
            viewK.requestFocus(i11);
        }
        return z10;
    }

    private int B(int i11, int i12, int i13, boolean z10) {
        return C(i11, -1, null, i12, i13, z10);
    }

    private void D(View view) {
        view.getDrawingRect(this.f8480c);
        offsetDescendantRectToMyCoords(view, this.f8480c);
        int iF = f(this.f8480c);
        if (iF != 0) {
            scrollBy(0, iF);
        }
    }

    private boolean E(Rect rect, boolean z10) {
        int iF = f(rect);
        boolean z11 = iF != 0;
        if (z11) {
            if (z10) {
                scrollBy(0, iF);
            } else {
                smoothScrollBy(0, iF);
            }
        }
        return z11;
    }

    private boolean F(EdgeEffect edgeEffect, int i11) {
        if (i11 > 0) {
            return true;
        }
        return l(-i11) < h.b(edgeEffect) * ((float) getHeight());
    }

    private void G(int i11, int i12, int i13, boolean z10) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f8479b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f8481d.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i12 + scrollY, Math.max(0, height - height2))) - scrollY, i13);
            z(z10);
        } else {
            if (!this.f8481d.isFinished()) {
                a();
            }
            scrollBy(i11, i12);
        }
        this.f8479b = AnimationUtils.currentAnimationTimeMillis();
    }

    private boolean J(MotionEvent motionEvent) {
        boolean z10;
        if (h.b(this.mEdgeGlowTop) != 0.0f) {
            h.d(this.mEdgeGlowTop, 0.0f, motionEvent.getX() / getWidth());
            z10 = true;
        } else {
            z10 = false;
        }
        if (h.b(this.mEdgeGlowBottom) == 0.0f) {
            return z10;
        }
        h.d(this.mEdgeGlowBottom, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    private void a() {
        this.f8481d.abortAnimation();
        stopNestedScroll(1);
    }

    private boolean c() {
        int overScrollMode = getOverScrollMode();
        if (overScrollMode != 0) {
            return overScrollMode == 1 && getScrollRange() > 0;
        }
        return true;
    }

    private boolean d() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private static int e(int i11, int i12, int i13) {
        if (i12 >= i13 || i11 < 0) {
            return 0;
        }
        return i12 + i11 > i13 ? i13 - i12 : i11;
    }

    private ScrollFeedbackProviderCompat getScrollFeedbackProvider() {
        if (this.f8482e == null) {
            this.f8482e = ScrollFeedbackProviderCompat.createProvider(this);
        }
        return this.f8482e;
    }

    private void h(int i11) {
        if (i11 != 0) {
            if (this.f8490m) {
                smoothScrollBy(0, i11);
            } else {
                scrollBy(0, i11);
            }
        }
    }

    private boolean i(int i11) {
        if (h.b(this.mEdgeGlowTop) != 0.0f) {
            if (F(this.mEdgeGlowTop, i11)) {
                this.mEdgeGlowTop.onAbsorb(i11);
            } else {
                fling(-i11);
            }
        } else {
            if (h.b(this.mEdgeGlowBottom) == 0.0f) {
                return false;
            }
            int i12 = -i11;
            if (F(this.mEdgeGlowBottom, i12)) {
                this.mEdgeGlowBottom.onAbsorb(i12);
            } else {
                fling(i12);
            }
        }
        return true;
    }

    private void j() {
        this.f8494q = -1;
        this.f8487j = false;
        x();
        stopNestedScroll(0);
        this.mEdgeGlowTop.onRelease();
        this.mEdgeGlowBottom.onRelease();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    private View k(boolean z10, int i11, int i12) {
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z11 = false;
        for (int i13 = 0; i13 < size; i13++) {
            View view2 = focusables.get(i13);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i11 < bottom && top < i12) {
                boolean z12 = i11 < top && bottom < i12;
                if (view == null) {
                    view = view2;
                    z11 = z12;
                } else {
                    boolean z13 = (z10 && top < view.getTop()) || (!z10 && bottom > view.getBottom());
                    if (z11) {
                        if (z12 && z13) {
                            view = view2;
                        }
                    } else if (z12) {
                        view = view2;
                        z11 = true;
                    } else if (z13) {
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    private float l(int i11) {
        double dLog = Math.log((Math.abs(i11) * 0.35f) / (this.f8478a * 0.015f));
        float f11 = C;
        return (float) (((double) (this.f8478a * 0.015f)) * Math.exp((((double) f11) / (((double) f11) - 1.0d)) * dLog));
    }

    private boolean m(int i11, int i12) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        return i12 >= childAt.getTop() - scrollY && i12 < childAt.getBottom() - scrollY && i11 >= childAt.getLeft() && i11 < childAt.getRight();
    }

    private void n() {
        VelocityTracker velocityTracker = this.f8488k;
        if (velocityTracker == null) {
            this.f8488k = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void o() {
        this.f8481d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f8491n = viewConfiguration.getScaledTouchSlop();
        this.f8492o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f8493p = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void p() {
        if (this.f8488k == null) {
            this.f8488k = VelocityTracker.obtain();
        }
    }

    private void q(int i11, int i12) {
        this.f8483f = i11;
        this.f8494q = i12;
        startNestedScroll(2, 0);
    }

    private boolean r(View view) {
        return !t(view, 0, getHeight());
    }

    private static boolean s(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && s((View) parent, view2);
    }

    private boolean t(View view, int i11, int i12) {
        view.getDrawingRect(this.f8480c);
        offsetDescendantRectToMyCoords(view, this.f8480c);
        return this.f8480c.bottom + i11 >= getScrollY() && this.f8480c.top - i11 <= getScrollY() + i12;
    }

    private void u(int i11, int i12, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i11);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f8501x.dispatchNestedScroll(0, scrollY2, 0, i11 - scrollY2, null, i12, iArr);
    }

    private void v(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f8494q) {
            int i11 = actionIndex == 0 ? 1 : 0;
            this.f8483f = (int) motionEvent.getY(i11);
            this.f8494q = motionEvent.getPointerId(i11);
            VelocityTracker velocityTracker = this.f8488k;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void x() {
        VelocityTracker velocityTracker = this.f8488k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f8488k = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    private int y(int i11, float f11) {
        float fD;
        int iRound;
        float width = f11 / getWidth();
        float height = i11 / getHeight();
        float f12 = 0.0f;
        if (h.b(this.mEdgeGlowTop) == 0.0f) {
            if (h.b(this.mEdgeGlowBottom) != 0.0f) {
                fD = h.d(this.mEdgeGlowBottom, height, 1.0f - width);
                if (h.b(this.mEdgeGlowBottom) == 0.0f) {
                    this.mEdgeGlowBottom.onRelease();
                }
            }
            iRound = Math.round(f12 * getHeight());
            if (iRound != 0) {
                invalidate();
            }
            return iRound;
        }
        fD = -h.d(this.mEdgeGlowTop, -height, width);
        if (h.b(this.mEdgeGlowTop) == 0.0f) {
            this.mEdgeGlowTop.onRelease();
        }
        f12 = fD;
        iRound = Math.round(f12 * getHeight());
        if (iRound != 0) {
            invalidate();
        }
        return iRound;
    }

    private void z(boolean z10) {
        if (z10) {
            startNestedScroll(2, 1);
        } else {
            stopNestedScroll(1);
        }
        this.f8498u = getScrollY();
        postInvalidateOnAnimation();
    }

    int C(int i11, int i12, MotionEvent motionEvent, int i13, int i14, boolean z10) {
        int i15;
        int i16;
        VelocityTracker velocityTracker;
        if (i14 == 1) {
            startNestedScroll(2, i14);
        }
        boolean z11 = false;
        if (dispatchNestedPreScroll(0, i11, this.f8496s, this.f8495r, i14)) {
            i15 = i11 - this.f8496s[1];
            i16 = this.f8495r[1];
        } else {
            i15 = i11;
            i16 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        boolean z12 = c() && !z10;
        boolean z13 = w(0, i15, 0, scrollY, 0, scrollRange, 0, 0, true) && !hasNestedScrollingParent(i14);
        int scrollY2 = getScrollY() - scrollY;
        if (motionEvent != null && scrollY2 != 0) {
            getScrollFeedbackProvider().onScrollProgress(motionEvent.getDeviceId(), motionEvent.getSource(), i12, scrollY2);
        }
        int[] iArr = this.f8496s;
        iArr[1] = 0;
        dispatchNestedScroll(0, scrollY2, 0, i15 - scrollY2, this.f8495r, i14, iArr);
        int i17 = i16 + this.f8495r[1];
        int i18 = i15 - this.f8496s[1];
        int i19 = scrollY + i18;
        if (i19 < 0) {
            if (z12) {
                h.d(this.mEdgeGlowTop, (-i18) / getHeight(), i13 / getWidth());
                if (motionEvent != null) {
                    getScrollFeedbackProvider().onScrollLimit(motionEvent.getDeviceId(), motionEvent.getSource(), i12, true);
                }
                if (!this.mEdgeGlowBottom.isFinished()) {
                    this.mEdgeGlowBottom.onRelease();
                }
            }
        } else if (i19 > scrollRange && z12) {
            h.d(this.mEdgeGlowBottom, i18 / getHeight(), 1.0f - (i13 / getWidth()));
            if (motionEvent != null) {
                getScrollFeedbackProvider().onScrollLimit(motionEvent.getDeviceId(), motionEvent.getSource(), i12, false);
            }
            if (!this.mEdgeGlowTop.isFinished()) {
                this.mEdgeGlowTop.onRelease();
            }
        }
        if (this.mEdgeGlowTop.isFinished() && this.mEdgeGlowBottom.isFinished()) {
            z11 = z13;
        } else {
            postInvalidateOnAnimation();
        }
        if (z11 && i14 == 0 && (velocityTracker = this.f8488k) != null) {
            velocityTracker.clear();
        }
        if (i14 == 1) {
            stopNestedScroll(i14);
            this.mEdgeGlowTop.onRelease();
            this.mEdgeGlowBottom.onRelease();
        }
        return i17;
    }

    void H(int i11, int i12, int i13, boolean z10) {
        G(i11 - getScrollX(), i12 - getScrollY(), i13, z10);
    }

    void I(int i11, int i12, boolean z10) {
        H(i11, i12, 250, z10);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i11);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i11, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    public boolean arrowScroll(int i11) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i11);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !t(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i11 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i11 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i11 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            B(maxScrollAmount, 0, 1, true);
        } else {
            viewFindNextFocus.getDrawingRect(this.f8480c);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.f8480c);
            B(f(this.f8480c), 0, 1, true);
            viewFindNextFocus.requestFocus(i11);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && r(viewFindFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f8481d.isFinished()) {
            return;
        }
        this.f8481d.computeScrollOffset();
        int currY = this.f8481d.getCurrY();
        int iG = g(currY - this.f8498u);
        this.f8498u = currY;
        int[] iArr = this.f8496s;
        iArr[1] = 0;
        dispatchNestedPreScroll(0, iG, iArr, null, 1);
        int i11 = iG - this.f8496s[1];
        int scrollRange = getScrollRange();
        if (Build.VERSION.SDK_INT >= 35) {
            c.a(this, Math.abs(this.f8481d.getCurrVelocity()));
        }
        if (i11 != 0) {
            int scrollY = getScrollY();
            w(0, i11, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i12 = i11 - scrollY2;
            int[] iArr2 = this.f8496s;
            iArr2[1] = 0;
            dispatchNestedScroll(0, scrollY2, 0, i12, this.f8495r, 1, iArr2);
            i11 = i12 - this.f8496s[1];
        }
        if (i11 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                if (i11 < 0) {
                    if (this.mEdgeGlowTop.isFinished()) {
                        this.mEdgeGlowTop.onAbsorb((int) this.f8481d.getCurrVelocity());
                    }
                } else if (this.mEdgeGlowBottom.isFinished()) {
                    this.mEdgeGlowBottom.onAbsorb((int) this.f8481d.getCurrVelocity());
                }
            }
            a();
        }
        if (this.f8481d.isFinished()) {
            stopNestedScroll(1);
        } else {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f11, float f12, boolean z10) {
        return this.f8501x.dispatchNestedFling(f11, f12, z10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f11, float f12) {
        return this.f8501x.dispatchNestedPreFling(f11, f12);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i11, int i12, int[] iArr, int[] iArr2) {
        return dispatchNestedPreScroll(i11, i12, iArr, iArr2, 0);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i11, int i12, int[] iArr, int[] iArr2, int i13) {
        return this.f8501x.dispatchNestedPreScroll(i11, i12, iArr, iArr2, i13);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public void dispatchNestedScroll(int i11, int i12, int i13, int i14, int[] iArr, int i15, int[] iArr2) {
        this.f8501x.dispatchNestedScroll(i11, i12, i13, i14, iArr, i15, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i11, int i12, int i13, int i14, int[] iArr) {
        return this.f8501x.dispatchNestedScroll(i11, i12, i13, i14, iArr);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i11, int i12, int i13, int i14, int[] iArr, int i15) {
        return this.f8501x.dispatchNestedScroll(i11, i12, i13, i14, iArr, i15);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        int paddingLeft2 = 0;
        if (!this.mEdgeGlowTop.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (b.a(this)) {
                width -= getPaddingLeft() + getPaddingRight();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (b.a(this)) {
                height -= getPaddingTop() + getPaddingBottom();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            this.mEdgeGlowTop.setSize(width, height);
            if (this.mEdgeGlowTop.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave);
        }
        if (this.mEdgeGlowBottom.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (b.a(this)) {
            width2 -= getPaddingLeft() + getPaddingRight();
            paddingLeft2 = getPaddingLeft();
        }
        if (b.a(this)) {
            height2 -= getPaddingTop() + getPaddingBottom();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        this.mEdgeGlowBottom.setSize(width2, height2);
        if (this.mEdgeGlowBottom.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(iSave2);
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        this.f8480c.setEmpty();
        if (!d()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            return keyEvent.isAltPressed() ? fullScroll(33) : arrowScroll(33);
        }
        if (keyCode == 20) {
            return keyEvent.isAltPressed() ? fullScroll(130) : arrowScroll(130);
        }
        if (keyCode == 62) {
            pageScroll(keyEvent.isShiftPressed() ? 33 : 130);
            return false;
        }
        if (keyCode == 92) {
            return fullScroll(33);
        }
        if (keyCode == 93) {
            return fullScroll(130);
        }
        if (keyCode == 122) {
            pageScroll(33);
            return false;
        }
        if (keyCode != 123) {
            return false;
        }
        pageScroll(130);
        return false;
    }

    protected int f(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i11 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i12 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i11 - verticalFadingEdgeLength : i11;
        int i13 = rect.bottom;
        if (i13 > i12 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i12, (childAt.getBottom() + layoutParams.bottomMargin) - i11);
        }
        if (rect.top >= scrollY || i13 >= i12) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i12 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    public void fling(int i11) {
        if (getChildCount() > 0) {
            this.f8481d.fling(getScrollX(), getScrollY(), 0, i11, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            z(true);
            if (Build.VERSION.SDK_INT >= 35) {
                c.a(this, Math.abs(this.f8481d.getCurrVelocity()));
            }
        }
    }

    public boolean fullScroll(int i11) {
        int childCount;
        boolean z10 = i11 == 130;
        int height = getHeight();
        Rect rect = this.f8480c;
        rect.top = 0;
        rect.bottom = height;
        if (z10 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f8480c.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f8480c;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f8480c;
        return A(i11, rect3.top, rect3.bottom);
    }

    int g(int i11) {
        int height = getHeight();
        if (i11 > 0 && h.b(this.mEdgeGlowTop) != 0.0f) {
            int iRound = Math.round(((-height) / 4.0f) * h.d(this.mEdgeGlowTop, ((-i11) * 4.0f) / height, 0.5f));
            if (iRound != i11) {
                this.mEdgeGlowTop.finish();
            }
            return i11 - iRound;
        }
        if (i11 >= 0 || h.b(this.mEdgeGlowBottom) == 0.0f) {
            return i11;
        }
        float f11 = height;
        int iRound2 = Math.round((f11 / 4.0f) * h.d(this.mEdgeGlowBottom, (i11 * 4.0f) / f11, 0.5f));
        if (iRound2 != i11) {
            this.mEdgeGlowBottom.finish();
        }
        return i11 - iRound2;
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f8500w.getNestedScrollAxes();
    }

    int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    float getVerticalScrollFactorCompat() {
        if (this.f8502y == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f8502y = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f8502y;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i11) {
        return this.f8501x.hasNestedScrollingParent(i11);
    }

    public boolean isFillViewport() {
        return this.f8489l;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f8501x.isNestedScrollingEnabled();
    }

    public boolean isSmoothScrollingEnabled() {
        return this.f8490m;
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i11, int i12) {
        view.measure(ViewGroup.getChildMeasureSpec(i11, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i11, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i12, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f8485h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i11;
        int width;
        float axisValue;
        if (motionEvent.getAction() == 8 && !this.f8487j) {
            if (MotionEventCompat.isFromSource(motionEvent, 2)) {
                i11 = 9;
                axisValue = motionEvent.getAxisValue(9);
                width = (int) motionEvent.getX();
            } else if (MotionEventCompat.isFromSource(motionEvent, 4194304)) {
                float axisValue2 = motionEvent.getAxisValue(26);
                width = getWidth() / 2;
                i11 = 26;
                axisValue = axisValue2;
            } else {
                i11 = 0;
                width = 0;
                axisValue = 0.0f;
            }
            if (axisValue != 0.0f) {
                C(-((int) (axisValue * getVerticalScrollFactorCompat())), i11, motionEvent, width, 1, MotionEventCompat.isFromSource(motionEvent, InputDeviceCompat.SOURCE_MOUSE));
                if (i11 == 0) {
                    return true;
                }
                this.B.onMotionEvent(motionEvent, i11);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007e  */
    /* JADX WARN: Code duplicated, block: B:33:0x009c  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action == 2 && this.f8487j) {
            return true;
        }
        int i11 = action & 255;
        if (i11 == 0) {
            int y10 = (int) motionEvent.getY();
            if (m((int) motionEvent.getX(), y10)) {
                this.f8483f = y10;
                this.f8494q = motionEvent.getPointerId(0);
                n();
                this.f8488k.addMovement(motionEvent);
                this.f8481d.computeScrollOffset();
                if (!J(motionEvent) && this.f8481d.isFinished()) {
                    z10 = false;
                }
                this.f8487j = z10;
                startNestedScroll(2, 0);
            } else {
                if (!J(motionEvent) && this.f8481d.isFinished()) {
                    z10 = false;
                }
                this.f8487j = z10;
                x();
            }
        } else if (i11 == 1) {
            this.f8487j = false;
            this.f8494q = -1;
            x();
            if (this.f8481d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            stopNestedScroll(0);
        } else if (i11 == 2) {
            int i12 = this.f8494q;
            if (i12 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i12);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + i12 + " in onInterceptTouchEvent");
                } else {
                    int y11 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y11 - this.f8483f) > this.f8491n && (2 & getNestedScrollAxes()) == 0) {
                        this.f8487j = true;
                        this.f8483f = y11;
                        p();
                        this.f8488k.addMovement(motionEvent);
                        this.f8497t = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i11 == 3) {
            this.f8487j = false;
            this.f8494q = -1;
            x();
            if (this.f8481d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            stopNestedScroll(0);
        } else if (i11 == 6) {
            v(motionEvent);
        }
        return this.f8487j;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        int measuredHeight = 0;
        this.f8484g = false;
        View view = this.f8486i;
        if (view != null && s(view, this)) {
            D(this.f8486i);
        }
        this.f8486i = null;
        if (!this.f8485h) {
            if (this.f8499v != null) {
                scrollTo(getScrollX(), this.f8499v.scrollPosition);
                this.f8499v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i14 - i12) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iE = e(scrollY, paddingTop, measuredHeight);
            if (iE != scrollY) {
                scrollTo(getScrollX(), iE);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f8485h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (this.f8489l && View.MeasureSpec.getMode(i12) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i11, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f11, float f12, boolean z10) {
        if (z10) {
            return false;
        }
        dispatchNestedFling(0.0f, f12, true);
        fling((int) f12);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f11, float f12) {
        return dispatchNestedPreFling(f11, f12);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr) {
        onNestedPreScroll(view, i11, i12, iArr, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr, int i13) {
        dispatchNestedPreScroll(i11, i12, iArr, null, i13);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14) {
        u(i14, 0, null);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14, int i15) {
        u(i14, i15, null);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        u(i14, i15, iArr);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i11) {
        onNestedScrollAccepted(view, view2, i11, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i11, int i12) {
        this.f8500w.onNestedScrollAccepted(view, view2, i11, i12);
        startNestedScroll(2, i12);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i11, int i12, boolean z10, boolean z11) {
        super.scrollTo(i11, i12);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i11, Rect rect) {
        if (i11 == 2) {
            i11 = 130;
        } else if (i11 == 1) {
            i11 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i11) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i11);
        if (viewFindNextFocus == null || r(viewFindNextFocus)) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i11, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f8499v = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i11, int i12, int i13, int i14) {
        super.onScrollChanged(i11, i12, i13, i14);
        e eVar = this.f8503z;
        if (eVar != null) {
            eVar.a(this, i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !t(viewFindFocus, 0, i14)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.f8480c);
        offsetDescendantRectToMyCoords(viewFindFocus, this.f8480c);
        h(f(this.f8480c));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i11) {
        return onStartNestedScroll(view, view2, i11, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i11, int i12) {
        return (i11 & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i11) {
        this.f8500w.onStopNestedScroll(view, i11);
        stopNestedScroll(i11);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        p();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f8497t = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(0.0f, this.f8497t);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f8488k;
                velocityTracker.computeCurrentVelocity(1000, this.f8493p);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f8494q);
                if (Math.abs(yVelocity) >= this.f8492o) {
                    if (!i(yVelocity)) {
                        int i11 = -yVelocity;
                        float f11 = i11;
                        if (!dispatchNestedPreFling(0.0f, f11)) {
                            dispatchNestedFling(0.0f, f11, true);
                            fling(i11);
                        }
                    }
                } else if (this.f8481d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                j();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f8494q);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f8494q + " in onTouchEvent");
                } else {
                    int y10 = (int) motionEvent.getY(iFindPointerIndex);
                    int i12 = this.f8483f - y10;
                    int iY = i12 - y(i12, motionEvent.getX(iFindPointerIndex));
                    if (!this.f8487j && Math.abs(iY) > this.f8491n) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f8487j = true;
                        iY = iY > 0 ? iY - this.f8491n : iY + this.f8491n;
                    }
                    int i13 = iY;
                    if (this.f8487j) {
                        int iC = C(i13, 1, motionEvent, (int) motionEvent.getX(iFindPointerIndex), 0, false);
                        this.f8483f = y10 - iC;
                        this.f8497t += iC;
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f8487j && getChildCount() > 0 && this.f8481d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                j();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f8483f = (int) motionEvent.getY(actionIndex);
                this.f8494q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                v(motionEvent);
                this.f8483f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f8494q));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f8487j && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f8481d.isFinished()) {
                a();
            }
            q((int) motionEvent.getY(), motionEvent.getPointerId(0));
        }
        VelocityTracker velocityTracker2 = this.f8488k;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public boolean pageScroll(int i11) {
        boolean z10 = i11 == 130;
        int height = getHeight();
        if (z10) {
            this.f8480c.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f8480c;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f8480c.top = getScrollY() - height;
            Rect rect2 = this.f8480c;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f8480c;
        int i12 = rect3.top;
        int i13 = height + i12;
        rect3.bottom = i13;
        return A(i11, i12, i13);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (this.f8484g) {
            this.f8486i = view2;
        } else {
            D(view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return E(rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (z10) {
            x();
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f8484g = true;
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollTo(int i11, int i12) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int iE = e(i11, width, width2);
            int iE2 = e(i12, height, height2);
            if (iE == getScrollX() && iE2 == getScrollY()) {
                return;
            }
            super.scrollTo(iE, iE2);
        }
    }

    public void setFillViewport(boolean z10) {
        if (z10 != this.f8489l) {
            this.f8489l = z10;
            requestLayout();
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z10) {
        this.f8501x.setNestedScrollingEnabled(z10);
    }

    public void setOnScrollChangeListener(e eVar) {
        this.f8503z = eVar;
    }

    public void setSmoothScrollingEnabled(boolean z10) {
        this.f8490m = z10;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public final void smoothScrollBy(int i11, int i12) {
        G(i11, i12, 250, false);
    }

    public final void smoothScrollBy(int i11, int i12, int i13) {
        G(i11, i12, i13, false);
    }

    public final void smoothScrollTo(int i11, int i12) {
        H(i11, i12, 250, false);
    }

    public final void smoothScrollTo(int i11, int i12, int i13) {
        H(i11, i12, i13, false);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i11) {
        return startNestedScroll(i11, 0);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i11, int i12) {
        return this.f8501x.startNestedScroll(i11, i12);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i11) {
        this.f8501x.stopNestedScroll(i11);
    }

    boolean w(int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z10) {
        boolean z11;
        boolean z12;
        int overScrollMode = getOverScrollMode();
        boolean z13 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z14 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z15 = overScrollMode == 0 || (overScrollMode == 1 && z13);
        boolean z16 = overScrollMode == 0 || (overScrollMode == 1 && z14);
        int i19 = i13 + i11;
        int i20 = !z15 ? 0 : i17;
        int i21 = i14 + i12;
        int i22 = !z16 ? 0 : i18;
        int i23 = -i20;
        int i24 = i20 + i15;
        int i25 = -i22;
        int i26 = i22 + i16;
        if (i19 > i24) {
            i19 = i24;
            z11 = true;
        } else if (i19 < i23) {
            z11 = true;
            i19 = i23;
        } else {
            z11 = false;
        }
        if (i21 > i26) {
            i21 = i26;
            z12 = true;
        } else if (i21 < i25) {
            z12 = true;
            i21 = i25;
        } else {
            z12 = false;
        }
        if (z12 && !hasNestedScrollingParent(1)) {
            this.f8481d.springBack(i19, i21, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i19, i21, z11, z12);
        return z11 || z12;
    }
}
