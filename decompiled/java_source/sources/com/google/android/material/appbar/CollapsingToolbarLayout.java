package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.x;

/* JADX INFO: loaded from: classes4.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    private static final int F = R$style.Widget_Design_CollapsingToolbar;
    public static final int TITLE_COLLAPSE_MODE_FADE = 1;
    public static final int TITLE_COLLAPSE_MODE_SCALE = 0;
    WindowInsetsCompat A;
    private int B;
    private boolean C;
    private int D;
    private boolean E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f28216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewGroup f28218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f28219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f28220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28222g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28223h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28224i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f28225j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final com.google.android.material.internal.b f28226k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final ta.a f28227l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f28228m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f28229n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Drawable f28230o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Drawable f28231p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f28232q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f28233r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ValueAnimator f28234s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f28235t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final TimeInterpolator f28236u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final TimeInterpolator f28237v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f28238w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AppBarLayout.g f28239x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f28240y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f28241z;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CollapsingToolbarLayout.this.o(windowInsetsCompat);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public static class c extends FrameLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f28244a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f28245b;

        public c(int i11, int i12) {
            super(i11, i12);
            this.f28244a = 0;
            this.f28245b = 0.5f;
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f28244a = 0;
            this.f28245b = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CollapsingToolbarLayout_Layout);
            this.f28244a = typedArrayObtainStyledAttributes.getInt(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            a(typedArrayObtainStyledAttributes.getFloat(R$styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            typedArrayObtainStyledAttributes.recycle();
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f28244a = 0;
            this.f28245b = 0.5f;
        }

        public void a(float f11) {
            this.f28245b = f11;
        }
    }

    private class d implements AppBarLayout.g {
        d() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.b
        public void onOffsetChanged(AppBarLayout appBarLayout, int i11) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f28240y = i11;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.A;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i12);
                c cVar = (c) childAt.getLayoutParams();
                j jVarK = CollapsingToolbarLayout.k(childAt);
                int i13 = cVar.f28244a;
                if (i13 == 1) {
                    jVarK.f(d1.a.b(-i11, 0, CollapsingToolbarLayout.this.i(childAt)));
                } else if (i13 == 2) {
                    jVarK.f(Math.round((-i11) * cVar.f28245b));
                }
            }
            CollapsingToolbarLayout.this.u();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.f28231p != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout2);
            }
            int height = CollapsingToolbarLayout.this.getHeight();
            int minimumHeight = (height - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop;
            float f11 = minimumHeight;
            CollapsingToolbarLayout.this.f28226k.B0(Math.min(1.0f, (height - CollapsingToolbarLayout.this.getScrimVisibleHeightTrigger()) / f11));
            CollapsingToolbarLayout collapsingToolbarLayout3 = CollapsingToolbarLayout.this;
            collapsingToolbarLayout3.f28226k.o0(collapsingToolbarLayout3.f28240y + minimumHeight);
            CollapsingToolbarLayout.this.f28226k.z0(Math.abs(i11) / f11);
        }
    }

    public interface e extends x {
    }

    public CollapsingToolbarLayout(@NonNull Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.collapsingToolbarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = F;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28216a = true;
        this.f28225j = new Rect();
        this.f28238w = -1;
        this.B = 0;
        this.D = 0;
        Context context2 = getContext();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.f28226k = bVar;
        bVar.M0(oa.a.f70922e);
        bVar.I0(false);
        this.f28227l = new ta.a(context2);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.CollapsingToolbarLayout, i11, i12, new int[0]);
        bVar.v0(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_expandedTitleGravity, MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START));
        bVar.k0(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.f28224i = dimensionPixelSize;
        this.f28223h = dimensionPixelSize;
        this.f28222g = dimensionPixelSize;
        this.f28221f = dimensionPixelSize;
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.f28221f = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.f28223h = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.f28222g = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.f28224i = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.f28228m = typedArrayI.getBoolean(R$styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(typedArrayI.getText(R$styleable.CollapsingToolbarLayout_title));
        bVar.s0(R$style.TextAppearance_Design_CollapsingToolbar_Expanded);
        bVar.h0(androidx.appcompat.R$style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            bVar.s0(typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            bVar.h0(typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_titleTextEllipsize)) {
            setTitleEllipsize(b(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_titleTextEllipsize, -1)));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_expandedTitleTextColor)) {
            bVar.u0(xa.c.a(context2, typedArrayI, R$styleable.CollapsingToolbarLayout_expandedTitleTextColor));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_collapsedTitleTextColor)) {
            bVar.j0(xa.c.a(context2, typedArrayI, R$styleable.CollapsingToolbarLayout_collapsedTitleTextColor));
        }
        this.f28238w = typedArrayI.getDimensionPixelSize(R$styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_maxLines)) {
            bVar.G0(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_maxLines, 1));
        }
        if (typedArrayI.hasValue(R$styleable.CollapsingToolbarLayout_titlePositionInterpolator)) {
            bVar.H0(AnimationUtils.loadInterpolator(context2, typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_titlePositionInterpolator, 0)));
        }
        this.f28235t = typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        this.f28236u = wa.j.g(context2, R$attr.motionEasingStandardInterpolator, oa.a.f70920c);
        this.f28237v = wa.j.g(context2, R$attr.motionEasingStandardInterpolator, oa.a.f70921d);
        setContentScrim(typedArrayI.getDrawable(R$styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(typedArrayI.getDrawable(R$styleable.CollapsingToolbarLayout_statusBarScrim));
        setTitleCollapseMode(typedArrayI.getInt(R$styleable.CollapsingToolbarLayout_titleCollapseMode, 0));
        this.f28217b = typedArrayI.getResourceId(R$styleable.CollapsingToolbarLayout_toolbarId, -1);
        this.C = typedArrayI.getBoolean(R$styleable.CollapsingToolbarLayout_forceApplySystemWindowInsetTop, false);
        this.E = typedArrayI.getBoolean(R$styleable.CollapsingToolbarLayout_extraMultilineHeightEnabled, false);
        typedArrayI.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }

    private void a(int i11) {
        d();
        ValueAnimator valueAnimator = this.f28234s;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f28234s = valueAnimator2;
            valueAnimator2.setInterpolator(i11 > this.f28232q ? this.f28236u : this.f28237v);
            this.f28234s.addUpdateListener(new b());
        } else if (valueAnimator.isRunning()) {
            this.f28234s.cancel();
        }
        this.f28234s.setDuration(this.f28235t);
        this.f28234s.setIntValues(this.f28232q, i11);
        this.f28234s.start();
    }

    private TextUtils.TruncateAt b(int i11) {
        if (i11 == 0) {
            return TextUtils.TruncateAt.START;
        }
        if (i11 != 1) {
            return i11 != 3 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.MARQUEE;
        }
        return TextUtils.TruncateAt.MIDDLE;
    }

    private void c(AppBarLayout appBarLayout) {
        if (l()) {
            appBarLayout.setLiftOnScroll(false);
        }
    }

    private void d() {
        if (this.f28216a) {
            ViewGroup viewGroup = null;
            this.f28218c = null;
            this.f28219d = null;
            int i11 = this.f28217b;
            if (i11 != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i11);
                this.f28218c = viewGroup2;
                if (viewGroup2 != null) {
                    this.f28219d = e(viewGroup2);
                }
            }
            if (this.f28218c == null) {
                int childCount = getChildCount();
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    if (m(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                }
                this.f28218c = viewGroup;
            }
            t();
            this.f28216a = false;
        }
    }

    private View e(View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        ColorStateList colorStateListG = com.google.android.material.color.b.g(getContext(), R$attr.colorSurfaceContainer);
        if (colorStateListG != null) {
            return colorStateListG.getDefaultColor();
        }
        return this.f28227l.d(getResources().getDimension(R$dimen.design_appbar_elevation));
    }

    private static int h(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getMeasuredHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private static CharSequence j(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (view instanceof android.widget.Toolbar) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    static j k(View view) {
        j jVar = (j) view.getTag(R$id.view_offset_helper);
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(view);
        view.setTag(R$id.view_offset_helper, jVar2);
        return jVar2;
    }

    private boolean l() {
        return this.f28241z == 1;
    }

    private static boolean m(View view) {
        return (view instanceof Toolbar) || (view instanceof android.widget.Toolbar);
    }

    private boolean n(View view) {
        View view2 = this.f28219d;
        if (view2 == null || view2 == this) {
            if (view != this.f28218c) {
                return false;
            }
        } else if (view != view2) {
            return false;
        }
        return true;
    }

    private void p(boolean z10) {
        int titleMarginStart;
        int titleMarginBottom;
        int titleMarginEnd;
        int titleMarginTop;
        View view = this.f28219d;
        if (view == null) {
            view = this.f28218c;
        }
        int i11 = i(view);
        com.google.android.material.internal.d.a(this, this.f28220e, this.f28225j);
        ViewGroup viewGroup = this.f28218c;
        if (viewGroup instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup;
            titleMarginStart = toolbar.getTitleMarginStart();
            titleMarginEnd = toolbar.getTitleMarginEnd();
            titleMarginTop = toolbar.getTitleMarginTop();
            titleMarginBottom = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
            titleMarginStart = 0;
            titleMarginBottom = 0;
            titleMarginEnd = 0;
            titleMarginTop = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
            titleMarginStart = toolbar2.getTitleMarginStart();
            titleMarginEnd = toolbar2.getTitleMarginEnd();
            titleMarginTop = toolbar2.getTitleMarginTop();
            titleMarginBottom = toolbar2.getTitleMarginBottom();
        }
        com.google.android.material.internal.b bVar = this.f28226k;
        Rect rect = this.f28225j;
        int i12 = rect.left + (z10 ? titleMarginEnd : titleMarginStart);
        int i13 = rect.top + i11 + titleMarginTop;
        int i14 = rect.right;
        if (!z10) {
            titleMarginStart = titleMarginEnd;
        }
        bVar.f0(i12, i13, i14 - titleMarginStart, (rect.bottom + i11) - titleMarginBottom);
    }

    private void q() {
        setContentDescription(getTitle());
    }

    private void r(Drawable drawable, int i11, int i12) {
        s(drawable, this.f28218c, i11, i12);
    }

    private void s(Drawable drawable, View view, int i11, int i12) {
        if (l() && view != null && this.f28228m) {
            i12 = view.getBottom();
        }
        drawable.setBounds(0, 0, i11, i12);
    }

    private void t() {
        View view;
        if (!this.f28228m && (view = this.f28220e) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f28220e);
            }
        }
        if (!this.f28228m || this.f28218c == null) {
            return;
        }
        if (this.f28220e == null) {
            this.f28220e = new View(getContext());
        }
        if (this.f28220e.getParent() == null) {
            this.f28218c.addView(this.f28220e, -1, -1);
        }
    }

    private void v(int i11, int i12, int i13, int i14, boolean z10) {
        View view;
        if (!this.f28228m || (view = this.f28220e) == null) {
            return;
        }
        boolean z11 = ViewCompat.isAttachedToWindow(view) && this.f28220e.getVisibility() == 0;
        this.f28229n = z11;
        if (z11 || z10) {
            boolean z12 = ViewCompat.getLayoutDirection(this) == 1;
            p(z12);
            this.f28226k.p0(z12 ? this.f28223h : this.f28221f, this.f28225j.top + this.f28222g, (i13 - i11) - (z12 ? this.f28221f : this.f28223h), (i14 - i12) - this.f28224i);
            this.f28226k.c0(z10);
        }
    }

    private void w() {
        if (this.f28218c != null && this.f28228m && TextUtils.isEmpty(this.f28226k.O())) {
            setTitle(j(this.f28218c));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        d();
        if (this.f28218c == null && (drawable = this.f28230o) != null && this.f28232q > 0) {
            drawable.mutate().setAlpha(this.f28232q);
            this.f28230o.draw(canvas);
        }
        if (this.f28228m && this.f28229n) {
            if (this.f28218c == null || this.f28230o == null || this.f28232q <= 0 || !l() || this.f28226k.F() >= this.f28226k.G()) {
                this.f28226k.l(canvas);
            } else {
                int iSave = canvas.save();
                canvas.clipRect(this.f28230o.getBounds(), Region.Op.DIFFERENCE);
                this.f28226k.l(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        if (this.f28231p == null || this.f28232q <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.A;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f28231p.setBounds(0, -this.f28240y, getWidth(), systemWindowInsetTop - this.f28240y);
            this.f28231p.mutate().setAlpha(this.f28232q);
            this.f28231p.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j11) {
        boolean z10;
        if (this.f28230o == null || this.f28232q <= 0 || !n(view)) {
            z10 = false;
        } else {
            s(this.f28230o, view, getWidth(), getHeight());
            this.f28230o.mutate().setAlpha(this.f28232q);
            this.f28230o.draw(canvas);
            z10 = true;
        }
        return super.drawChild(canvas, view, j11) || z10;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f28231p;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f28230o;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.b bVar = this.f28226k;
        if (bVar != null) {
            state |= bVar.J0(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public int getCollapsedTitleGravity() {
        return this.f28226k.q();
    }

    public float getCollapsedTitleTextSize() {
        return this.f28226k.u();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.f28226k.v();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.f28230o;
    }

    public int getExpandedTitleGravity() {
        return this.f28226k.B();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f28224i;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f28223h;
    }

    public int getExpandedTitleMarginStart() {
        return this.f28221f;
    }

    public int getExpandedTitleMarginTop() {
        return this.f28222g;
    }

    public float getExpandedTitleTextSize() {
        return this.f28226k.D();
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.f28226k.E();
    }

    public int getHyphenationFrequency() {
        return this.f28226k.H();
    }

    public int getLineCount() {
        return this.f28226k.I();
    }

    public float getLineSpacingAdd() {
        return this.f28226k.J();
    }

    public float getLineSpacingMultiplier() {
        return this.f28226k.K();
    }

    public int getMaxLines() {
        return this.f28226k.L();
    }

    int getScrimAlpha() {
        return this.f28232q;
    }

    public long getScrimAnimationDuration() {
        return this.f28235t;
    }

    public int getScrimVisibleHeightTrigger() {
        int i11 = this.f28238w;
        if (i11 >= 0) {
            return i11 + this.B + this.D;
        }
        WindowInsetsCompat windowInsetsCompat = this.A;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.f28231p;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.f28228m) {
            return this.f28226k.O();
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.f28241z;
    }

    @Nullable
    public TimeInterpolator getTitlePositionInterpolator() {
        return this.f28226k.N();
    }

    @NonNull
    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.f28226k.R();
    }

    final int i(View view) {
        return ((getHeight() - k(view).b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((c) view.getLayoutParams())).bottomMargin;
    }

    public boolean isExtraMultilineHeightEnabled() {
        return this.E;
    }

    public boolean isForceApplySystemWindowInsetTop() {
        return this.C;
    }

    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.f28226k.V();
    }

    public boolean isTitleEnabled() {
        return this.f28228m;
    }

    WindowInsetsCompat o(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!androidx.core.util.d.a(this.A, windowInsetsCompat2)) {
            this.A = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            c(appBarLayout);
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows(appBarLayout));
            if (this.f28239x == null) {
                this.f28239x = new d();
            }
            appBarLayout.addOnOffsetChangedListener(this.f28239x);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f28226k.Z(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.g gVar = this.f28239x;
        if (gVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(gVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        WindowInsetsCompat windowInsetsCompat = this.A;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt = getChildAt(i15);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i16 = 0; i16 < childCount2; i16++) {
            k(getChildAt(i16)).d();
        }
        v(i11, i12, i13, i14, false);
        w();
        u();
        int childCount3 = getChildCount();
        for (int i17 = 0; i17 < childCount3; i17++) {
            k(getChildAt(i17)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        d();
        super.onMeasure(i11, i12);
        int mode = View.MeasureSpec.getMode(i12);
        WindowInsetsCompat windowInsetsCompat = this.A;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if ((mode == 0 || this.C) && systemWindowInsetTop > 0) {
            this.B = systemWindowInsetTop;
            super.onMeasure(i11, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
        if (this.E && this.f28226k.L() > 1) {
            w();
            v(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
            int iZ = this.f28226k.z();
            if (iZ > 1) {
                this.D = Math.round(this.f28226k.A()) * (iZ - 1);
                super.onMeasure(i11, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.D, 1073741824));
            }
        }
        ViewGroup viewGroup = this.f28218c;
        if (viewGroup != null) {
            View view = this.f28219d;
            if (view == null || view == this) {
                setMinimumHeight(h(viewGroup));
            } else {
                setMinimumHeight(h(view));
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        Drawable drawable = this.f28230o;
        if (drawable != null) {
            r(drawable, i11, i12);
        }
    }

    public void setCollapsedTitleGravity(int i11) {
        this.f28226k.k0(i11);
    }

    public void setCollapsedTitleTextAppearance(int i11) {
        this.f28226k.h0(i11);
    }

    public void setCollapsedTitleTextColor(int i11) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i11));
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f28226k.j0(colorStateList);
    }

    public void setCollapsedTitleTextSize(float f11) {
        this.f28226k.l0(f11);
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.f28226k.m0(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f28230o;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f28230o = drawableMutate;
            if (drawableMutate != null) {
                r(drawableMutate, getWidth(), getHeight());
                this.f28230o.setCallback(this);
                this.f28230o.setAlpha(this.f28232q);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(int i11) {
        setContentScrim(new ColorDrawable(i11));
    }

    public void setContentScrimResource(int i11) {
        setContentScrim(androidx.core.content.b.getDrawable(getContext(), i11));
    }

    public void setExpandedTitleColor(int i11) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i11));
    }

    public void setExpandedTitleGravity(int i11) {
        this.f28226k.v0(i11);
    }

    public void setExpandedTitleMargin(int i11, int i12, int i13, int i14) {
        this.f28221f = i11;
        this.f28222g = i12;
        this.f28223h = i13;
        this.f28224i = i14;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i11) {
        this.f28224i = i11;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i11) {
        this.f28223h = i11;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i11) {
        this.f28221f = i11;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i11) {
        this.f28222g = i11;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i11) {
        this.f28226k.s0(i11);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f28226k.u0(colorStateList);
    }

    public void setExpandedTitleTextSize(float f11) {
        this.f28226k.w0(f11);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.f28226k.x0(typeface);
    }

    public void setExtraMultilineHeightEnabled(boolean z10) {
        this.E = z10;
    }

    public void setForceApplySystemWindowInsetTop(boolean z10) {
        this.C = z10;
    }

    public void setHyphenationFrequency(int i11) {
        this.f28226k.C0(i11);
    }

    public void setLineSpacingAdd(float f11) {
        this.f28226k.E0(f11);
    }

    public void setLineSpacingMultiplier(float f11) {
        this.f28226k.F0(f11);
    }

    public void setMaxLines(int i11) {
        this.f28226k.G0(i11);
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z10) {
        this.f28226k.I0(z10);
    }

    void setScrimAlpha(int i11) {
        ViewGroup viewGroup;
        if (i11 != this.f28232q) {
            if (this.f28230o != null && (viewGroup = this.f28218c) != null) {
                ViewCompat.postInvalidateOnAnimation(viewGroup);
            }
            this.f28232q = i11;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(long j11) {
        this.f28235t = j11;
    }

    public void setScrimVisibleHeightTrigger(int i11) {
        if (this.f28238w != i11) {
            this.f28238w = i11;
            u();
        }
    }

    public void setScrimsShown(boolean z10) {
        setScrimsShown(z10, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setScrimsShown(boolean z10, boolean z11) {
        if (this.f28233r != z10) {
            if (z11) {
                a(z10 ? 255 : 0);
            } else {
                setScrimAlpha(z10 ? 255 : 0);
            }
            this.f28233r = z10;
        }
    }

    public void setStaticLayoutBuilderConfigurer(@Nullable e eVar) {
        this.f28226k.K0(eVar);
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f28231p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f28231p = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f28231p.setState(getDrawableState());
                }
                a1.a.m(this.f28231p, ViewCompat.getLayoutDirection(this));
                this.f28231p.setVisible(getVisibility() == 0, false);
                this.f28231p.setCallback(this);
                this.f28231p.setAlpha(this.f28232q);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(int i11) {
        setStatusBarScrim(new ColorDrawable(i11));
    }

    public void setStatusBarScrimResource(int i11) {
        setStatusBarScrim(androidx.core.content.b.getDrawable(getContext(), i11));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f28226k.L0(charSequence);
        q();
    }

    public void setTitleCollapseMode(int i11) {
        this.f28241z = i11;
        boolean zL = l();
        this.f28226k.A0(zL);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            c((AppBarLayout) parent);
        }
        if (zL && this.f28230o == null) {
            setContentScrimColor(getDefaultContentScrimColorForTitleCollapseFadeMode());
        }
    }

    public void setTitleEllipsize(@NonNull TextUtils.TruncateAt truncateAt) {
        this.f28226k.N0(truncateAt);
    }

    public void setTitleEnabled(boolean z10) {
        if (z10 != this.f28228m) {
            this.f28228m = z10;
            q();
            t();
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.f28226k.H0(timeInterpolator);
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        boolean z10 = i11 == 0;
        Drawable drawable = this.f28231p;
        if (drawable != null && drawable.isVisible() != z10) {
            this.f28231p.setVisible(z10, false);
        }
        Drawable drawable2 = this.f28230o;
        if (drawable2 == null || drawable2.isVisible() == z10) {
            return;
        }
        this.f28230o.setVisible(z10, false);
    }

    final void u() {
        if (this.f28230o == null && this.f28231p == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f28240y < getScrimVisibleHeightTrigger());
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f28230o || drawable == this.f28231p;
    }
}
