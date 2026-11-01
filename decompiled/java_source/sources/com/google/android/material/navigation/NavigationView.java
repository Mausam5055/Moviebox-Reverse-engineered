package com.google.android.material.navigation;

import ab.j;
import ab.n;
import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.g;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.widget.j0;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.r;
import com.google.android.material.internal.s;
import java.util.Objects;
import wa.i;

/* JADX INFO: loaded from: classes4.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements wa.b {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int[] f29368w = {R.attr.state_checked};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int[] f29369x = {-16842910};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f29370y = R$style.Widget_Design_NavigationView;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final r f29371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final s f29372i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f29373j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f29374k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private MenuInflater f29375l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f29376m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f29377n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f29378o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f29379p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f29380q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f29381r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ab.r f29382s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final i f29383t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final wa.c f29384u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final DrawerLayout.e f29385v;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        public Bundle menuState;

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

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeBundle(this.menuState);
        }
    }

    class a extends DrawerLayout.g {
        a() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.g, androidx.drawerlayout.widget.DrawerLayout.e
        public void a(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                final wa.c cVar = navigationView.f29384u;
                Objects.requireNonNull(cVar);
                view.post(new Runnable() { // from class: com.google.android.material.navigation.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        cVar.e();
                    }
                });
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.g, androidx.drawerlayout.widget.DrawerLayout.e
        public void b(View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                navigationView.f29384u.f();
                NavigationView.this.l();
            }
        }
    }

    class b implements androidx.appcompat.view.menu.f.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.f.a
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            NavigationView.this.getClass();
            return false;
        }

        @Override // androidx.appcompat.view.menu.f.a
        public void b(androidx.appcompat.view.menu.f fVar) {
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f29374k);
            boolean z10 = true;
            boolean z11 = NavigationView.this.f29374k[1] == 0;
            NavigationView.this.f29372i.F(z11);
            NavigationView navigationView2 = NavigationView.this;
            navigationView2.setDrawTopInsetForeground(z11 && navigationView2.isTopInsetScrimEnabled());
            NavigationView.this.setDrawLeftInsetForeground(NavigationView.this.f29374k[0] == 0 || NavigationView.this.f29374k[0] + NavigationView.this.getWidth() == 0);
            Activity activityA = com.google.android.material.internal.c.a(NavigationView.this.getContext());
            if (activityA != null) {
                Rect rectA = g0.a(activityA);
                boolean z12 = rectA.height() - NavigationView.this.getHeight() == NavigationView.this.f29374k[1];
                boolean z13 = Color.alpha(activityA.getWindow().getNavigationBarColor()) != 0;
                NavigationView navigationView3 = NavigationView.this;
                navigationView3.setDrawBottomInsetForeground(z12 && z13 && navigationView3.isBottomInsetScrimEnabled());
                if (rectA.width() != NavigationView.this.f29374k[0] && rectA.width() - NavigationView.this.getWidth() != NavigationView.this.f29374k[0]) {
                    z10 = false;
                }
                NavigationView.this.setDrawRightInsetForeground(z10);
            }
        }
    }

    public interface d {
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12;
        int i13;
        int i14 = f29370y;
        super(bb.a.c(context, attributeSet, i11, i14), attributeSet, i11);
        s sVar = new s();
        this.f29372i = sVar;
        this.f29374k = new int[2];
        this.f29377n = true;
        this.f29378o = true;
        this.f29379p = 0;
        this.f29382s = ab.r.a(this);
        this.f29383t = new i(this);
        this.f29384u = new wa.c(this);
        this.f29385v = new a();
        Context context2 = getContext();
        r rVar = new r(context2);
        this.f29371h = rVar;
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.NavigationView, i11, i14, new int[0]);
        if (j0VarJ.s(R$styleable.NavigationView_android_background)) {
            ViewCompat.setBackground(this, j0VarJ.g(R$styleable.NavigationView_android_background));
        }
        int iF = j0VarJ.f(R$styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.f29379p = iF;
        this.f29380q = iF == 0;
        this.f29381r = getResources().getDimensionPixelSize(R$dimen.m3_navigation_drawer_layout_corner_size);
        Drawable background = getBackground();
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(background);
        if (background == null || colorStateListG != null) {
            ab.i iVar = new ab.i(n.e(context2, attributeSet, i11, i14).m());
            if (colorStateListG != null) {
                iVar.d0(colorStateListG);
            }
            iVar.S(context2);
            ViewCompat.setBackground(this, iVar);
        }
        if (j0VarJ.s(R$styleable.NavigationView_elevation)) {
            setElevation(j0VarJ.f(R$styleable.NavigationView_elevation, 0));
        }
        setFitsSystemWindows(j0VarJ.a(R$styleable.NavigationView_android_fitsSystemWindows, false));
        this.f29373j = j0VarJ.f(R$styleable.NavigationView_android_maxWidth, 0);
        ColorStateList colorStateListC = j0VarJ.s(R$styleable.NavigationView_subheaderColor) ? j0VarJ.c(R$styleable.NavigationView_subheaderColor) : null;
        int iN = j0VarJ.s(R$styleable.NavigationView_subheaderTextAppearance) ? j0VarJ.n(R$styleable.NavigationView_subheaderTextAppearance, 0) : 0;
        if (iN == 0 && colorStateListC == null) {
            colorStateListC = g(R.attr.textColorSecondary);
        }
        ColorStateList colorStateListC2 = j0VarJ.s(R$styleable.NavigationView_itemIconTint) ? j0VarJ.c(R$styleable.NavigationView_itemIconTint) : g(R.attr.textColorSecondary);
        int iN2 = j0VarJ.s(R$styleable.NavigationView_itemTextAppearance) ? j0VarJ.n(R$styleable.NavigationView_itemTextAppearance, 0) : 0;
        boolean zA = j0VarJ.a(R$styleable.NavigationView_itemTextAppearanceActiveBoldEnabled, true);
        if (j0VarJ.s(R$styleable.NavigationView_itemIconSize)) {
            setItemIconSize(j0VarJ.f(R$styleable.NavigationView_itemIconSize, 0));
        }
        ColorStateList colorStateListC3 = j0VarJ.s(R$styleable.NavigationView_itemTextColor) ? j0VarJ.c(R$styleable.NavigationView_itemTextColor) : null;
        if (iN2 == 0 && colorStateListC3 == null) {
            colorStateListC3 = g(R.attr.textColorPrimary);
        }
        Drawable drawableG = j0VarJ.g(R$styleable.NavigationView_itemBackground);
        if (drawableG == null && j(j0VarJ)) {
            drawableG = h(j0VarJ);
            ColorStateList colorStateListB = xa.c.b(context2, j0VarJ, R$styleable.NavigationView_itemRippleColor);
            if (colorStateListB != null) {
                sVar.L(new RippleDrawable(ya.b.d(colorStateListB), null, i(j0VarJ, null)));
            }
        }
        if (j0VarJ.s(R$styleable.NavigationView_itemHorizontalPadding)) {
            i12 = 0;
            setItemHorizontalPadding(j0VarJ.f(R$styleable.NavigationView_itemHorizontalPadding, 0));
        } else {
            i12 = 0;
        }
        if (j0VarJ.s(R$styleable.NavigationView_itemVerticalPadding)) {
            setItemVerticalPadding(j0VarJ.f(R$styleable.NavigationView_itemVerticalPadding, i12));
        }
        setDividerInsetStart(j0VarJ.f(R$styleable.NavigationView_dividerInsetStart, i12));
        setDividerInsetEnd(j0VarJ.f(R$styleable.NavigationView_dividerInsetEnd, i12));
        setSubheaderInsetStart(j0VarJ.f(R$styleable.NavigationView_subheaderInsetStart, i12));
        setSubheaderInsetEnd(j0VarJ.f(R$styleable.NavigationView_subheaderInsetEnd, i12));
        setTopInsetScrimEnabled(j0VarJ.a(R$styleable.NavigationView_topInsetScrimEnabled, this.f29377n));
        setBottomInsetScrimEnabled(j0VarJ.a(R$styleable.NavigationView_bottomInsetScrimEnabled, this.f29378o));
        int iF2 = j0VarJ.f(R$styleable.NavigationView_itemIconPadding, i12);
        setItemMaxLines(j0VarJ.k(R$styleable.NavigationView_itemMaxLines, 1));
        rVar.W(new b());
        sVar.J(1);
        sVar.k(context2, rVar);
        if (iN != 0) {
            sVar.Z(iN);
        }
        sVar.W(colorStateListC);
        sVar.P(colorStateListC2);
        sVar.V(getOverScrollMode());
        if (iN2 != 0) {
            sVar.R(iN2);
        }
        sVar.S(zA);
        sVar.T(colorStateListC3);
        sVar.K(drawableG);
        sVar.N(iF2);
        rVar.b(sVar);
        addView((View) sVar.z(this));
        if (j0VarJ.s(R$styleable.NavigationView_menu)) {
            i13 = 0;
            inflateMenu(j0VarJ.n(R$styleable.NavigationView_menu, 0));
        } else {
            i13 = 0;
        }
        if (j0VarJ.s(R$styleable.NavigationView_headerLayout)) {
            inflateHeaderView(j0VarJ.n(R$styleable.NavigationView_headerLayout, i13));
        }
        j0VarJ.x();
        o();
    }

    private ColorStateList g(int i11) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i11, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = g.a.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i12 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = f29369x;
        return new ColorStateList(new int[][]{iArr, f29368w, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i12, defaultColor});
    }

    private MenuInflater getMenuInflater() {
        if (this.f29375l == null) {
            this.f29375l = new g(getContext());
        }
        return this.f29375l;
    }

    private Drawable h(j0 j0Var) {
        return i(j0Var, xa.c.b(getContext(), j0Var, R$styleable.NavigationView_itemShapeFillColor));
    }

    private Drawable i(j0 j0Var, ColorStateList colorStateList) {
        ab.i iVar = new ab.i(n.b(getContext(), j0Var.n(R$styleable.NavigationView_itemShapeAppearance, 0), j0Var.n(R$styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m());
        iVar.d0(colorStateList);
        return new InsetDrawable((Drawable) iVar, j0Var.f(R$styleable.NavigationView_itemShapeInsetStart, 0), j0Var.f(R$styleable.NavigationView_itemShapeInsetTop, 0), j0Var.f(R$styleable.NavigationView_itemShapeInsetEnd, 0), j0Var.f(R$styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    private boolean j(j0 j0Var) {
        return j0Var.s(R$styleable.NavigationView_itemShapeAppearance) || j0Var.s(R$styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (!this.f29380q || this.f29379p == 0) {
            return;
        }
        this.f29379p = 0;
        m(getWidth(), getHeight());
    }

    private void m(int i11, int i12) {
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.f)) {
            if ((this.f29379p > 0 || this.f29380q) && (getBackground() instanceof ab.i)) {
                boolean z10 = GravityCompat.getAbsoluteGravity(((DrawerLayout.f) getLayoutParams()).f8976a, ViewCompat.getLayoutDirection(this)) == 3;
                ab.i iVar = (ab.i) getBackground();
                n.b bVarO = iVar.G().v().o(this.f29379p);
                if (z10) {
                    bVarO.H(0.0f);
                    bVarO.w(0.0f);
                } else {
                    bVarO.M(0.0f);
                    bVarO.B(0.0f);
                }
                n nVarM = bVarO.m();
                iVar.setShapeAppearanceModel(nVarM);
                this.f29382s.g(this, nVarM);
                this.f29382s.f(this, new RectF(0.0f, 0.0f, i11, i12));
                this.f29382s.i(this, true);
            }
        }
    }

    private Pair n() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.f)) {
            return new Pair((DrawerLayout) parent, (DrawerLayout.f) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    private void o() {
        this.f29376m = new c();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f29376m);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    protected void a(WindowInsetsCompat windowInsetsCompat) {
        this.f29372i.m(windowInsetsCompat);
    }

    public void addHeaderView(@NonNull View view) {
        this.f29372i.l(view);
    }

    @Override // wa.b
    public void cancelBackProgress() {
        n();
        this.f29383t.f();
        l();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.f29382s.e(canvas, new pa.a.InterfaceC0882a() { // from class: com.google.android.material.navigation.e
            @Override // pa.a.InterfaceC0882a
            public final void a(Canvas canvas2) {
                this.f29393a.k(canvas2);
            }
        });
    }

    i getBackHelper() {
        return this.f29383t;
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f29372i.n();
    }

    public int getDividerInsetEnd() {
        return this.f29372i.o();
    }

    public int getDividerInsetStart() {
        return this.f29372i.p();
    }

    public int getHeaderCount() {
        return this.f29372i.q();
    }

    public View getHeaderView(int i11) {
        return this.f29372i.r(i11);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f29372i.s();
    }

    public int getItemHorizontalPadding() {
        return this.f29372i.t();
    }

    public int getItemIconPadding() {
        return this.f29372i.u();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f29372i.x();
    }

    public int getItemMaxLines() {
        return this.f29372i.v();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f29372i.w();
    }

    public int getItemVerticalPadding() {
        return this.f29372i.y();
    }

    @NonNull
    public Menu getMenu() {
        return this.f29371h;
    }

    public int getSubheaderInsetEnd() {
        return this.f29372i.A();
    }

    public int getSubheaderInsetStart() {
        return this.f29372i.B();
    }

    @Override // wa.b
    public void handleBackInvoked() {
        Pair pairN = n();
        DrawerLayout drawerLayout = (DrawerLayout) pairN.first;
        androidx.activity.b bVarC = this.f29383t.c();
        if (bVarC == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.closeDrawer(this);
            return;
        }
        this.f29383t.h(bVarC, ((DrawerLayout.f) pairN.second).f8976a, com.google.android.material.navigation.b.b(drawerLayout, this), com.google.android.material.navigation.b.c(drawerLayout));
    }

    public View inflateHeaderView(int i11) {
        return this.f29372i.D(i11);
    }

    public void inflateMenu(int i11) {
        this.f29372i.a0(true);
        getMenuInflater().inflate(i11, this.f29371h);
        this.f29372i.a0(false);
        this.f29372i.h(false);
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.f29378o;
    }

    public boolean isTopInsetScrimEnabled() {
        return this.f29377n;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
        ViewParent parent = getParent();
        if ((parent instanceof DrawerLayout) && this.f29384u.b()) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            drawerLayout.removeDrawerListener(this.f29385v);
            drawerLayout.addDrawerListener(this.f29385v);
            if (drawerLayout.isDrawerOpen(this)) {
                this.f29384u.e();
            }
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f29376m);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ((DrawerLayout) parent).removeDrawerListener(this.f29385v);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i11), this.f29373j), 1073741824);
        } else if (mode == 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(this.f29373j, 1073741824);
        }
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f29371h.T(savedState.menuState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.f29371h.V(bundle);
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        m(i11, i12);
    }

    public void removeHeaderView(@NonNull View view) {
        this.f29372i.E(view);
    }

    public void setBottomInsetScrimEnabled(boolean z10) {
        this.f29378o = z10;
    }

    public void setCheckedItem(int i11) {
        MenuItem menuItemFindItem = this.f29371h.findItem(i11);
        if (menuItemFindItem != null) {
            this.f29372i.G((h) menuItemFindItem);
        }
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem menuItemFindItem = this.f29371h.findItem(menuItem.getItemId());
        if (menuItemFindItem == null) {
            throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
        }
        this.f29372i.G((h) menuItemFindItem);
    }

    public void setDividerInsetEnd(int i11) {
        this.f29372i.H(i11);
    }

    public void setDividerInsetStart(int i11) {
        this.f29372i.I(i11);
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        j.d(this, f11);
    }

    public void setForceCompatClippingEnabled(boolean z10) {
        this.f29382s.h(this, z10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f29372i.K(drawable);
    }

    public void setItemBackgroundResource(int i11) {
        setItemBackground(androidx.core.content.b.getDrawable(getContext(), i11));
    }

    public void setItemHorizontalPadding(int i11) {
        this.f29372i.M(i11);
    }

    public void setItemHorizontalPaddingResource(int i11) {
        this.f29372i.M(getResources().getDimensionPixelSize(i11));
    }

    public void setItemIconPadding(int i11) {
        this.f29372i.N(i11);
    }

    public void setItemIconPaddingResource(int i11) {
        this.f29372i.N(getResources().getDimensionPixelSize(i11));
    }

    public void setItemIconSize(int i11) {
        this.f29372i.O(i11);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29372i.P(colorStateList);
    }

    public void setItemMaxLines(int i11) {
        this.f29372i.Q(i11);
    }

    public void setItemTextAppearance(int i11) {
        this.f29372i.R(i11);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f29372i.S(z10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f29372i.T(colorStateList);
    }

    public void setItemVerticalPadding(int i11) {
        this.f29372i.U(i11);
    }

    public void setItemVerticalPaddingResource(int i11) {
        this.f29372i.U(getResources().getDimensionPixelSize(i11));
    }

    public void setNavigationItemSelectedListener(@Nullable d dVar) {
    }

    @Override // android.view.View
    public void setOverScrollMode(int i11) {
        super.setOverScrollMode(i11);
        s sVar = this.f29372i;
        if (sVar != null) {
            sVar.V(i11);
        }
    }

    public void setSubheaderInsetEnd(int i11) {
        this.f29372i.X(i11);
    }

    public void setSubheaderInsetStart(int i11) {
        this.f29372i.Y(i11);
    }

    public void setTopInsetScrimEnabled(boolean z10) {
        this.f29377n = z10;
    }

    @Override // wa.b
    public void startBackProgress(@NonNull androidx.activity.b bVar) {
        n();
        this.f29383t.j(bVar);
    }

    @Override // wa.b
    public void updateBackProgress(@NonNull androidx.activity.b bVar) {
        this.f29383t.l(bVar, ((DrawerLayout.f) n().second).f8976a);
        if (this.f29380q) {
            this.f29379p = oa.a.c(0, this.f29381r, this.f29383t.a(bVar.a()));
            m(getWidth(), getHeight());
        }
    }
}
