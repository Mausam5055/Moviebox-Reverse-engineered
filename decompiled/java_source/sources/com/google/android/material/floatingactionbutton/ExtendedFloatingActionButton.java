package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.b0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    private static final int I = R$style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    static final Property J = new f(Float.class, "width");
    static final Property K = new g(Float.class, "height");
    static final Property L = new h(Float.class, "paddingStart");
    static final Property M = new i(Float.class, "paddingEnd");
    private final CoordinatorLayout.c A;
    private boolean B;
    private boolean C;
    private boolean D;
    protected ColorStateList E;
    private int F;
    private int G;
    private final int H;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f28924r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.a f28925s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f28926t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f28927u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f28928v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.f f28929w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f28930x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f28931y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f28932z;

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f28933a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private l f28934b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private l f28935c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f28936d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f28937e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f28936d = false;
            this.f28937e = true;
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f28936d = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f28937e = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        private static boolean G(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean J(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f28936d || this.f28937e) && ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).e() == view.getId();
        }

        private boolean L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f28933a == null) {
                this.f28933a = new Rect();
            }
            Rect rect = this.f28933a;
            com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        private boolean M(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        protected void E(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f28937e;
            extendedFloatingActionButton.y(z10 ? 3 : 0, z10 ? this.f28935c : this.f28934b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.b(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public boolean h(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!G(view)) {
                return false;
            }
            M(view, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i11) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i12 = 0; i12 < size; i12++) {
                View view = dependencies.get(i12);
                if (!(view instanceof AppBarLayout)) {
                    if (G(view) && M(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i11);
            return true;
        }

        protected void K(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f28937e;
            extendedFloatingActionButton.y(z10 ? 2 : 1, z10 ? this.f28935c : this.f28934b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void g(CoordinatorLayout.f fVar) {
            if (fVar.f7914h == 0) {
                fVar.f7914h = 80;
            }
        }
    }

    class a implements n {
        a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    class b implements n {
        b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f28932z;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f28931y;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.f28931y + ExtendedFloatingActionButton.this.f28932z;
        }
    }

    class c implements n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f28940a;

        c(n nVar) {
            this.f28940a = nVar;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(-1, ExtendedFloatingActionButton.this.G == 0 ? -2 : ExtendedFloatingActionButton.this.G);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (ExtendedFloatingActionButton.this.G != -1) {
                return (ExtendedFloatingActionButton.this.G == 0 || ExtendedFloatingActionButton.this.G == -2) ? this.f28940a.getHeight() : ExtendedFloatingActionButton.this.G;
            }
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f28940a.getHeight();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.height != -2) {
                return (view.getHeight() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.topMargin + marginLayoutParams.bottomMargin)) - (view.getPaddingTop() + view.getPaddingBottom());
            }
            return this.f28940a.getHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f28932z;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f28931y;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f28940a.getWidth();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.width != -2) {
                return (view.getWidth() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)) - (view.getPaddingLeft() + view.getPaddingRight());
            }
            return this.f28940a.getWidth();
        }
    }

    class d implements n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f28942a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n f28943b;

        d(n nVar, n nVar2) {
            this.f28942a = nVar;
            this.f28943b = nVar2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(ExtendedFloatingActionButton.this.F == 0 ? -2 : ExtendedFloatingActionButton.this.F, ExtendedFloatingActionButton.this.G != 0 ? ExtendedFloatingActionButton.this.G : -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            if (ExtendedFloatingActionButton.this.G == -1) {
                return this.f28942a.getHeight();
            }
            return (ExtendedFloatingActionButton.this.G == 0 || ExtendedFloatingActionButton.this.G == -2) ? this.f28943b.getHeight() : ExtendedFloatingActionButton.this.G;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f28932z;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f28931y;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            if (ExtendedFloatingActionButton.this.F == -1) {
                return this.f28942a.getWidth();
            }
            return (ExtendedFloatingActionButton.this.F == 0 || ExtendedFloatingActionButton.this.F == -2) ? this.f28943b.getWidth() : ExtendedFloatingActionButton.this.F;
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f28945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.floatingactionbutton.f f28946b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ l f28947c;

        e(com.google.android.material.floatingactionbutton.f fVar, l lVar) {
            this.f28946b = fVar;
            this.f28947c = lVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f28945a = true;
            this.f28946b.f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f28946b.a();
            if (this.f28945a) {
                return;
            }
            this.f28946b.l(this.f28947c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f28946b.onAnimationStart(animator);
            this.f28945a = false;
        }
    }

    class f extends Property {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f11) {
            view.getLayoutParams().width = f11.intValue();
            view.requestLayout();
        }
    }

    class g extends Property {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f11) {
            view.getLayoutParams().height = f11.intValue();
            view.requestLayout();
        }
    }

    class h extends Property {
        h(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f11) {
            ViewCompat.setPaddingRelative(view, f11.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }
    }

    class i extends Property {
        i(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f11) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f11.intValue(), view.getPaddingBottom());
        }
    }

    class j extends com.google.android.material.floatingactionbutton.b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final n f28949g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f28950h;

        j(com.google.android.material.floatingactionbutton.a aVar, n nVar, boolean z10) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f28949g = nVar;
            this.f28950h = z10;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.C = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f28949g.a().width;
            layoutParams.height = this.f28949g.a().height;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void b() {
            ExtendedFloatingActionButton.this.B = this.f28950h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!this.f28950h) {
                ExtendedFloatingActionButton.this.F = layoutParams.width;
                ExtendedFloatingActionButton.this.G = layoutParams.height;
            }
            layoutParams.width = this.f28949g.a().width;
            layoutParams.height = this.f28949g.a().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.f28949g.getPaddingStart(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f28949g.getPaddingEnd(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return this.f28950h == ExtendedFloatingActionButton.this.B || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int g() {
            return this.f28950h ? R$animator.mtrl_extended_fab_change_size_expand_motion_spec : R$animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public AnimatorSet j() {
            oa.h hVarO = o();
            if (hVarO.j("width")) {
                PropertyValuesHolder[] propertyValuesHolderArrG = hVarO.g("width");
                propertyValuesHolderArrG[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f28949g.getWidth());
                hVarO.l("width", propertyValuesHolderArrG);
            }
            if (hVarO.j("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrG2 = hVarO.g("height");
                propertyValuesHolderArrG2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f28949g.getHeight());
                hVarO.l("height", propertyValuesHolderArrG2);
            }
            if (hVarO.j("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrG3 = hVarO.g("paddingStart");
                propertyValuesHolderArrG3[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.f28949g.getPaddingStart());
                hVarO.l("paddingStart", propertyValuesHolderArrG3);
            }
            if (hVarO.j("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrG4 = hVarO.g("paddingEnd");
                propertyValuesHolderArrG4[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.f28949g.getPaddingEnd());
                hVarO.l("paddingEnd", propertyValuesHolderArrG4);
            }
            if (hVarO.j("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrG5 = hVarO.g("labelOpacity");
                boolean z10 = this.f28950h;
                propertyValuesHolderArrG5[0].setFloatValues(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
                hVarO.l("labelOpacity", propertyValuesHolderArrG5);
            }
            return super.n(hVarO);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void l(l lVar) {
            if (lVar == null) {
                return;
            }
            if (this.f28950h) {
                lVar.a(ExtendedFloatingActionButton.this);
            } else {
                lVar.d(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.B = this.f28950h;
            ExtendedFloatingActionButton.this.C = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    class k extends com.google.android.material.floatingactionbutton.b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f28952g;

        public k(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.f28924r = 0;
            if (this.f28952g) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void b() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return ExtendedFloatingActionButton.this.w();
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void f() {
            super.f();
            this.f28952g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int g() {
            return R$animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void l(l lVar) {
            if (lVar != null) {
                lVar.b(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f28952g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f28924r = 1;
        }
    }

    public static abstract class l {
        public void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    class m extends com.google.android.material.floatingactionbutton.b {
        public m(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.f28924r = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void b() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return ExtendedFloatingActionButton.this.x();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int g() {
            return R$animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void l(l lVar) {
            if (lVar != null) {
                lVar.c(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f28924r = 2;
        }
    }

    interface n {
        ViewGroup.LayoutParams a();

        int getHeight();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.extendedFloatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = I;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28924r = 0;
        com.google.android.material.floatingactionbutton.a aVar = new com.google.android.material.floatingactionbutton.a();
        this.f28925s = aVar;
        m mVar = new m(aVar);
        this.f28928v = mVar;
        k kVar = new k(aVar);
        this.f28929w = kVar;
        this.B = true;
        this.C = false;
        this.D = false;
        Context context2 = getContext();
        this.A = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.ExtendedFloatingActionButton, i11, i12, new int[0]);
        oa.h hVarC = oa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_showMotionSpec);
        oa.h hVarC2 = oa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_hideMotionSpec);
        oa.h hVarC3 = oa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_extendMotionSpec);
        oa.h hVarC4 = oa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.f28930x = typedArrayI.getDimensionPixelSize(R$styleable.ExtendedFloatingActionButton_collapsedSize, -1);
        int i13 = typedArrayI.getInt(R$styleable.ExtendedFloatingActionButton_extendStrategy, 1);
        this.H = i13;
        this.f28931y = ViewCompat.getPaddingStart(this);
        this.f28932z = ViewCompat.getPaddingEnd(this);
        com.google.android.material.floatingactionbutton.a aVar2 = new com.google.android.material.floatingactionbutton.a();
        j jVar = new j(aVar2, v(i13), true);
        this.f28927u = jVar;
        j jVar2 = new j(aVar2, new a(), false);
        this.f28926t = jVar2;
        mVar.i(hVarC);
        kVar.i(hVarC2);
        jVar.i(hVarC3);
        jVar2.i(hVarC4);
        typedArrayI.recycle();
        setShapeAppearanceModel(ab.n.g(context2, attributeSet, i11, i12, ab.n.f526m).m());
        z();
    }

    private boolean A() {
        return (ViewCompat.isLaidOut(this) || (!x() && this.D)) && !isInEditMode();
    }

    private n v(int i11) {
        b bVar = new b();
        c cVar = new c(bVar);
        d dVar = new d(cVar, bVar);
        if (i11 != 1) {
            return i11 != 2 ? dVar : cVar;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        if (getVisibility() == 0) {
            return this.f28924r == 1;
        }
        return this.f28924r != 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean x() {
        if (getVisibility() != 0) {
            return this.f28924r == 2;
        }
        return this.f28924r != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(int i11, l lVar) {
        com.google.android.material.floatingactionbutton.f fVar;
        if (i11 == 0) {
            fVar = this.f28928v;
        } else if (i11 == 1) {
            fVar = this.f28929w;
        } else if (i11 == 2) {
            fVar = this.f28926t;
        } else {
            if (i11 != 3) {
                throw new IllegalStateException("Unknown strategy type: " + i11);
            }
            fVar = this.f28927u;
        }
        if (fVar.d()) {
            return;
        }
        if (!A()) {
            fVar.b();
            fVar.l(lVar);
            return;
        }
        if (i11 == 2) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                this.F = layoutParams.width;
                this.G = layoutParams.height;
            } else {
                this.F = getWidth();
                this.G = getHeight();
            }
        }
        measure(0, 0);
        AnimatorSet animatorSetJ = fVar.j();
        animatorSetJ.addListener(new e(fVar, lVar));
        Iterator it = fVar.k().iterator();
        while (it.hasNext()) {
            animatorSetJ.addListener((Animator.AnimatorListener) it.next());
        }
        animatorSetJ.start();
    }

    private void z() {
        this.E = getTextColors();
    }

    protected void B(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    public void addOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28927u.h(animatorListener);
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28929w.h(animatorListener);
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28928v.h(animatorListener);
    }

    public void addOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28926t.h(animatorListener);
    }

    public void extend() {
        y(3, null);
    }

    public void extend(@NonNull l lVar) {
        y(3, lVar);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        return this.A;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    int getCollapsedSize() {
        int i11 = this.f28930x;
        return i11 < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i11;
    }

    @Nullable
    public oa.h getExtendMotionSpec() {
        return this.f28927u.c();
    }

    @Nullable
    public oa.h getHideMotionSpec() {
        return this.f28929w.c();
    }

    @Nullable
    public oa.h getShowMotionSpec() {
        return this.f28928v.c();
    }

    @Nullable
    public oa.h getShrinkMotionSpec() {
        return this.f28926t.c();
    }

    public void hide() {
        y(1, null);
    }

    public void hide(@NonNull l lVar) {
        y(1, lVar);
    }

    public final boolean isExtended() {
        return this.B;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.B = false;
            this.f28926t.b();
        }
    }

    public void removeOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28927u.e(animatorListener);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28929w.e(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28928v.e(animatorListener);
    }

    public void removeOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28926t.e(animatorListener);
    }

    public void setAnimateShowBeforeLayout(boolean z10) {
        this.D = z10;
    }

    public void setExtendMotionSpec(@Nullable oa.h hVar) {
        this.f28927u.i(hVar);
    }

    public void setExtendMotionSpecResource(int i11) {
        setExtendMotionSpec(oa.h.d(getContext(), i11));
    }

    public void setExtended(boolean z10) {
        if (this.B == z10) {
            return;
        }
        com.google.android.material.floatingactionbutton.f fVar = z10 ? this.f28927u : this.f28926t;
        if (fVar.d()) {
            return;
        }
        fVar.b();
    }

    public void setHideMotionSpec(@Nullable oa.h hVar) {
        this.f28929w.i(hVar);
    }

    public void setHideMotionSpecResource(int i11) {
        setHideMotionSpec(oa.h.d(getContext(), i11));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
        super.setPadding(i11, i12, i13, i14);
        if (!this.B || this.C) {
            return;
        }
        this.f28931y = ViewCompat.getPaddingStart(this);
        this.f28932z = ViewCompat.getPaddingEnd(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i11, int i12, int i13, int i14) {
        super.setPaddingRelative(i11, i12, i13, i14);
        if (!this.B || this.C) {
            return;
        }
        this.f28931y = i11;
        this.f28932z = i13;
    }

    public void setShowMotionSpec(@Nullable oa.h hVar) {
        this.f28928v.i(hVar);
    }

    public void setShowMotionSpecResource(int i11) {
        setShowMotionSpec(oa.h.d(getContext(), i11));
    }

    public void setShrinkMotionSpec(@Nullable oa.h hVar) {
        this.f28926t.i(hVar);
    }

    public void setShrinkMotionSpecResource(int i11) {
        setShrinkMotionSpec(oa.h.d(getContext(), i11));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i11) {
        super.setTextColor(i11);
        z();
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        z();
    }

    public void show() {
        y(0, null);
    }

    public void show(@NonNull l lVar) {
        y(0, lVar);
    }

    public void shrink() {
        y(2, null);
    }

    public void shrink(@NonNull l lVar) {
        y(2, lVar);
    }
}
