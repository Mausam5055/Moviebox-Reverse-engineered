package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements s, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {
    static final int[] G = {R$attr.actionBarSize, R.attr.windowContentOverlay};
    private static final WindowInsetsCompat H = new WindowInsetsCompat.Builder().setSystemWindowInsets(z0.c.c(0, 1, 0, 1)).build();
    private static final Rect I = new Rect();
    ViewPropertyAnimator A;
    final AnimatorListenerAdapter B;
    private final Runnable C;
    private final Runnable D;
    private final NestedScrollingParentHelper E;
    private final d F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ContentFrameLayout f1581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ActionBarContainer f1582d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f1583e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f1584f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1585g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1586h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f1587i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f1588j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1589k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1590l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Rect f1591m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Rect f1592n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Rect f1593o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Rect f1594p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Rect f1595q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Rect f1596r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Rect f1597s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Rect f1598t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private WindowInsetsCompat f1599u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private WindowInsetsCompat f1600v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private WindowInsetsCompat f1601w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private WindowInsetsCompat f1602x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private b f1603y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private OverScroller f1604z;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.f1588j = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.A = null;
            actionBarOverlayLayout.f1588j = false;
        }
    }

    public interface b {
        void a();

        void b(int i11);

        void c();

        void d(boolean z10);

        void e();

        void f();
    }

    public static class c extends ViewGroup.MarginLayoutParams {
        public c(int i11, int i12) {
            super(i11, i12);
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private static final class d extends View {
        d(Context context) {
            super(context);
            setWillNotDraw(true);
        }

        @Override // android.view.View
        public int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    public ActionBarOverlayLayout(@NonNull Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1580b = 0;
        this.f1591m = new Rect();
        this.f1592n = new Rect();
        this.f1593o = new Rect();
        this.f1594p = new Rect();
        this.f1595q = new Rect();
        this.f1596r = new Rect();
        this.f1597s = new Rect();
        this.f1598t = new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.CONSUMED;
        this.f1599u = windowInsetsCompat;
        this.f1600v = windowInsetsCompat;
        this.f1601w = windowInsetsCompat;
        this.f1602x = windowInsetsCompat;
        this.B = new a();
        this.C = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.2
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.f();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = actionBarOverlayLayout.f1582d.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.B);
            }
        };
        this.D = new Runnable() { // from class: androidx.appcompat.widget.ActionBarOverlayLayout.3
            @Override // java.lang.Runnable
            public void run() {
                ActionBarOverlayLayout.this.f();
                ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
                actionBarOverlayLayout.A = actionBarOverlayLayout.f1582d.animate().translationY(-ActionBarOverlayLayout.this.f1582d.getHeight()).setListener(ActionBarOverlayLayout.this.B);
            }
        };
        g(context);
        this.E = new NestedScrollingParentHelper(this);
        d dVar = new d(context);
        this.F = dVar;
        addView(dVar);
    }

    private void a() {
        f();
        this.D.run();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    private boolean b(View view, Rect rect, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        c cVar = (c) view.getLayoutParams();
        if (z10) {
            int i11 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
            int i12 = rect.left;
            if (i11 != i12) {
                ((ViewGroup.MarginLayoutParams) cVar).leftMargin = i12;
                z14 = true;
            } else {
                z14 = false;
            }
        } else {
            z14 = false;
        }
        if (z11) {
            int i13 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
            int i14 = rect.top;
            if (i13 != i14) {
                ((ViewGroup.MarginLayoutParams) cVar).topMargin = i14;
                z14 = true;
            }
        }
        if (z13) {
            int i15 = ((ViewGroup.MarginLayoutParams) cVar).rightMargin;
            int i16 = rect.right;
            if (i15 != i16) {
                ((ViewGroup.MarginLayoutParams) cVar).rightMargin = i16;
                z14 = true;
            }
        }
        if (z12) {
            int i17 = ((ViewGroup.MarginLayoutParams) cVar).bottomMargin;
            int i18 = rect.bottom;
            if (i17 != i18) {
                ((ViewGroup.MarginLayoutParams) cVar).bottomMargin = i18;
                return true;
            }
        }
        return z14;
    }

    private boolean c() {
        ViewCompat.computeSystemWindowInsets(this.F, H, this.f1594p);
        return !this.f1594p.equals(I);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private t e(View view) {
        if (view instanceof t) {
            return (t) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void g(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(G);
        this.f1579a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f1584f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f1604z = new OverScroller(context);
    }

    private void h() {
        f();
        postDelayed(this.D, 600L);
    }

    private void i() {
        f();
        postDelayed(this.C, 600L);
    }

    private void k() {
        f();
        this.C.run();
    }

    private boolean l(float f11) {
        this.f1604z.fling(0, 0, 0, (int) f11, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.f1604z.getFinalY() > this.f1582d.getHeight();
    }

    @Override // androidx.appcompat.widget.s
    public boolean canShowOverflowMenu() {
        j();
        return this.f1583e.canShowOverflowMenu();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    @Override // androidx.appcompat.widget.s
    public void dismissPopups() {
        j();
        this.f1583e.k();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.f1584f != null) {
            int bottom = this.f1582d.getVisibility() == 0 ? (int) (this.f1582d.getBottom() + this.f1582d.getTranslationY() + 0.5f) : 0;
            this.f1584f.setBounds(0, bottom, getWidth(), this.f1584f.getIntrinsicHeight() + bottom);
            this.f1584f.draw(canvas);
        }
    }

    void f() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        ViewPropertyAnimator viewPropertyAnimator = this.A;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    @Override // android.view.ViewGroup
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f1582d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.E.getNestedScrollAxes();
    }

    public CharSequence getTitle() {
        j();
        return this.f1583e.getTitle();
    }

    public boolean hasIcon() {
        j();
        return this.f1583e.f();
    }

    public boolean hasLogo() {
        j();
        return this.f1583e.q();
    }

    @Override // androidx.appcompat.widget.s
    public boolean hideOverflowMenu() {
        j();
        return this.f1583e.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.s
    public void initFeature(int i11) {
        j();
        if (i11 == 2) {
            this.f1583e.i();
        } else if (i11 == 5) {
            this.f1583e.s();
        } else {
            if (i11 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.f1587i;
    }

    public boolean isInOverlayMode() {
        return this.f1585g;
    }

    @Override // androidx.appcompat.widget.s
    public boolean isOverflowMenuShowPending() {
        j();
        return this.f1583e.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.s
    public boolean isOverflowMenuShowing() {
        j();
        return this.f1583e.isOverflowMenuShowing();
    }

    void j() {
        if (this.f1581c == null) {
            this.f1581c = (ContentFrameLayout) findViewById(R$id.action_bar_activity_content);
            this.f1582d = (ActionBarContainer) findViewById(R$id.action_bar_container);
            this.f1583e = e(findViewById(R$id.action_bar));
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        j();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, this);
        boolean zB = b(this.f1582d, new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()), true, true, false, true);
        ViewCompat.computeSystemWindowInsets(this, windowInsetsCompat, this.f1591m);
        Rect rect = this.f1591m;
        WindowInsetsCompat windowInsetsCompatInset = windowInsetsCompat.inset(rect.left, rect.top, rect.right, rect.bottom);
        this.f1599u = windowInsetsCompatInset;
        boolean z10 = true;
        if (!this.f1600v.equals(windowInsetsCompatInset)) {
            this.f1600v = this.f1599u;
            zB = true;
        }
        if (this.f1592n.equals(this.f1591m)) {
            z10 = zB;
        } else {
            this.f1592n.set(this.f1591m);
        }
        if (z10) {
            requestLayout();
        }
        return windowInsetsCompat.consumeDisplayCutout().consumeSystemWindowInsets().consumeStableInsets().toWindowInsets();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        g(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i16 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin + paddingLeft;
                int i17 = ((ViewGroup.MarginLayoutParams) cVar).topMargin + paddingTop;
                childAt.layout(i16, i17, measuredWidth + i16, measuredHeight + i17);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int measuredHeight;
        j();
        measureChildWithMargins(this.f1582d, i11, 0, i12, 0);
        c cVar = (c) this.f1582d.getLayoutParams();
        int iMax = Math.max(0, this.f1582d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin + ((ViewGroup.MarginLayoutParams) cVar).rightMargin);
        int iMax2 = Math.max(0, this.f1582d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cVar).topMargin + ((ViewGroup.MarginLayoutParams) cVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1582d.getMeasuredState());
        boolean z10 = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z10) {
            measuredHeight = this.f1579a;
            if (this.f1586h && this.f1582d.getTabContainer() != null) {
                measuredHeight += this.f1579a;
            }
        } else {
            measuredHeight = this.f1582d.getVisibility() != 8 ? this.f1582d.getMeasuredHeight() : 0;
        }
        this.f1593o.set(this.f1591m);
        this.f1601w = this.f1599u;
        if (this.f1585g || z10 || !c()) {
            this.f1601w = new WindowInsetsCompat.Builder(this.f1601w).setSystemWindowInsets(z0.c.c(this.f1601w.getSystemWindowInsetLeft(), this.f1601w.getSystemWindowInsetTop() + measuredHeight, this.f1601w.getSystemWindowInsetRight(), this.f1601w.getSystemWindowInsetBottom())).build();
        } else {
            Rect rect = this.f1593o;
            rect.top += measuredHeight;
            rect.bottom = rect.bottom;
            this.f1601w = this.f1601w.inset(0, measuredHeight, 0, 0);
        }
        b(this.f1581c, this.f1593o, true, true, true, true);
        if (!this.f1602x.equals(this.f1601w)) {
            WindowInsetsCompat windowInsetsCompat = this.f1601w;
            this.f1602x = windowInsetsCompat;
            ViewCompat.dispatchApplyWindowInsets(this.f1581c, windowInsetsCompat);
        }
        measureChildWithMargins(this.f1581c, i11, 0, i12, 0);
        c cVar2 = (c) this.f1581c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f1581c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar2).leftMargin + ((ViewGroup.MarginLayoutParams) cVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f1581c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cVar2).topMargin + ((ViewGroup.MarginLayoutParams) cVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1581c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i11, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i12, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f11, float f12, boolean z10) {
        if (!this.f1587i || !z10) {
            return false;
        }
        if (l(f12)) {
            a();
        } else {
            k();
        }
        this.f1588j = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f11, float f12) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i11, int i12, int[] iArr, int i13) {
        if (i13 == 0) {
            onNestedPreScroll(view, i11, i12, iArr);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14) {
        int i15 = this.f1589k + i12;
        this.f1589k = i15;
        setActionBarHideOffset(i15);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14, int i15) {
        if (i15 == 0) {
            onNestedScroll(view, i11, i12, i13, i14);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        onNestedScroll(view, i11, i12, i13, i14, i15);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i11) {
        this.E.onNestedScrollAccepted(view, view2, i11);
        this.f1589k = getActionBarHideOffset();
        f();
        b bVar = this.f1603y;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i11, int i12) {
        if (i12 == 0) {
            onNestedScrollAccepted(view, view2, i11);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i11) {
        if ((i11 & 2) == 0 || this.f1582d.getVisibility() != 0) {
            return false;
        }
        return this.f1587i;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i11, int i12) {
        return i12 == 0 && onStartNestedScroll(view, view2, i11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.f1587i && !this.f1588j) {
            if (this.f1589k <= this.f1582d.getHeight()) {
                i();
            } else {
                h();
            }
        }
        b bVar = this.f1603y;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i11) {
        if (i11 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i11) {
        super.onWindowSystemUiVisibilityChanged(i11);
        j();
        int i12 = this.f1590l ^ i11;
        this.f1590l = i11;
        boolean z10 = (i11 & 4) == 0;
        boolean z11 = (i11 & 256) != 0;
        b bVar = this.f1603y;
        if (bVar != null) {
            bVar.d(!z11);
            if (z10 || !z11) {
                this.f1603y.a();
            } else {
                this.f1603y.e();
            }
        }
        if ((i12 & 256) == 0 || this.f1603y == null) {
            return;
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i11) {
        super.onWindowVisibilityChanged(i11);
        this.f1580b = i11;
        b bVar = this.f1603y;
        if (bVar != null) {
            bVar.b(i11);
        }
    }

    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        j();
        this.f1583e.p(sparseArray);
    }

    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        j();
        this.f1583e.m(sparseArray);
    }

    public void setActionBarHideOffset(int i11) {
        f();
        this.f1582d.setTranslationY(-Math.max(0, Math.min(i11, this.f1582d.getHeight())));
    }

    public void setActionBarVisibilityCallback(b bVar) {
        this.f1603y = bVar;
        if (getWindowToken() != null) {
            this.f1603y.b(this.f1580b);
            int i11 = this.f1590l;
            if (i11 != 0) {
                onWindowSystemUiVisibilityChanged(i11);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z10) {
        this.f1586h = z10;
    }

    public void setHideOnContentScrollEnabled(boolean z10) {
        if (z10 != this.f1587i) {
            this.f1587i = z10;
            if (z10) {
                return;
            }
            f();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i11) {
        j();
        this.f1583e.setIcon(i11);
    }

    public void setIcon(Drawable drawable) {
        j();
        this.f1583e.setIcon(drawable);
    }

    public void setLogo(int i11) {
        j();
        this.f1583e.n(i11);
    }

    @Override // androidx.appcompat.widget.s
    public void setMenu(Menu menu, androidx.appcompat.view.menu.l.a aVar) {
        j();
        this.f1583e.setMenu(menu, aVar);
    }

    @Override // androidx.appcompat.widget.s
    public void setMenuPrepared() {
        j();
        this.f1583e.setMenuPrepared();
    }

    public void setOverlayMode(boolean z10) {
        this.f1585g = z10;
    }

    public void setShowingForActionMode(boolean z10) {
    }

    public void setUiOptions(int i11) {
    }

    @Override // androidx.appcompat.widget.s
    public void setWindowCallback(Window.Callback callback) {
        j();
        this.f1583e.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.s
    public void setWindowTitle(CharSequence charSequence) {
        j();
        this.f1583e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.s
    public boolean showOverflowMenu() {
        j();
        return this.f1583e.showOverflowMenu();
    }
}
