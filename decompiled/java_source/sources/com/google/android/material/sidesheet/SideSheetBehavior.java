package com.google.android.material.sidesheet;

import ab.n;
import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.c implements wa.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f29632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f29633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ab.i f29634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ColorStateList f29635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f29636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f29637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f29638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29639h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29640i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29641j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ViewDragHelper f29642k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f29643l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f29644m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f29645n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29646o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f29647p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f29648q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private WeakReference f29649r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private WeakReference f29650s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29651t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private VelocityTracker f29652u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private wa.i f29653v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f29654w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Set f29655x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final ViewDragHelper.b f29656y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f29631z = R$string.side_sheet_accessibility_pane_title;
    private static final int A = R$style.Widget_Material3_SideSheet;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        final int state;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, @NonNull SideSheetBehavior<?> sideSheetBehavior) {
            super(parcelable);
            this.state = ((SideSheetBehavior) sideSheetBehavior).f29640i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.state);
        }
    }

    class a extends ViewDragHelper.b {
        a() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionHorizontal(View view, int i11, int i12) {
            return d1.a.b(i11, SideSheetBehavior.this.f29632a.g(), SideSheetBehavior.this.f29632a.f());
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int clampViewPositionVertical(View view, int i11, int i12) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public int getViewHorizontalDragRange(View view) {
            return SideSheetBehavior.this.f29645n + SideSheetBehavior.this.g0();
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewDragStateChanged(int i11) {
            if (i11 == 1 && SideSheetBehavior.this.f29639h) {
                SideSheetBehavior.this.F0(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewPositionChanged(View view, int i11, int i12, int i13, int i14) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            View viewB0 = SideSheetBehavior.this.b0();
            if (viewB0 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewB0.getLayoutParams()) != null) {
                SideSheetBehavior.this.f29632a.p(marginLayoutParams, view.getLeft(), view.getRight());
                viewB0.setLayoutParams(marginLayoutParams);
            }
            SideSheetBehavior.this.W(view, i11);
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public void onViewReleased(View view, float f11, float f12) {
            int iS = SideSheetBehavior.this.S(view, f11, f12);
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            sideSheetBehavior.K0(view, iS, sideSheetBehavior.J0());
        }

        @Override // androidx.customview.widget.ViewDragHelper.b
        public boolean tryCaptureView(View view, int i11) {
            return (SideSheetBehavior.this.f29640i == 1 || SideSheetBehavior.this.f29649r == null || SideSheetBehavior.this.f29649r.get() != view) ? false : true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SideSheetBehavior.this.F0(5);
            if (SideSheetBehavior.this.f29649r == null || SideSheetBehavior.this.f29649r.get() == null) {
                return;
            }
            ((View) SideSheetBehavior.this.f29649r.get()).requestLayout();
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f29659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f29660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f29661c = new Runnable() { // from class: com.google.android.material.sidesheet.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f29673a.c();
            }
        };

        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            this.f29660b = false;
            if (SideSheetBehavior.this.f29642k != null && SideSheetBehavior.this.f29642k.continueSettling(true)) {
                b(this.f29659a);
            } else if (SideSheetBehavior.this.f29640i == 2) {
                SideSheetBehavior.this.F0(this.f29659a);
            }
        }

        void b(int i11) {
            if (SideSheetBehavior.this.f29649r == null || SideSheetBehavior.this.f29649r.get() == null) {
                return;
            }
            this.f29659a = i11;
            if (this.f29660b) {
                return;
            }
            ViewCompat.postOnAnimation((View) SideSheetBehavior.this.f29649r.get(), this.f29661c);
            this.f29660b = true;
        }
    }

    public SideSheetBehavior() {
        this.f29637f = new c();
        this.f29639h = true;
        this.f29640i = 5;
        this.f29641j = 5;
        this.f29644m = 0.1f;
        this.f29651t = -1;
        this.f29655x = new LinkedHashSet();
        this.f29656y = new a();
    }

    public SideSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29637f = new c();
        this.f29639h = true;
        this.f29640i = 5;
        this.f29641j = 5;
        this.f29644m = 0.1f;
        this.f29651t = -1;
        this.f29655x = new LinkedHashSet();
        this.f29656y = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SideSheetBehavior_Layout);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_backgroundTint)) {
            this.f29635d = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.SideSheetBehavior_Layout_backgroundTint);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_shapeAppearance)) {
            this.f29636e = n.e(context, attributeSet, 0, A).m();
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SideSheetBehavior_Layout_coplanarSiblingViewId)) {
            A0(typedArrayObtainStyledAttributes.getResourceId(R$styleable.SideSheetBehavior_Layout_coplanarSiblingViewId, -1));
        }
        V(context);
        this.f29638g = typedArrayObtainStyledAttributes.getDimension(R$styleable.SideSheetBehavior_Layout_android_elevation, -1.0f);
        B0(typedArrayObtainStyledAttributes.getBoolean(R$styleable.SideSheetBehavior_Layout_behavior_draggable, true));
        typedArrayObtainStyledAttributes.recycle();
        this.f29633b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private void C0(int i11) {
        d dVar = this.f29632a;
        if (dVar == null || dVar.j() != i11) {
            if (i11 == 0) {
                this.f29632a = new com.google.android.material.sidesheet.b(this);
                if (this.f29636e == null || o0()) {
                    return;
                }
                n.b bVarV = this.f29636e.v();
                bVarV.M(0.0f).B(0.0f);
                N0(bVarV.m());
                return;
            }
            if (i11 == 1) {
                this.f29632a = new com.google.android.material.sidesheet.a(this);
                if (this.f29636e == null || n0()) {
                    return;
                }
                n.b bVarV2 = this.f29636e.v();
                bVarV2.H(0.0f).w(0.0f);
                N0(bVarV2.m());
                return;
            }
            throw new IllegalArgumentException("Invalid sheet edge position value: " + i11 + ". Must be 0 or 1.");
        }
    }

    private void D0(View view, int i11) {
        C0(GravityCompat.getAbsoluteGravity(((CoordinatorLayout.f) view.getLayoutParams()).f7909c, i11) == 3 ? 1 : 0);
    }

    private boolean G0() {
        return this.f29642k != null && (this.f29639h || this.f29640i == 1);
    }

    private boolean I0(View view) {
        return (view.isShown() || ViewCompat.getAccessibilityPaneTitle(view) != null) && this.f29639h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0(View view, int i11, boolean z10) {
        if (!s0(view, i11, z10)) {
            F0(i11);
        } else {
            F0(2);
            this.f29637f.b(i11);
        }
    }

    private void L0() {
        View view;
        WeakReference weakReference = this.f29649r;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (this.f29640i != 5) {
            x0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        if (this.f29640i != 3) {
            x0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    private void M0() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        WeakReference weakReference = this.f29649r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f29649r.get();
        View viewB0 = b0();
        if (viewB0 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewB0.getLayoutParams()) == null) {
            return;
        }
        this.f29632a.o(marginLayoutParams, (int) ((this.f29645n * view.getScaleX()) + this.f29648q));
        viewB0.requestLayout();
    }

    private void N0(n nVar) {
        ab.i iVar = this.f29634c;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
    }

    private void O0(View view) {
        int i11 = this.f29640i == 5 ? 4 : 0;
        if (view.getVisibility() != i11) {
            view.setVisibility(i11);
        }
    }

    private int Q(int i11, View view) {
        int i12 = this.f29640i;
        if (i12 == 1 || i12 == 2) {
            return i11 - this.f29632a.h(view);
        }
        if (i12 == 3) {
            return 0;
        }
        if (i12 == 5) {
            return this.f29632a.e();
        }
        throw new IllegalStateException("Unexpected value: " + this.f29640i);
    }

    private float R(float f11, float f12) {
        return Math.abs(f11 - f12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int S(View view, float f11, float f12) {
        if (q0(f11)) {
            return 3;
        }
        if (H0(view, f11)) {
            if (!this.f29632a.m(f11, f12) && !this.f29632a.l(view)) {
                return 3;
            }
        } else if (f11 == 0.0f || !e.a(f11, f12)) {
            int left = view.getLeft();
            if (Math.abs(left - c0()) < Math.abs(left - this.f29632a.e())) {
                return 3;
            }
        }
        return 5;
    }

    private void T() {
        WeakReference weakReference = this.f29650s;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f29650s = null;
    }

    private AccessibilityViewCommand U(final int i11) {
        return new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.f
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return this.f29665a.t0(i11, view, commandArguments);
            }
        };
    }

    private void V(Context context) {
        if (this.f29636e == null) {
            return;
        }
        ab.i iVar = new ab.i(this.f29636e);
        this.f29634c = iVar;
        iVar.S(context);
        ColorStateList colorStateList = this.f29635d;
        if (colorStateList != null) {
            this.f29634c.d0(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.f29634c.setTint(typedValue.data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(View view, int i11) {
        if (this.f29655x.isEmpty()) {
            return;
        }
        float fB = this.f29632a.b(i11);
        Iterator it = this.f29655x.iterator();
        while (it.hasNext()) {
            ((com.google.android.material.sidesheet.c) it.next()).b(view, fB);
        }
    }

    private void X(View view) {
        if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
            ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(f29631z));
        }
    }

    private int Y(int i11, int i12, int i13, int i14) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, i12, i14);
        if (i13 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i13), 1073741824);
        }
        if (size != 0) {
            i13 = Math.min(size, i13);
        }
        return View.MeasureSpec.makeMeasureSpec(i13, Integer.MIN_VALUE);
    }

    private ValueAnimator.AnimatorUpdateListener a0() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        final View viewB0 = b0();
        if (viewB0 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewB0.getLayoutParams()) == null) {
            return null;
        }
        final int iC = this.f29632a.c(marginLayoutParams);
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.sidesheet.h
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29669a.u0(marginLayoutParams, iC, viewB0, valueAnimator);
            }
        };
    }

    private int d0() {
        d dVar = this.f29632a;
        return (dVar == null || dVar.j() == 0) ? 5 : 3;
    }

    private CoordinatorLayout.f m0() {
        View view;
        WeakReference weakReference = this.f29649r;
        if (weakReference == null || (view = (View) weakReference.get()) == null || !(view.getLayoutParams() instanceof CoordinatorLayout.f)) {
            return null;
        }
        return (CoordinatorLayout.f) view.getLayoutParams();
    }

    private boolean n0() {
        CoordinatorLayout.f fVarM0 = m0();
        return fVarM0 != null && ((ViewGroup.MarginLayoutParams) fVarM0).leftMargin > 0;
    }

    private boolean o0() {
        CoordinatorLayout.f fVarM0 = m0();
        return fVarM0 != null && ((ViewGroup.MarginLayoutParams) fVarM0).rightMargin > 0;
    }

    private boolean p0(MotionEvent motionEvent) {
        return G0() && R((float) this.f29654w, motionEvent.getX()) > ((float) this.f29642k.getTouchSlop());
    }

    private boolean q0(float f11) {
        return this.f29632a.k(f11);
    }

    private boolean r0(View view) {
        ViewParent parent = view.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(view);
    }

    private boolean s0(View view, int i11, boolean z10) {
        int iH0 = h0(i11);
        ViewDragHelper viewDragHelperL0 = l0();
        return viewDragHelperL0 != null && (!z10 ? !viewDragHelperL0.smoothSlideViewTo(view, iH0, view.getTop()) : !viewDragHelperL0.settleCapturedViewAt(iH0, view.getTop()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean t0(int i11, View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        E0(i11);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(ViewGroup.MarginLayoutParams marginLayoutParams, int i11, View view, ValueAnimator valueAnimator) {
        this.f29632a.o(marginLayoutParams, oa.a.c(i11, 0, valueAnimator.getAnimatedFraction()));
        view.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(int i11) {
        View view = (View) this.f29649r.get();
        if (view != null) {
            K0(view, i11, false);
        }
    }

    private void w0(CoordinatorLayout coordinatorLayout) {
        int i11;
        View viewFindViewById;
        if (this.f29650s != null || (i11 = this.f29651t) == -1 || (viewFindViewById = coordinatorLayout.findViewById(i11)) == null) {
            return;
        }
        this.f29650s = new WeakReference(viewFindViewById);
    }

    private void x0(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i11) {
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, U(i11));
    }

    private void y0() {
        VelocityTracker velocityTracker = this.f29652u;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f29652u = null;
        }
    }

    private void z0(View view, Runnable runnable) {
        if (r0(view)) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void A0(int i11) {
        this.f29651t = i11;
        T();
        WeakReference weakReference = this.f29649r;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            if (i11 == -1 || !ViewCompat.isLaidOut(view)) {
                return;
            }
            view.requestLayout();
        }
    }

    public void B0(boolean z10) {
        this.f29639h = z10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f29640i == 1 && actionMasked == 0) {
            return true;
        }
        if (G0()) {
            this.f29642k.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            y0();
        }
        if (this.f29652u == null) {
            this.f29652u = VelocityTracker.obtain();
        }
        this.f29652u.addMovement(motionEvent);
        if (G0() && actionMasked == 2 && !this.f29643l && p0(motionEvent)) {
            this.f29642k.captureChildView(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f29643l;
    }

    public void E0(final int i11) {
        if (i11 == 1 || i11 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("STATE_");
            sb2.append(i11 == 1 ? "DRAGGING" : "SETTLING");
            sb2.append(" should not be set externally.");
            throw new IllegalArgumentException(sb2.toString());
        }
        WeakReference weakReference = this.f29649r;
        if (weakReference == null || weakReference.get() == null) {
            F0(i11);
        } else {
            z0((View) this.f29649r.get(), new Runnable() { // from class: com.google.android.material.sidesheet.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29667a.v0(i11);
                }
            });
        }
    }

    void F0(int i11) {
        View view;
        if (this.f29640i == i11) {
            return;
        }
        this.f29640i = i11;
        if (i11 == 3 || i11 == 5) {
            this.f29641j = i11;
        }
        WeakReference weakReference = this.f29649r;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        O0(view);
        Iterator it = this.f29655x.iterator();
        while (it.hasNext()) {
            ((com.google.android.material.sidesheet.c) it.next()).a(view, i11);
        }
        L0();
    }

    boolean H0(View view, float f11) {
        return this.f29632a.n(view, f11);
    }

    public boolean J0() {
        return true;
    }

    int Z() {
        return this.f29645n;
    }

    public View b0() {
        WeakReference weakReference = this.f29650s;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public int c0() {
        return this.f29632a.d();
    }

    @Override // wa.b
    public void cancelBackProgress() {
        wa.i iVar = this.f29653v;
        if (iVar == null) {
            return;
        }
        iVar.f();
    }

    public float e0() {
        return this.f29644m;
    }

    float f0() {
        return 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void g(CoordinatorLayout.f fVar) {
        super.g(fVar);
        this.f29649r = null;
        this.f29642k = null;
        this.f29653v = null;
    }

    int g0() {
        return this.f29648q;
    }

    int h0(int i11) {
        if (i11 == 3) {
            return c0();
        }
        if (i11 == 5) {
            return this.f29632a.e();
        }
        throw new IllegalArgumentException("Invalid state to get outer edge offset: " + i11);
    }

    @Override // wa.b
    public void handleBackInvoked() {
        wa.i iVar = this.f29653v;
        if (iVar == null) {
            return;
        }
        androidx.activity.b bVarC = iVar.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            E0(5);
        } else {
            this.f29653v.h(bVarC, d0(), new b(), a0());
        }
    }

    int i0() {
        return this.f29647p;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void j() {
        super.j();
        this.f29649r = null;
        this.f29642k = null;
        this.f29653v = null;
    }

    int j0() {
        return this.f29646o;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!I0(view)) {
            this.f29643l = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            y0();
        }
        if (this.f29652u == null) {
            this.f29652u = VelocityTracker.obtain();
        }
        this.f29652u.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f29654w = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f29643l) {
            this.f29643l = false;
            return false;
        }
        return (this.f29643l || (viewDragHelper = this.f29642k) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    int k0() {
        return 500;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.f29649r == null) {
            this.f29649r = new WeakReference(view);
            this.f29653v = new wa.i(view);
            ab.i iVar = this.f29634c;
            if (iVar != null) {
                ViewCompat.setBackground(view, iVar);
                ab.i iVar2 = this.f29634c;
                float elevation = this.f29638g;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(view);
                }
                iVar2.c0(elevation);
            } else {
                ColorStateList colorStateList = this.f29635d;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(view, colorStateList);
                }
            }
            O0(view);
            L0();
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
            }
            X(view);
        }
        D0(view, i11);
        if (this.f29642k == null) {
            this.f29642k = ViewDragHelper.create(coordinatorLayout, this.f29656y);
        }
        int iH = this.f29632a.h(view);
        coordinatorLayout.onLayoutChild(view, i11);
        this.f29646o = coordinatorLayout.getWidth();
        this.f29647p = this.f29632a.i(coordinatorLayout);
        this.f29645n = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f29648q = marginLayoutParams != null ? this.f29632a.a(marginLayoutParams) : 0;
        ViewCompat.offsetLeftAndRight(view, Q(iH, view));
        w0(coordinatorLayout);
        for (com.google.android.material.sidesheet.c cVar : this.f29655x) {
            if (cVar instanceof j) {
                ((j) cVar).c(view);
            }
        }
        return true;
    }

    ViewDragHelper l0() {
        return this.f29642k;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(Y(i11, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i12, -1, marginLayoutParams.width), Y(i13, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i14, -1, marginLayoutParams.height));
        return true;
    }

    @Override // wa.b
    public void startBackProgress(androidx.activity.b bVar) {
        wa.i iVar = this.f29653v;
        if (iVar == null) {
            return;
        }
        iVar.j(bVar);
    }

    @Override // wa.b
    public void updateBackProgress(androidx.activity.b bVar) {
        wa.i iVar = this.f29653v;
        if (iVar == null) {
            return;
        }
        iVar.l(bVar, d0());
        M0();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void x(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.getSuperState() != null) {
            super.x(coordinatorLayout, view, savedState.getSuperState());
        }
        int i11 = savedState.state;
        if (i11 == 1 || i11 == 2) {
            i11 = 5;
        }
        this.f29640i = i11;
        this.f29641j = i11;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable y(CoordinatorLayout coordinatorLayout, View view) {
        return new SavedState(super.y(coordinatorLayout, view), (SideSheetBehavior<?>) this);
    }
}
