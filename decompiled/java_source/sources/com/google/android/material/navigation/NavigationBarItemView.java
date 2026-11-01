package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.o0;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$string;
import com.google.android.material.badge.BadgeDrawable;
import wa.j;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NavigationBarItemView extends FrameLayout implements m.a {
    private static final int[] G = {R.attr.state_checked};
    private static final c H;
    private static final c I;
    private boolean A;
    private int B;
    private int C;
    private boolean D;
    private int E;
    private BadgeDrawable F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f29300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f29301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Drawable f29302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29303d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29305f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f29306g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f29307h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f29308i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29309j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f29310k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final FrameLayout f29311l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final View f29312m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ImageView f29313n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ViewGroup f29314o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final TextView f29315p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final TextView f29316q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f29317r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f29318s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private h f29319t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ColorStateList f29320u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Drawable f29321v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Drawable f29322w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ValueAnimator f29323x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private c f29324y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f29325z;

    class a implements View.OnLayoutChangeListener {
        a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            if (NavigationBarItemView.this.f29313n.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                navigationBarItemView.u(navigationBarItemView.f29313n);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f29327a;

        b(float f11) {
            this.f29327a = f11;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NavigationBarItemView.this.o(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f29327a);
        }
    }

    private static class c {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        protected float a(float f11, float f12) {
            return oa.a.b(0.0f, 1.0f, f12 == 0.0f ? 0.8f : 0.0f, f12 == 0.0f ? 1.0f : 0.2f, f11);
        }

        protected float b(float f11, float f12) {
            return oa.a.a(0.4f, 1.0f, f11);
        }

        protected float c(float f11, float f12) {
            return 1.0f;
        }

        public void d(float f11, float f12, View view) {
            view.setScaleX(b(f11, f12));
            view.setScaleY(c(f11, f12));
            view.setAlpha(a(f11, f12));
        }
    }

    private static class d extends c {
        private d() {
            super(null);
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        @Override // com.google.android.material.navigation.NavigationBarItemView.c
        protected float c(float f11, float f12) {
            return b(f11, f12);
        }
    }

    static {
        a aVar = null;
        H = new c(aVar);
        I = new d(aVar);
    }

    public NavigationBarItemView(@NonNull Context context) {
        super(context);
        this.f29300a = false;
        this.f29317r = -1;
        this.f29318s = 0;
        this.f29324y = H;
        this.f29325z = 0.0f;
        this.A = false;
        this.B = 0;
        this.C = 0;
        this.D = false;
        this.E = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f29311l = (FrameLayout) findViewById(R$id.navigation_bar_item_icon_container);
        this.f29312m = findViewById(R$id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(R$id.navigation_bar_item_icon_view);
        this.f29313n = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.navigation_bar_item_labels_group);
        this.f29314o = viewGroup;
        TextView textView = (TextView) findViewById(R$id.navigation_bar_item_small_label_view);
        this.f29315p = textView;
        TextView textView2 = (TextView) findViewById(R$id.navigation_bar_item_large_label_view);
        this.f29316q = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f29303d = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f29304e = viewGroup.getPaddingBottom();
        this.f29305f = getResources().getDimensionPixelSize(R$dimen.m3_navigation_item_active_indicator_label_padding);
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        e(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
    }

    private void e(float f11, float f12) {
        this.f29306g = f11 - f12;
        this.f29307h = (f12 * 1.0f) / f11;
        this.f29308i = (f11 * 1.0f) / f12;
    }

    private static Drawable g(ColorStateList colorStateList) {
        return new RippleDrawable(ya.b.a(colorStateList), null, null);
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f29311l;
        return frameLayout != null ? frameLayout : this.f29313n;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i11 = 0;
        for (int i12 = 0; i12 < iIndexOfChild; i12++) {
            View childAt = viewGroup.getChildAt(i12);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i11++;
            }
        }
        return i11;
    }

    private int getSuggestedIconHeight() {
        return ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin + getIconOrContainer().getMeasuredHeight();
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.F;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.F.l();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f29313n.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    private FrameLayout h(View view) {
        ImageView imageView = this.f29313n;
        if (view == imageView && com.google.android.material.badge.c.f28306a) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    private boolean i() {
        return this.F != null;
    }

    private boolean j() {
        return this.D && this.f29309j == 2;
    }

    private void k(float f11) {
        if (!this.A || !this.f29300a || !ViewCompat.isAttachedToWindow(this)) {
            o(f11, f11);
            return;
        }
        ValueAnimator valueAnimator = this.f29323x;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f29323x = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f29325z, f11);
        this.f29323x = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new b(f11));
        this.f29323x.setInterpolator(j.g(getContext(), R$attr.motionEasingEmphasizedInterpolator, oa.a.f70919b));
        this.f29323x.setDuration(j.f(getContext(), R$attr.motionDurationLong2, getResources().getInteger(R$integer.material_motion_duration_long_1)));
        this.f29323x.start();
    }

    private void l() {
        h hVar = this.f29319t;
        if (hVar != null) {
            setChecked(hVar.isChecked());
        }
    }

    private void m() {
        Drawable drawableG = this.f29302c;
        RippleDrawable rippleDrawable = null;
        boolean z10 = true;
        if (this.f29301b != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.A && getActiveIndicatorDrawable() != null && this.f29311l != null && activeIndicatorDrawable != null) {
                rippleDrawable = new RippleDrawable(ya.b.d(this.f29301b), null, activeIndicatorDrawable);
                z10 = false;
            } else if (drawableG == null) {
                drawableG = g(this.f29301b);
            }
        }
        FrameLayout frameLayout = this.f29311l;
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, 0);
            this.f29311l.setForeground(rippleDrawable);
        }
        ViewCompat.setBackground(this, drawableG);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(float f11, float f12) {
        View view = this.f29312m;
        if (view != null) {
            this.f29324y.d(f11, f12, view);
        }
        this.f29325z = f11;
    }

    private static void p(TextView textView, int i11) {
        androidx.core.widget.m.q(textView, i11);
        int i12 = xa.c.i(textView.getContext(), i11, 0);
        if (i12 != 0) {
            textView.setTextSize(0, i12);
        }
    }

    private static void q(View view, float f11, float f12, int i11) {
        view.setScaleX(f11);
        view.setScaleY(f12);
        view.setVisibility(i11);
    }

    private static void r(View view, int i11, int i12) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i11;
        layoutParams.bottomMargin = i11;
        layoutParams.gravity = i12;
        view.setLayoutParams(layoutParams);
    }

    private void s(View view) {
        if (i() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.c.c(this.F, view, h(view));
        }
    }

    private void t(View view) {
        if (i()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.badge.c.f(this.F, view);
            }
            this.F = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(View view) {
        if (i()) {
            com.google.android.material.badge.c.g(this.F, view, h(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i11) {
        if (this.f29312m == null || i11 <= 0) {
            return;
        }
        int iMin = Math.min(this.B, i11 - (this.E * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f29312m.getLayoutParams();
        layoutParams.height = j() ? iMin : this.C;
        layoutParams.width = iMin;
        this.f29312m.setLayoutParams(layoutParams);
    }

    private void w() {
        if (j()) {
            this.f29324y = I;
        } else {
            this.f29324y = H;
        }
    }

    private static void x(View view, int i11) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i11);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.f29311l;
        if (frameLayout != null && this.A) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    void f() {
        n();
        this.f29319t = null;
        this.f29325z = 0.0f;
        this.f29300a = false;
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.f29312m;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.F;
    }

    protected int getItemBackgroundResId() {
        return R$drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.m.a
    @Nullable
    public h getItemData() {
        return this.f29319t;
    }

    protected int getItemDefaultMarginResId() {
        return R$dimen.mtrl_navigation_bar_item_default_margin;
    }

    protected abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f29317r;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f29314o.getLayoutParams();
        return getSuggestedIconHeight() + (this.f29314o.getVisibility() == 0 ? this.f29305f : 0) + layoutParams.topMargin + this.f29314o.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f29314o.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f29314o.getMeasuredWidth() + layoutParams.rightMargin);
    }

    @Override // androidx.appcompat.view.menu.m.a
    public void initialize(@NonNull h hVar, int i11) {
        this.f29319t = hVar;
        setCheckable(hVar.isCheckable());
        setChecked(hVar.isChecked());
        setEnabled(hVar.isEnabled());
        setIcon(hVar.getIcon());
        setTitle(hVar.getTitle());
        setId(hVar.getItemId());
        if (!TextUtils.isEmpty(hVar.getContentDescription())) {
            setContentDescription(hVar.getContentDescription());
        }
        CharSequence tooltipText = !TextUtils.isEmpty(hVar.getTooltipText()) ? hVar.getTooltipText() : hVar.getTitle();
        if (Build.VERSION.SDK_INT > 23) {
            o0.a(this, tooltipText);
        }
        setVisibility(hVar.isVisible() ? 0 : 8);
        this.f29300a = true;
    }

    void n() {
        t(this.f29313n);
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    public int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 1);
        h hVar = this.f29319t;
        if (hVar != null && hVar.isCheckable() && this.f29319t.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, G);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.F;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f29319t.getTitle();
            if (!TextUtils.isEmpty(this.f29319t.getContentDescription())) {
                title = this.f29319t.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.F.i()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(R$string.item_view_role_description));
    }

    @Override // android.view.View
    protected void onSizeChanged(final int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        post(new Runnable() { // from class: com.google.android.material.navigation.NavigationBarItemView.2
            @Override // java.lang.Runnable
            public void run() {
                NavigationBarItemView.this.v(i11);
            }
        });
    }

    @Override // androidx.appcompat.view.menu.m.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.f29312m;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
        m();
    }

    public void setActiveIndicatorEnabled(boolean z10) {
        this.A = z10;
        m();
        View view = this.f29312m;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i11) {
        this.C = i11;
        v(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i11) {
        if (this.f29305f != i11) {
            this.f29305f = i11;
            l();
        }
    }

    public void setActiveIndicatorMarginHorizontal(int i11) {
        this.E = i11;
        v(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z10) {
        this.D = z10;
    }

    public void setActiveIndicatorWidth(int i11) {
        this.B = i11;
        v(getWidth());
    }

    void setBadge(@NonNull BadgeDrawable badgeDrawable) {
        if (this.F == badgeDrawable) {
            return;
        }
        if (i() && this.f29313n != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            t(this.f29313n);
        }
        this.F = badgeDrawable;
        ImageView imageView = this.f29313n;
        if (imageView != null) {
            s(imageView);
        }
    }

    public void setCheckable(boolean z10) {
        refreshDrawableState();
    }

    public void setChecked(boolean z10) {
        TextView textView = this.f29316q;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f29316q;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f29315p;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f29315p;
        textView4.setPivotY(textView4.getBaseline());
        k(z10 ? 1.0f : 0.0f);
        int i11 = this.f29309j;
        if (i11 != -1) {
            if (i11 == 0) {
                if (z10) {
                    r(getIconOrContainer(), this.f29303d, 49);
                    x(this.f29314o, this.f29304e);
                    this.f29316q.setVisibility(0);
                } else {
                    r(getIconOrContainer(), this.f29303d, 17);
                    x(this.f29314o, 0);
                    this.f29316q.setVisibility(4);
                }
                this.f29315p.setVisibility(4);
            } else if (i11 == 1) {
                x(this.f29314o, this.f29304e);
                if (z10) {
                    r(getIconOrContainer(), (int) (this.f29303d + this.f29306g), 49);
                    q(this.f29316q, 1.0f, 1.0f, 0);
                    TextView textView5 = this.f29315p;
                    float f11 = this.f29307h;
                    q(textView5, f11, f11, 4);
                } else {
                    r(getIconOrContainer(), this.f29303d, 49);
                    TextView textView6 = this.f29316q;
                    float f12 = this.f29308i;
                    q(textView6, f12, f12, 4);
                    q(this.f29315p, 1.0f, 1.0f, 0);
                }
            } else if (i11 == 2) {
                r(getIconOrContainer(), this.f29303d, 17);
                this.f29316q.setVisibility(8);
                this.f29315p.setVisibility(8);
            }
        } else if (this.f29310k) {
            if (z10) {
                r(getIconOrContainer(), this.f29303d, 49);
                x(this.f29314o, this.f29304e);
                this.f29316q.setVisibility(0);
            } else {
                r(getIconOrContainer(), this.f29303d, 17);
                x(this.f29314o, 0);
                this.f29316q.setVisibility(4);
            }
            this.f29315p.setVisibility(4);
        } else {
            x(this.f29314o, this.f29304e);
            if (z10) {
                r(getIconOrContainer(), (int) (this.f29303d + this.f29306g), 49);
                q(this.f29316q, 1.0f, 1.0f, 0);
                TextView textView7 = this.f29315p;
                float f13 = this.f29307h;
                q(textView7, f13, f13, 4);
            } else {
                r(getIconOrContainer(), this.f29303d, 49);
                TextView textView8 = this.f29316q;
                float f14 = this.f29308i;
                q(textView8, f14, f14, 4);
                q(this.f29315p, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z10);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f29315p.setEnabled(z10);
        this.f29316q.setEnabled(z10);
        this.f29313n.setEnabled(z10);
        if (z10) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.f29321v) {
            return;
        }
        this.f29321v = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = a1.a.r(drawable).mutate();
            this.f29322w = drawable;
            ColorStateList colorStateList = this.f29320u;
            if (colorStateList != null) {
                a1.a.o(drawable, colorStateList);
            }
        }
        this.f29313n.setImageDrawable(drawable);
    }

    public void setIconSize(int i11) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f29313n.getLayoutParams();
        layoutParams.width = i11;
        layoutParams.height = i11;
        this.f29313n.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.f29320u = colorStateList;
        if (this.f29319t == null || (drawable = this.f29322w) == null) {
            return;
        }
        a1.a.o(drawable, colorStateList);
        this.f29322w.invalidateSelf();
    }

    public void setItemBackground(int i11) {
        setItemBackground(i11 == 0 ? null : androidx.core.content.b.getDrawable(getContext(), i11));
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.f29302c = drawable;
        m();
    }

    public void setItemPaddingBottom(int i11) {
        if (this.f29304e != i11) {
            this.f29304e = i11;
            l();
        }
    }

    public void setItemPaddingTop(int i11) {
        if (this.f29303d != i11) {
            this.f29303d = i11;
            l();
        }
    }

    public void setItemPosition(int i11) {
        this.f29317r = i11;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f29301b = colorStateList;
        m();
    }

    public void setLabelVisibilityMode(int i11) {
        if (this.f29309j != i11) {
            this.f29309j = i11;
            w();
            v(getWidth());
            l();
        }
    }

    public void setShifting(boolean z10) {
        if (this.f29310k != z10) {
            this.f29310k = z10;
            l();
        }
    }

    public void setShortcut(boolean z10, char c11) {
    }

    public void setTextAppearanceActive(int i11) {
        this.f29318s = i11;
        p(this.f29316q, i11);
        e(this.f29315p.getTextSize(), this.f29316q.getTextSize());
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z10) {
        setTextAppearanceActive(this.f29318s);
        TextView textView = this.f29316q;
        textView.setTypeface(textView.getTypeface(), z10 ? 1 : 0);
    }

    public void setTextAppearanceInactive(int i11) {
        p(this.f29315p, i11);
        e(this.f29315p.getTextSize(), this.f29316q.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f29315p.setTextColor(colorStateList);
            this.f29316q.setTextColor(colorStateList);
        }
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.f29315p.setText(charSequence);
        this.f29316q.setText(charSequence);
        h hVar = this.f29319t;
        if (hVar == null || TextUtils.isEmpty(hVar.getContentDescription())) {
            setContentDescription(charSequence);
        }
        h hVar2 = this.f29319t;
        if (hVar2 != null && !TextUtils.isEmpty(hVar2.getTooltipText())) {
            charSequence = this.f29319t.getTooltipText();
        }
        if (Build.VERSION.SDK_INT > 23) {
            o0.a(this, charSequence);
        }
    }

    public boolean showsIcon() {
        return true;
    }
}
