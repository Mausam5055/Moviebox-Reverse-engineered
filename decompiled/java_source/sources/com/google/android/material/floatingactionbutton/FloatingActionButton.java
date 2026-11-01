package com.google.android.material.floatingactionbutton;

import ab.n;
import ab.q;
import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.j;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.util.i;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
import oa.h;
import oa.k;

/* JADX INFO: loaded from: classes4.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, ua.a, q, CoordinatorLayout.b {
    public static final int NO_CUSTOM_SIZE = 0;
    public static final int SIZE_AUTO = -1;
    public static final int SIZE_MINI = 1;
    public static final int SIZE_NORMAL = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f28955r = R$style.Widget_Design_FloatingActionButton;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f28956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f28957c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ColorStateList f28958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PorterDuff.Mode f28959e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f28960f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28961g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28962h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28963i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f28964j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f28965k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f28966l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final Rect f28967m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Rect f28968n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j f28969o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ua.b f28970p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.google.android.material.floatingactionbutton.d f28971q;

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f28972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b f28973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f28974c;

        public BaseBehavior() {
            this.f28974c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton_Behavior_Layout);
            this.f28974c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        private static boolean F(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private void G(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i11;
            Rect rect = floatingActionButton.f28967m;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            int i12 = 0;
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) fVar).rightMargin) {
                i11 = rect.right;
            } else {
                i11 = floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) fVar).leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) {
                i12 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) fVar).topMargin) {
                i12 = -rect.top;
            }
            if (i12 != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i12);
            }
            if (i11 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i11);
            }
        }

        private boolean J(View view, FloatingActionButton floatingActionButton) {
            return this.f28974c && ((CoordinatorLayout.f) floatingActionButton.getLayoutParams()).e() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean K(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!J(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f28972a == null) {
                this.f28972a = new Rect();
            }
            Rect rect = this.f28972a;
            com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.f(this.f28973b, false);
                return true;
            }
            floatingActionButton.i(this.f28973b, false);
            return true;
        }

        private boolean L(View view, FloatingActionButton floatingActionButton) {
            if (!J(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.f(this.f28973b, false);
                return true;
            }
            floatingActionButton.i(this.f28973b, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f28967m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public boolean h(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                K(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!F(view)) {
                return false;
            }
            L(view, floatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i11) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i12 = 0; i12 < size; i12++) {
                View view = dependencies.get(i12);
                if (!(view instanceof AppBarLayout)) {
                    if (F(view) && L(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (K(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i11);
            G(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void g(CoordinatorLayout.f fVar) {
            if (fVar.f7914h == 0) {
                fVar.f7914h = 80;
            }
        }
    }

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: E */
        public /* bridge */ /* synthetic */ boolean b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.b(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: H */
        public /* bridge */ /* synthetic */ boolean h(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.h(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: I */
        public /* bridge */ /* synthetic */ boolean l(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i11) {
            return super.l(coordinatorLayout, floatingActionButton, i11);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ void g(CoordinatorLayout.f fVar) {
            super.g(fVar);
        }
    }

    class a implements com.google.android.material.floatingactionbutton.d.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f28975a;

        a(b bVar) {
            this.f28975a = bVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.k
        public void a() {
            this.f28975a.b(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.k
        public void b() {
            this.f28975a.a(FloatingActionButton.this);
        }
    }

    public static abstract class b {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    private class c implements za.b {
        c() {
        }

        @Override // za.b
        public void a(int i11, int i12, int i13, int i14) {
            FloatingActionButton.this.f28967m.set(i11, i12, i13, i14);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i11 + floatingActionButton.f28964j, i12 + FloatingActionButton.this.f28964j, i13 + FloatingActionButton.this.f28964j, i14 + FloatingActionButton.this.f28964j);
        }

        @Override // za.b
        public void b(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // za.b
        public boolean c() {
            return FloatingActionButton.this.f28966l;
        }
    }

    class d implements com.google.android.material.floatingactionbutton.d.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f28978a;

        d(k kVar) {
            this.f28978a = kVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.j
        public void a() {
            this.f28978a.b(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.j
        public void b() {
            this.f28978a.a(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof d) && ((d) obj).f28978a.equals(this.f28978a);
        }

        public int hashCode() {
            return this.f28978a.hashCode();
        }
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.floatingActionButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28955r;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28967m = new Rect();
        this.f28968n = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.FloatingActionButton, i11, i12, new int[0]);
        this.f28956b = xa.c.a(context2, typedArrayI, R$styleable.FloatingActionButton_backgroundTint);
        this.f28957c = f0.r(typedArrayI.getInt(R$styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f28960f = xa.c.a(context2, typedArrayI, R$styleable.FloatingActionButton_rippleColor);
        this.f28962h = typedArrayI.getInt(R$styleable.FloatingActionButton_fabSize, -1);
        this.f28963i = typedArrayI.getDimensionPixelSize(R$styleable.FloatingActionButton_fabCustomSize, 0);
        this.f28961g = typedArrayI.getDimensionPixelSize(R$styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayI.getDimension(R$styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayI.getDimension(R$styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayI.getDimension(R$styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f28966l = typedArrayI.getBoolean(R$styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayI.getDimensionPixelSize(R$styleable.FloatingActionButton_maxImageSize, 0));
        h hVarC = h.c(context2, typedArrayI, R$styleable.FloatingActionButton_showMotionSpec);
        h hVarC2 = h.c(context2, typedArrayI, R$styleable.FloatingActionButton_hideMotionSpec);
        n nVarM = n.g(context2, attributeSet, i11, i12, n.f526m).m();
        boolean z10 = typedArrayI.getBoolean(R$styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayI.getBoolean(R$styleable.FloatingActionButton_android_enabled, true));
        typedArrayI.recycle();
        j jVar = new j(this);
        this.f28969o = jVar;
        jVar.g(attributeSet, i11);
        this.f28970p = new ua.b(this);
        getImpl().a0(nVarM);
        getImpl().x(this.f28956b, this.f28957c, this.f28960f, this.f28961g);
        getImpl().W(dimensionPixelSize);
        getImpl().Q(dimension);
        getImpl().T(dimension2);
        getImpl().X(dimension3);
        getImpl().b0(hVarC);
        getImpl().S(hVarC2);
        getImpl().R(z10);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private com.google.android.material.floatingactionbutton.d c() {
        return new e(this, new c());
    }

    private int d(int i11) {
        int i12 = this.f28963i;
        if (i12 != 0) {
            return i12;
        }
        Resources resources = getResources();
        if (i11 != -1) {
            return i11 != 1 ? resources.getDimensionPixelSize(R$dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R$dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? d(1) : d(0);
    }

    private void e(Rect rect) {
        getMeasuredContentRect(rect);
        int i11 = -this.f28971q.v();
        rect.inset(i11, i11);
    }

    private void g(Rect rect) {
        int i11 = rect.left;
        Rect rect2 = this.f28967m;
        rect.left = i11 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    private com.google.android.material.floatingactionbutton.d getImpl() {
        if (this.f28971q == null) {
            this.f28971q = c();
        }
        return this.f28971q;
    }

    private void h() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f28958d;
        if (colorStateList == null) {
            a1.a.c(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f28959e;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(androidx.appcompat.widget.f.e(colorForState, mode));
    }

    private com.google.android.material.floatingactionbutton.d.k j(b bVar) {
        if (bVar == null) {
            return null;
        }
        return new a(bVar);
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().e(animatorListener);
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().f(animatorListener);
    }

    public void addTransformationCallback(@NonNull k kVar) {
        getImpl().g(new d(kVar));
    }

    public void clearCustomSize() {
        setCustomSize(0);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().E(getDrawableState());
    }

    void f(b bVar, boolean z10) {
        getImpl().w(j(bVar), z10);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f28956b;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f28957c;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().m();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().p();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().s();
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().l();
    }

    @Deprecated
    public boolean getContentRect(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        g(rect);
        return true;
    }

    public int getCustomSize() {
        return this.f28963i;
    }

    public int getExpandedComponentIdHint() {
        return this.f28970p.b();
    }

    @Nullable
    public h getHideMotionSpec() {
        return getImpl().o();
    }

    public void getMeasuredContentRect(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        g(rect);
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f28960f;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f28960f;
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return (n) i.g(getImpl().t());
    }

    @Nullable
    public h getShowMotionSpec() {
        return getImpl().u();
    }

    public int getSize() {
        return this.f28962h;
    }

    int getSizeDimension() {
        return d(this.f28962h);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f28958d;
    }

    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f28959e;
    }

    public boolean getUseCompatPadding() {
        return this.f28966l;
    }

    public void hide() {
        hide(null);
    }

    public void hide(@Nullable b bVar) {
        f(bVar, true);
    }

    void i(b bVar, boolean z10) {
        getImpl().f0(j(bVar), z10);
    }

    @Override // ua.a
    public boolean isExpanded() {
        return this.f28970p.c();
    }

    public boolean isOrWillBeHidden() {
        return getImpl().y();
    }

    public boolean isOrWillBeShown() {
        return getImpl().z();
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().A();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().B();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().D();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        int sizeDimension = getSizeDimension();
        this.f28964j = (sizeDimension - this.f28965k) / 2;
        getImpl().i0();
        int iMin = Math.min(View.resolveSize(sizeDimension, i11), View.resolveSize(sizeDimension, i12));
        Rect rect = this.f28967m;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f28970p.d((Bundle) i.g((Bundle) extendableSavedState.extendableStates.get("expandableWidgetHelper")));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        extendableSavedState.extendableStates.put("expandableWidgetHelper", this.f28970p.e());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            e(this.f28968n);
            if (!this.f28968n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().K(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().L(animatorListener);
    }

    public void removeTransformationCallback(@NonNull k kVar) {
        getImpl().M(new d(kVar));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i11) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f28956b != colorStateList) {
            this.f28956b = colorStateList;
            getImpl().O(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f28957c != mode) {
            this.f28957c = mode;
            getImpl().P(mode);
        }
    }

    public void setCompatElevation(float f11) {
        getImpl().Q(f11);
    }

    public void setCompatElevationResource(int i11) {
        setCompatElevation(getResources().getDimension(i11));
    }

    public void setCompatHoveredFocusedTranslationZ(float f11) {
        getImpl().T(f11);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i11) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i11));
    }

    public void setCompatPressedTranslationZ(float f11) {
        getImpl().X(f11);
    }

    public void setCompatPressedTranslationZResource(int i11) {
        setCompatPressedTranslationZ(getResources().getDimension(i11));
    }

    public void setCustomSize(int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i11 != this.f28963i) {
            this.f28963i = i11;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        getImpl().j0(f11);
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        if (z10 != getImpl().n()) {
            getImpl().R(z10);
            requestLayout();
        }
    }

    public boolean setExpanded(boolean z10) {
        return this.f28970p.f(z10);
    }

    public void setExpandedComponentIdHint(int i11) {
        this.f28970p.g(i11);
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        getImpl().S(hVar);
    }

    public void setHideMotionSpecResource(int i11) {
        setHideMotionSpec(h.d(getContext(), i11));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().h0();
            if (this.f28958d != null) {
                h();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i11) {
        this.f28969o.i(i11);
        h();
    }

    public void setMaxImageSize(int i11) {
        this.f28965k = i11;
        getImpl().V(i11);
    }

    public void setRippleColor(int i11) {
        setRippleColor(ColorStateList.valueOf(i11));
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f28960f != colorStateList) {
            this.f28960f = colorStateList;
            getImpl().Y(this.f28960f);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f11) {
        super.setScaleX(f11);
        getImpl().I();
    }

    @Override // android.view.View
    public void setScaleY(float f11) {
        super.setScaleY(f11);
        getImpl().I();
    }

    public void setShadowPaddingEnabled(boolean z10) {
        getImpl().Z(z10);
    }

    @Override // ab.q
    public void setShapeAppearanceModel(@NonNull n nVar) {
        getImpl().a0(nVar);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        getImpl().b0(hVar);
    }

    public void setShowMotionSpecResource(int i11) {
        setShowMotionSpec(h.d(getContext(), i11));
    }

    public void setSize(int i11) {
        this.f28963i = 0;
        if (i11 != this.f28962h) {
            this.f28962h = i11;
            requestLayout();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f28958d != colorStateList) {
            this.f28958d = colorStateList;
            h();
        }
    }

    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f28959e != mode) {
            this.f28959e = mode;
            h();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f11) {
        super.setTranslationX(f11);
        getImpl().J();
    }

    @Override // android.view.View
    public void setTranslationY(float f11) {
        super.setTranslationY(f11);
        getImpl().J();
    }

    @Override // android.view.View
    public void setTranslationZ(float f11) {
        super.setTranslationZ(f11);
        getImpl().J();
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f28966l != z10) {
            this.f28966l = z10;
            getImpl().C();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return getImpl().n();
    }

    public void show() {
        show(null);
    }

    public void show(@Nullable b bVar) {
        i(bVar, true);
    }
}
