package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.internal.g0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseTransientBottomBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f29738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f29739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f29740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TimeInterpolator f29741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TimeInterpolator f29742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TimeInterpolator f29743f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ViewGroup f29744g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Context f29745h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final SnackbarBaseLayout f29746i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.google.android.material.snackbar.a f29747j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f29748k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f29749l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29752o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f29753p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f29754q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f29755r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f29756s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29757t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f29758u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List f29759v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Behavior f29760w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final AccessibilityManager f29761x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final TimeInterpolator f29737z = oa.a.f70919b;
    private static final TimeInterpolator A = oa.a.f70918a;
    private static final TimeInterpolator B = oa.a.f70921d;
    private static final boolean D = false;
    private static final int[] E = {R$attr.snackbarStyle};
    private static final String F = BaseTransientBottomBar.class.getSimpleName();
    static final Handler C = new Handler(Looper.getMainLooper(), new h());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f29750m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Runnable f29751n = new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f29746i == null || baseTransientBottomBar.f29745h == null) {
                return;
            }
            int iHeight = (g0.a(BaseTransientBottomBar.this.f29745h).height() - BaseTransientBottomBar.this.I()) + ((int) BaseTransientBottomBar.this.f29746i.getTranslationY());
            if (iHeight >= BaseTransientBottomBar.this.f29756s) {
                BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
                baseTransientBottomBar2.f29757t = baseTransientBottomBar2.f29756s;
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f29746i.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.F, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            baseTransientBottomBar3.f29757t = baseTransientBottomBar3.f29756s;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f29756s - iHeight;
            BaseTransientBottomBar.this.f29746i.requestLayout();
        }
    };

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    com.google.android.material.snackbar.d.b f29762y = new k();

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final o f29763l = new o(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void Q(BaseTransientBottomBar baseTransientBottomBar) {
            this.f29763l.c(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean F(View view) {
            return this.f29763l.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.f29763l.b(coordinatorLayout, view, motionEvent);
            return super.k(coordinatorLayout, view, motionEvent);
        }
    }

    protected static class SnackbarBaseLayout extends FrameLayout {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final View.OnTouchListener f29764l = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private BaseTransientBottomBar f29765a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ab.n f29766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f29767c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f29768d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f29769e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f29770f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f29771g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ColorStateList f29772h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private PorterDuff.Mode f29773i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Rect f29774j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f29775k;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        protected SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        protected SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(bb.a.c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_elevation, 0));
            }
            this.f29767c = typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_animationMode, 0);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_shapeAppearance) || typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_shapeAppearanceOverlay)) {
                this.f29766b = ab.n.e(context2, attributeSet, 0, 0).m();
            }
            this.f29768d = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(xa.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(f0.r(typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f29769e = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.f29770f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_android_maxWidth, -1);
            this.f29771g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_maxActionInlineWidth, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(f29764l);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, d());
            }
        }

        private Drawable d() {
            int iK = com.google.android.material.color.b.k(this, R$attr.colorSurface, R$attr.colorOnSurface, getBackgroundOverlayColorAlpha());
            ab.n nVar = this.f29766b;
            Drawable drawableW = nVar != null ? BaseTransientBottomBar.w(iK, nVar) : BaseTransientBottomBar.v(iK, getResources());
            if (this.f29772h == null) {
                return a1.a.r(drawableW);
            }
            Drawable drawableR = a1.a.r(drawableW);
            a1.a.o(drawableR, this.f29772h);
            return drawableR;
        }

        private void e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.f29774j = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar baseTransientBottomBar) {
            this.f29765a = baseTransientBottomBar;
        }

        void c(ViewGroup viewGroup) {
            this.f29775k = true;
            viewGroup.addView(this);
            this.f29775k = false;
        }

        float getActionTextColorAlpha() {
            return this.f29769e;
        }

        int getAnimationMode() {
            return this.f29767c;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f29768d;
        }

        int getMaxInlineActionWidth() {
            return this.f29771g;
        }

        int getMaxWidth() {
            return this.f29770f;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.f29765a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.N();
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.f29765a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.O();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
            super.onLayout(z10, i11, i12, i13, i14);
            BaseTransientBottomBar baseTransientBottomBar = this.f29765a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.P();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i11, int i12) {
            super.onMeasure(i11, i12);
            if (this.f29770f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i13 = this.f29770f;
                if (measuredWidth > i13) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), i12);
                }
            }
        }

        void setAnimationMode(int i11) {
            this.f29767c = i11;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f29772h != null) {
                drawable = a1.a.r(drawable.mutate());
                a1.a.o(drawable, this.f29772h);
                a1.a.p(drawable, this.f29773i);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f29772h = colorStateList;
            if (getBackground() != null) {
                Drawable drawableR = a1.a.r(getBackground().mutate());
                a1.a.o(drawableR, colorStateList);
                a1.a.p(drawableR, this.f29773i);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f29773i = mode;
            if (getBackground() != null) {
                Drawable drawableR = a1.a.r(getBackground().mutate());
                a1.a.p(drawableR, mode);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f29775k || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            e((ViewGroup.MarginLayoutParams) layoutParams);
            BaseTransientBottomBar baseTransientBottomBar = this.f29765a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.e0();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f29764l);
            super.setOnClickListener(onClickListener);
        }
    }

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f29776a;

        a(int i11) {
            this.f29776a = i11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.Q(this.f29776a);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f29746i.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.f29746i.setScaleX(fFloatValue);
            BaseTransientBottomBar.this.f29746i.setScaleY(fFloatValue);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f29747j.animateContentIn(BaseTransientBottomBar.this.f29740c - BaseTransientBottomBar.this.f29738a, BaseTransientBottomBar.this.f29738a);
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f29781a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f29782b;

        e(int i11) {
            this.f29782b = i11;
            this.f29781a = i11;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.D) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f29746i, iIntValue - this.f29781a);
            } else {
                BaseTransientBottomBar.this.f29746i.setTranslationY(iIntValue);
            }
            this.f29781a = iIntValue;
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f29784a;

        f(int i11) {
            this.f29784a = i11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.Q(this.f29784a);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f29747j.animateContentOut(0, BaseTransientBottomBar.this.f29739b);
        }
    }

    class g implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f29786a = 0;

        g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.D) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f29746i, iIntValue - this.f29786a);
            } else {
                BaseTransientBottomBar.this.f29746i.setTranslationY(iIntValue);
            }
            this.f29786a = iIntValue;
        }
    }

    class h implements Handler.Callback {
        h() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == 0) {
                ((BaseTransientBottomBar) message.obj).Y();
                return true;
            }
            if (i11 != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).K(message.arg1);
            return true;
        }
    }

    class i implements OnApplyWindowInsetsListener {
        i() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.f29752o = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.f29753p = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.f29754q = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.e0();
            return windowInsetsCompat;
        }
    }

    class j extends AccessibilityDelegateCompat {
        j() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i11, Bundle bundle) {
            if (i11 != 1048576) {
                return super.performAccessibilityAction(view, i11, bundle);
            }
            BaseTransientBottomBar.this.x();
            return true;
        }
    }

    class k implements com.google.android.material.snackbar.d.b {
        k() {
        }

        @Override // com.google.android.material.snackbar.d.b
        public void a(int i11) {
            Handler handler = BaseTransientBottomBar.C;
            handler.sendMessage(handler.obtainMessage(1, i11, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.d.b
        public void show() {
            Handler handler = BaseTransientBottomBar.C;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    class l implements SwipeDismissBehavior.c {
        l() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void a(View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.y(0);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void b(int i11) {
            if (i11 == 0) {
                com.google.android.material.snackbar.d.c().k(BaseTransientBottomBar.this.f29762y);
            } else if (i11 == 1 || i11 == 2) {
                com.google.android.material.snackbar.d.c().j(BaseTransientBottomBar.this.f29762y);
            }
        }
    }

    class m extends AnimatorListenerAdapter {
        m() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R();
        }
    }

    public static abstract class n {
        public void a(Object obj, int i11) {
        }

        public void b(Object obj) {
        }
    }

    public static class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.google.android.material.snackbar.d.b f29793a;

        public o(SwipeDismissBehavior swipeDismissBehavior) {
            swipeDismissBehavior.M(0.1f);
            swipeDismissBehavior.K(0.6f);
            swipeDismissBehavior.N(0);
        }

        public boolean a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void b(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.d.c().j(this.f29793a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.d.c().k(this.f29793a);
            }
        }

        public void c(BaseTransientBottomBar baseTransientBottomBar) {
            this.f29793a = baseTransientBottomBar.f29762y;
        }
    }

    protected BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, com.google.android.material.snackbar.a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f29744g = viewGroup;
        this.f29747j = aVar;
        this.f29745h = context;
        b0.a(context);
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(F(), viewGroup, false);
        this.f29746i = snackbarBaseLayout;
        snackbarBaseLayout.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            snackbarContentLayout.a(snackbarBaseLayout.getActionTextColorAlpha());
            snackbarContentLayout.setMaxInlineActionWidth(snackbarBaseLayout.getMaxInlineActionWidth());
        }
        snackbarBaseLayout.addView(view);
        ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
        ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
        ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
        ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new i());
        ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new j());
        this.f29761x = (AccessibilityManager) context.getSystemService("accessibility");
        this.f29740c = wa.j.f(context, R$attr.motionDurationLong2, 250);
        this.f29738a = wa.j.f(context, R$attr.motionDurationLong2, 150);
        this.f29739b = wa.j.f(context, R$attr.motionDurationMedium1, 75);
        this.f29741d = wa.j.g(context, R$attr.motionEasingEmphasizedInterpolator, A);
        this.f29743f = wa.j.g(context, R$attr.motionEasingEmphasizedInterpolator, B);
        this.f29742e = wa.j.g(context, R$attr.motionEasingEmphasizedInterpolator, f29737z);
    }

    private ValueAnimator E(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f29743f);
        valueAnimatorOfFloat.addUpdateListener(new c());
        return valueAnimatorOfFloat;
    }

    private int G() {
        int height = this.f29746i.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f29746i.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I() {
        int[] iArr = new int[2];
        this.f29746i.getLocationInWindow(iArr);
        return iArr[1] + this.f29746i.getHeight();
    }

    private boolean M() {
        ViewGroup.LayoutParams layoutParams = this.f29746i.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) layoutParams).f() instanceof SwipeDismissBehavior);
    }

    private void S() {
        this.f29755r = u();
        e0();
    }

    private void U(CoordinatorLayout.f fVar) {
        SwipeDismissBehavior swipeDismissBehaviorD = this.f29760w;
        if (swipeDismissBehaviorD == null) {
            swipeDismissBehaviorD = D();
        }
        if (swipeDismissBehaviorD instanceof Behavior) {
            ((Behavior) swipeDismissBehaviorD).Q(this);
        }
        swipeDismissBehaviorD.L(new l());
        fVar.o(swipeDismissBehaviorD);
        if (A() == null) {
            fVar.f7913g = 80;
        }
    }

    private boolean W() {
        return this.f29756s > 0 && !this.f29749l && M();
    }

    private void Z() {
        if (V()) {
            s();
            return;
        }
        if (this.f29746i.getParent() != null) {
            this.f29746i.setVisibility(0);
        }
        R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        ValueAnimator valueAnimatorZ = z(0.0f, 1.0f);
        ValueAnimator valueAnimatorE = E(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorZ, valueAnimatorE);
        animatorSet.setDuration(this.f29738a);
        animatorSet.addListener(new m());
        animatorSet.start();
    }

    private void b0(int i11) {
        ValueAnimator valueAnimatorZ = z(1.0f, 0.0f);
        valueAnimatorZ.setDuration(this.f29739b);
        valueAnimatorZ.addListener(new a(i11));
        valueAnimatorZ.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        int iG = G();
        if (D) {
            ViewCompat.offsetTopAndBottom(this.f29746i, iG);
        } else {
            this.f29746i.setTranslationY(iG);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iG, 0);
        valueAnimator.setInterpolator(this.f29742e);
        valueAnimator.setDuration(this.f29740c);
        valueAnimator.addListener(new d());
        valueAnimator.addUpdateListener(new e(iG));
        valueAnimator.start();
    }

    private void d0(int i11) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, G());
        valueAnimator.setInterpolator(this.f29742e);
        valueAnimator.setDuration(this.f29740c);
        valueAnimator.addListener(new f(i11));
        valueAnimator.addUpdateListener(new g());
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        ViewGroup.LayoutParams layoutParams = this.f29746i.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            Log.w(F, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (this.f29746i.f29774j == null) {
            Log.w(F, "Unable to update margins because original view margins are not set");
            return;
        }
        if (this.f29746i.getParent() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i11 = this.f29746i.f29774j.bottom + (A() != null ? this.f29755r : this.f29752o);
        int i12 = this.f29746i.f29774j.left + this.f29753p;
        int i13 = this.f29746i.f29774j.right + this.f29754q;
        int i14 = this.f29746i.f29774j.top;
        boolean z10 = (marginLayoutParams.bottomMargin == i11 && marginLayoutParams.leftMargin == i12 && marginLayoutParams.rightMargin == i13 && marginLayoutParams.topMargin == i14) ? false : true;
        if (z10) {
            marginLayoutParams.bottomMargin = i11;
            marginLayoutParams.leftMargin = i12;
            marginLayoutParams.rightMargin = i13;
            marginLayoutParams.topMargin = i14;
            this.f29746i.requestLayout();
        }
        if ((z10 || this.f29757t != this.f29756s) && Build.VERSION.SDK_INT >= 29 && W()) {
            this.f29746i.removeCallbacks(this.f29751n);
            this.f29746i.post(this.f29751n);
        }
    }

    private void t(int i11) {
        if (this.f29746i.getAnimationMode() == 1) {
            b0(i11);
        } else {
            d0(i11);
        }
    }

    private int u() {
        if (A() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        A().getLocationOnScreen(iArr);
        int i11 = iArr[1];
        int[] iArr2 = new int[2];
        this.f29744g.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f29744g.getHeight()) - i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GradientDrawable v(int i11, Resources resources) {
        float dimension = resources.getDimension(R$dimen.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(i11);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ab.i w(int i11, ab.n nVar) {
        ab.i iVar = new ab.i(nVar);
        iVar.d0(ColorStateList.valueOf(i11));
        return iVar;
    }

    private ValueAnimator z(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f29741d);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    public View A() {
        return null;
    }

    public Context B() {
        return this.f29745h;
    }

    public int C() {
        return this.f29748k;
    }

    protected SwipeDismissBehavior D() {
        return new Behavior();
    }

    protected int F() {
        return J() ? R$layout.mtrl_layout_snackbar : R$layout.design_layout_snackbar;
    }

    public View H() {
        return this.f29746i;
    }

    protected boolean J() {
        TypedArray typedArrayObtainStyledAttributes = this.f29745h.obtainStyledAttributes(E);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    final void K(int i11) {
        if (V() && this.f29746i.getVisibility() == 0) {
            t(i11);
        } else {
            Q(i11);
        }
    }

    public boolean L() {
        return com.google.android.material.snackbar.d.c().e(this.f29762y);
    }

    void N() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.f29746i.getRootWindowInsets()) == null) {
            return;
        }
        this.f29756s = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        e0();
    }

    void O() {
        if (L()) {
            C.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
                @Override // java.lang.Runnable
                public void run() {
                    BaseTransientBottomBar.this.Q(3);
                }
            });
        }
    }

    void P() {
        if (this.f29758u) {
            Z();
            this.f29758u = false;
        }
    }

    void Q(int i11) {
        com.google.android.material.snackbar.d.c().h(this.f29762y);
        List list = this.f29759v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((n) this.f29759v.get(size)).a(this, i11);
            }
        }
        ViewParent parent = this.f29746i.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f29746i);
        }
    }

    void R() {
        com.google.android.material.snackbar.d.c().i(this.f29762y);
        List list = this.f29759v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((n) this.f29759v.get(size)).b(this);
            }
        }
    }

    public BaseTransientBottomBar T(int i11) {
        this.f29748k = i11;
        return this;
    }

    boolean V() {
        AccessibilityManager accessibilityManager = this.f29761x;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public void X() {
        com.google.android.material.snackbar.d.c().m(C(), this.f29762y);
    }

    final void Y() {
        if (this.f29746i.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f29746i.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                U((CoordinatorLayout.f) layoutParams);
            }
            this.f29746i.c(this.f29744g);
            S();
            this.f29746i.setVisibility(4);
        }
        if (ViewCompat.isLaidOut(this.f29746i)) {
            Z();
        } else {
            this.f29758u = true;
        }
    }

    void s() {
        this.f29746i.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
            @Override // java.lang.Runnable
            public void run() {
                SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.f29746i;
                if (snackbarBaseLayout == null) {
                    return;
                }
                if (snackbarBaseLayout.getParent() != null) {
                    BaseTransientBottomBar.this.f29746i.setVisibility(0);
                }
                if (BaseTransientBottomBar.this.f29746i.getAnimationMode() == 1) {
                    BaseTransientBottomBar.this.a0();
                } else {
                    BaseTransientBottomBar.this.c0();
                }
            }
        });
    }

    public void x() {
        y(3);
    }

    protected void y(int i11) {
        com.google.android.material.snackbar.d.c().b(this.f29762y, i11);
    }
}
