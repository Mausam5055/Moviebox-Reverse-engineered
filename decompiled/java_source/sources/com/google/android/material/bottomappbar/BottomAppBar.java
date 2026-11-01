package com.google.android.material.bottomappbar;

import ab.i;
import ab.n;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import oa.k;
import wa.j;

/* JADX INFO: loaded from: classes4.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    public static final int FAB_ANCHOR_MODE_CRADLE = 1;
    public static final int FAB_ANCHOR_MODE_EMBED = 0;
    public static final int FAB_ANIMATION_MODE_SCALE = 0;
    public static final int FAB_ANIMATION_MODE_SLIDE = 1;
    public static final int MENU_ALIGNMENT_MODE_AUTO = 0;
    public static final int MENU_ALIGNMENT_MODE_START = 1;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final int f28337x0 = R$style.Widget_MaterialComponents_BottomAppBar;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final int f28338y0 = R$attr.motionDurationLong2;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static final int f28339z0 = R$attr.motionEasingEmphasizedInterpolator;
    private Integer U;
    private final i V;
    private Animator W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private Animator f28340a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f28341b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f28342c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f28343d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final int f28344e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f28345f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private int f28346g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private final boolean f28347h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f28348i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private final boolean f28349j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private final boolean f28350k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private final boolean f28351l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private int f28352m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private ArrayList f28353n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private int f28354o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f28355p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private boolean f28356q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private Behavior f28357r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f28358s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f28359t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private int f28360u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    AnimatorListenerAdapter f28361v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    k f28362w0;

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final Rect f28363m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private WeakReference f28364n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f28365o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final View.OnLayoutChangeListener f28366p;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f28364n.get();
                if (bottomAppBar == null || !((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                int height = view.getHeight();
                if (view instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.getMeasuredContentRect(Behavior.this.f28363m);
                    int iHeight = Behavior.this.f28363m.height();
                    bottomAppBar.F0(iHeight);
                    bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.f28363m)));
                    height = iHeight;
                }
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                if (Behavior.this.f28365o == 0) {
                    if (bottomAppBar.f28343d0 == 1) {
                        ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                    }
                    ((ViewGroup.MarginLayoutParams) fVar).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) fVar).rightMargin = bottomAppBar.getRightInset();
                    if (f0.p(view)) {
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin += bottomAppBar.f28344e0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin += bottomAppBar.f28344e0;
                    }
                }
                bottomAppBar.E0();
            }
        }

        public Behavior() {
            this.f28366p = new a();
            this.f28363m = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f28366p = new a();
            this.f28363m = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i11) {
            this.f28364n = new WeakReference(bottomAppBar);
            View viewV0 = bottomAppBar.v0();
            if (viewV0 != null && !ViewCompat.isLaidOut(viewV0)) {
                BottomAppBar.I0(bottomAppBar, viewV0);
                this.f28365o = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) viewV0.getLayoutParams())).bottomMargin;
                if (viewV0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewV0;
                    if (bottomAppBar.f28343d0 == 0 && bottomAppBar.f28347h0) {
                        ViewCompat.setElevation(floatingActionButton, 0.0f);
                        floatingActionButton.setCompatElevation(0.0f);
                    }
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R$animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R$animator.mtrl_fab_hide_motion_spec);
                    }
                    bottomAppBar.n0(floatingActionButton);
                }
                viewV0.addOnLayoutChangeListener(this.f28366p);
                bottomAppBar.E0();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i11);
            return super.l(coordinatorLayout, bottomAppBar, i11);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
        public boolean A(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i11, int i12) {
            return bottomAppBar.getHideOnScroll() && super.A(coordinatorLayout, bottomAppBar, view, view2, i11, i12);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f28368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f28369b;

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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f28368a = parcel.readInt();
            this.f28369b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.f28368a);
            parcel.writeInt(this.f28369b ? 1 : 0);
        }
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f28355p0) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.A0(bottomAppBar.f28341b0, BottomAppBar.this.f28356q0);
        }
    }

    class b implements k {
        b() {
        }

        @Override // oa.k
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(FloatingActionButton floatingActionButton) {
            BottomAppBar.this.V.e0((floatingActionButton.getVisibility() == 0 && BottomAppBar.this.f28343d0 == 1) ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // oa.k
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(FloatingActionButton floatingActionButton) {
            if (BottomAppBar.this.f28343d0 != 1) {
                return;
            }
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().j() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().p(translationX);
                BottomAppBar.this.V.invalidateSelf();
            }
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().c() != fMax) {
                BottomAppBar.this.getTopEdgeTreatment().k(fMax);
                BottomAppBar.this.V.invalidateSelf();
            }
            BottomAppBar.this.V.e0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    class c implements f0.d {
        c() {
        }

        @Override // com.google.android.material.internal.f0.d
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f0.e eVar) {
            boolean z10;
            if (BottomAppBar.this.f28349j0) {
                BottomAppBar.this.f28358s0 = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z11 = false;
            if (BottomAppBar.this.f28350k0) {
                z10 = BottomAppBar.this.f28360u0 != windowInsetsCompat.getSystemWindowInsetLeft();
                BottomAppBar.this.f28360u0 = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z10 = false;
            }
            if (BottomAppBar.this.f28351l0) {
                boolean z12 = BottomAppBar.this.f28359t0 != windowInsetsCompat.getSystemWindowInsetRight();
                BottomAppBar.this.f28359t0 = windowInsetsCompat.getSystemWindowInsetRight();
                z11 = z12;
            }
            if (z10 || z11) {
                BottomAppBar.this.o0();
                BottomAppBar.this.E0();
                BottomAppBar.this.D0();
            }
            return windowInsetsCompat;
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.s0();
            BottomAppBar.this.W = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.t0();
        }
    }

    class e extends FloatingActionButton.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f28374a;

        class a extends FloatingActionButton.b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.s0();
            }
        }

        e(int i11) {
            this.f28374a = i11;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
        public void a(FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.x0(this.f28374a));
            floatingActionButton.show(new a());
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.s0();
            BottomAppBar.this.f28355p0 = false;
            BottomAppBar.this.f28340a0 = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.t0();
        }
    }

    class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f28378a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f28379b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f28380c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f28381d;

        g(ActionMenuView actionMenuView, int i11, boolean z10) {
            this.f28379b = actionMenuView;
            this.f28380c = i11;
            this.f28381d = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f28378a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f28378a) {
                return;
            }
            boolean z10 = BottomAppBar.this.f28354o0 != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.replaceMenu(bottomAppBar.f28354o0);
            BottomAppBar.this.H0(this.f28379b, this.f28380c, this.f28381d, z10);
        }
    }

    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f28361v0.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonU0 = BottomAppBar.this.u0();
            if (floatingActionButtonU0 != null) {
                floatingActionButtonU0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomAppBarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28337x0;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        i iVar = new i();
        this.V = iVar;
        this.f28352m0 = 0;
        this.f28354o0 = 0;
        this.f28355p0 = false;
        this.f28356q0 = true;
        this.f28361v0 = new a();
        this.f28362w0 = new b();
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.BottomAppBar, i11, i12, new int[0]);
        ColorStateList colorStateListA = xa.c.a(context2, typedArrayI, R$styleable.BottomAppBar_backgroundTint);
        if (typedArrayI.hasValue(R$styleable.BottomAppBar_navigationIconTint)) {
            setNavigationIconTint(typedArrayI.getColor(R$styleable.BottomAppBar_navigationIconTint, -1));
        }
        int dimensionPixelSize = typedArrayI.getDimensionPixelSize(R$styleable.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.f28341b0 = typedArrayI.getInt(R$styleable.BottomAppBar_fabAlignmentMode, 0);
        this.f28342c0 = typedArrayI.getInt(R$styleable.BottomAppBar_fabAnimationMode, 0);
        this.f28343d0 = typedArrayI.getInt(R$styleable.BottomAppBar_fabAnchorMode, 1);
        this.f28347h0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_removeEmbeddedFabElevation, true);
        this.f28346g0 = typedArrayI.getInt(R$styleable.BottomAppBar_menuAlignmentMode, 0);
        this.f28348i0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_hideOnScroll, false);
        this.f28349j0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.f28350k0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.f28351l0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        this.f28345f0 = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabAlignmentModeEndMargin, -1);
        boolean z10 = typedArrayI.getBoolean(R$styleable.BottomAppBar_addElevationShadow, true);
        typedArrayI.recycle();
        this.f28344e0 = getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fabOffsetEndMode);
        iVar.setShapeAppearanceModel(n.a().D(new com.google.android.material.bottomappbar.d(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).m());
        if (z10) {
            iVar.k0(2);
        } else {
            iVar.k0(1);
            if (Build.VERSION.SDK_INT >= 28) {
                setOutlineAmbientShadowColor(0);
                setOutlineSpotShadowColor(0);
            }
        }
        iVar.g0(Paint.Style.FILL);
        iVar.S(context2);
        setElevation(dimensionPixelSize);
        a1.a.o(iVar, colorStateListA);
        ViewCompat.setBackground(this, iVar);
        f0.e(this, attributeSet, i11, i12, new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(int i11, boolean z10) {
        if (!ViewCompat.isLaidOut(this)) {
            this.f28355p0 = false;
            replaceMenu(this.f28354o0);
            return;
        }
        Animator animator = this.f28340a0;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!y0()) {
            i11 = 0;
            z10 = false;
        }
        r0(i11, z10, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f28340a0 = animatorSet;
        animatorSet.addListener(new f());
        this.f28340a0.start();
    }

    private void B0(int i11) {
        if (this.f28341b0 == i11 || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.W;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f28342c0 == 1) {
            q0(i11, arrayList);
        } else {
            p0(i11, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setInterpolator(j.g(getContext(), f28339z0, oa.a.f70918a));
        this.W = animatorSet;
        animatorSet.addListener(new d());
        this.W.start();
    }

    private Drawable C0(Drawable drawable) {
        if (drawable == null || this.U == null) {
            return drawable;
        }
        Drawable drawableR = a1.a.r(drawable.mutate());
        a1.a.n(drawableR, this.U.intValue());
        return drawableR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f28340a0 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (y0()) {
            G0(actionMenuView, this.f28341b0, this.f28356q0);
        } else {
            G0(actionMenuView, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        getTopEdgeTreatment().p(getFabTranslationX());
        this.V.e0((this.f28356q0 && y0() && this.f28343d0 == 1) ? 1.0f : 0.0f);
        View viewV0 = v0();
        if (viewV0 != null) {
            viewV0.setTranslationY(getFabTranslationY());
            viewV0.setTranslationX(getFabTranslationX());
        }
    }

    private void G0(ActionMenuView actionMenuView, int i11, boolean z10) {
        H0(actionMenuView, i11, z10, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0(final ActionMenuView actionMenuView, final int i11, final boolean z10, boolean z11) {
        Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // java.lang.Runnable
            public void run() {
                ActionMenuView actionMenuView2 = actionMenuView;
                actionMenuView2.setTranslationX(BottomAppBar.this.w0(actionMenuView2, i11, z10));
            }
        };
        if (z11) {
            actionMenuView.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void I0(BottomAppBar bottomAppBar, View view) {
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        fVar.f7910d = 17;
        int i11 = bottomAppBar.f28343d0;
        if (i11 == 1) {
            fVar.f7910d = 17 | 48;
        }
        if (i11 == 0) {
            fVar.f7910d |= 80;
        }
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f28358s0;
    }

    private int getFabAlignmentAnimationDuration() {
        return j.f(getContext(), f28338y0, 300);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return x0(this.f28341b0);
    }

    private float getFabTranslationY() {
        if (this.f28343d0 == 1) {
            return -getTopEdgeTreatment().c();
        }
        View viewV0 = v0();
        return viewV0 != null ? (-((getMeasuredHeight() + getBottomInset()) - viewV0.getMeasuredHeight())) / 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f28360u0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f28359t0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public com.google.android.material.bottomappbar.d getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.d) this.V.G().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(FloatingActionButton floatingActionButton) {
        floatingActionButton.addOnHideAnimationListener(this.f28361v0);
        floatingActionButton.addOnShowAnimationListener(new h());
        floatingActionButton.addTransformationCallback(this.f28362w0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        Animator animator = this.f28340a0;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.W;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void q0(int i11, List list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(u0(), "translationX", x0(i11));
        objectAnimatorOfFloat.setDuration(getFabAlignmentAnimationDuration());
        list.add(objectAnimatorOfFloat);
    }

    private void r0(int i11, boolean z10, List list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        float fabAlignmentAnimationDuration = getFabAlignmentAnimationDuration();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        objectAnimatorOfFloat.setDuration((long) (0.8f * fabAlignmentAnimationDuration));
        if (Math.abs(actionMenuView.getTranslationX() - w0(actionMenuView, i11, z10)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(objectAnimatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat2.setDuration((long) (fabAlignmentAnimationDuration * 0.2f));
            objectAnimatorOfFloat2.addListener(new g(actionMenuView, i11, z10));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        ArrayList arrayList;
        int i11 = this.f28352m0 - 1;
        this.f28352m0 = i11;
        if (i11 != 0 || (arrayList = this.f28353n0) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0() {
        ArrayList arrayList;
        int i11 = this.f28352m0;
        this.f28352m0 = i11 + 1;
        if (i11 != 0 || (arrayList = this.f28353n0) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FloatingActionButton u0() {
        View viewV0 = v0();
        if (viewV0 instanceof FloatingActionButton) {
            return (FloatingActionButton) viewV0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View v0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float x0(int i11) {
        boolean zP = f0.p(this);
        if (i11 != 1) {
            return 0.0f;
        }
        View viewV0 = v0();
        return ((getMeasuredWidth() / 2) - ((zP ? this.f28360u0 : this.f28359t0) + ((this.f28345f0 == -1 || viewV0 == null) ? this.f28344e0 : (viewV0.getMeasuredWidth() / 2) + this.f28345f0))) * (zP ? -1 : 1);
    }

    private boolean y0() {
        FloatingActionButton floatingActionButtonU0 = u0();
        return floatingActionButtonU0 != null && floatingActionButtonU0.isOrWillBeShown();
    }

    boolean F0(int i11) {
        float f11 = i11;
        if (f11 == getTopEdgeTreatment().i()) {
            return false;
        }
        getTopEdgeTreatment().o(f11);
        this.V.invalidateSelf();
        return true;
    }

    public void addOnScrollStateChangedListener(@NonNull HideBottomViewOnScrollBehavior.b bVar) {
        getBehavior().F(bVar);
    }

    public void clearOnScrollStateChangedListeners() {
        getBehavior().H();
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.V.K();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @NonNull
    public Behavior getBehavior() {
        if (this.f28357r0 == null) {
            this.f28357r0 = new Behavior();
        }
        return this.f28357r0;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().c();
    }

    public int getFabAlignmentMode() {
        return this.f28341b0;
    }

    public int getFabAlignmentModeEndMargin() {
        return this.f28345f0;
    }

    public int getFabAnchorMode() {
        return this.f28343d0;
    }

    public int getFabAnimationMode() {
        return this.f28342c0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().g();
    }

    public boolean getHideOnScroll() {
        return this.f28348i0;
    }

    public int getMenuAlignmentMode() {
        return this.f28346g0;
    }

    public boolean isScrolledDown() {
        return getBehavior().I();
    }

    public boolean isScrolledUp() {
        return getBehavior().J();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ab.j.f(this, this.V);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        if (z10) {
            o0();
            E0();
            final View viewV0 = v0();
            if (viewV0 != null && ViewCompat.isLaidOut(viewV0)) {
                viewV0.post(new Runnable() { // from class: com.google.android.material.bottomappbar.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        viewV0.requestLayout();
                    }
                });
            }
        }
        D0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f28341b0 = savedState.f28368a;
        this.f28356q0 = savedState.f28369b;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f28368a = this.f28341b0;
        savedState.f28369b = this.f28356q0;
        return savedState;
    }

    protected void p0(int i11, List list) {
        FloatingActionButton floatingActionButtonU0 = u0();
        if (floatingActionButtonU0 == null || floatingActionButtonU0.isOrWillBeHidden()) {
            return;
        }
        t0();
        floatingActionButtonU0.hide(new e(i11));
    }

    public void performHide() {
        performHide(true);
    }

    public void performHide(boolean z10) {
        getBehavior().N(this, z10);
    }

    public void performShow() {
        performShow(true);
    }

    public void performShow(boolean z10) {
        getBehavior().P(this, z10);
    }

    public void removeOnScrollStateChangedListener(@NonNull HideBottomViewOnScrollBehavior.b bVar) {
        getBehavior().K(bVar);
    }

    public void replaceMenu(int i11) {
        if (i11 != 0) {
            this.f28354o0 = 0;
            getMenu().clear();
            inflateMenu(i11);
        }
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        a1.a.o(this.V, colorStateList);
    }

    public void setCradleVerticalOffset(float f11) {
        if (f11 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().k(f11);
            this.V.invalidateSelf();
            E0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        this.V.c0(f11);
        getBehavior().L(this, this.V.F() - this.V.E());
    }

    public void setFabAlignmentMode(int i11) {
        setFabAlignmentModeAndReplaceMenu(i11, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i11, int i12) {
        this.f28354o0 = i12;
        this.f28355p0 = true;
        A0(i11, this.f28356q0);
        B0(i11);
        this.f28341b0 = i11;
    }

    public void setFabAlignmentModeEndMargin(int i11) {
        if (this.f28345f0 != i11) {
            this.f28345f0 = i11;
            E0();
        }
    }

    public void setFabAnchorMode(int i11) {
        this.f28343d0 = i11;
        E0();
        View viewV0 = v0();
        if (viewV0 != null) {
            I0(this, viewV0);
            viewV0.requestLayout();
            this.V.invalidateSelf();
        }
    }

    public void setFabAnimationMode(int i11) {
        this.f28342c0 = i11;
    }

    void setFabCornerSize(float f11) {
        if (f11 != getTopEdgeTreatment().e()) {
            getTopEdgeTreatment().l(f11);
            this.V.invalidateSelf();
        }
    }

    public void setFabCradleMargin(float f11) {
        if (f11 != getFabCradleMargin()) {
            getTopEdgeTreatment().m(f11);
            this.V.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f11) {
        if (f11 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().n(f11);
            this.V.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z10) {
        this.f28348i0 = z10;
    }

    public void setMenuAlignmentMode(int i11) {
        if (this.f28346g0 != i11) {
            this.f28346g0 = i11;
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                G0(actionMenuView, this.f28341b0, y0());
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(C0(drawable));
    }

    public void setNavigationIconTint(int i11) {
        this.U = Integer.valueOf(i11);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    protected int w0(ActionMenuView actionMenuView, int i11, boolean z10) {
        int dimensionPixelOffset = 0;
        if (this.f28346g0 != 1 && (i11 != 1 || !z10)) {
            return 0;
        }
        boolean zP = f0.p(this);
        int measuredWidth = zP ? getMeasuredWidth() : 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if ((childAt.getLayoutParams() instanceof Toolbar.f) && (((Toolbar.f) childAt.getLayoutParams()).f1104a & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                measuredWidth = zP ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        int right = zP ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i13 = zP ? this.f28359t0 : -this.f28360u0;
        if (getNavigationIcon() == null) {
            dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.m3_bottomappbar_horizontal_padding);
            if (!zP) {
                dimensionPixelOffset = -dimensionPixelOffset;
            }
        }
        return measuredWidth - ((right + i13) + dimensionPixelOffset);
    }
}
