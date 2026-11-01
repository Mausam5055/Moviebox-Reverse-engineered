package com.tn.lib.view.bubbleview;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleGradientLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f41206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BubbleDrawable f41207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f41208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f41209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f41210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f41211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f41212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f41213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f41214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f41215j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private BubbleDrawable.ArrowLocation f41216k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private BubbleDrawable.GradientDirection f41217l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f41218m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f41219n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f41220o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f41221p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f41222q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f41223r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f41224s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ObjectAnimator f41225t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ObjectAnimator f41226u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private AnimatorSet f41227v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f41228w;

    class a implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f41229a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup.MarginLayoutParams f41230b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f41231c;

        a(float f11, ViewGroup.MarginLayoutParams marginLayoutParams, int i11) {
            this.f41229a = f11;
            this.f41230b = marginLayoutParams;
            this.f41231c = i11;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            BubbleGradientLinearLayout.this.setX(this.f41229a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f41230b;
            marginLayoutParams.leftMargin = this.f41231c;
            BubbleGradientLinearLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BubbleGradientLinearLayout.this.setX(this.f41229a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f41230b;
            marginLayoutParams.leftMargin = this.f41231c;
            BubbleGradientLinearLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f41233a;

        static {
            int[] iArr = new int[BubbleDrawable.GradientDirection.values().length];
            f41233a = iArr;
            try {
                iArr[BubbleDrawable.GradientDirection.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41233a[BubbleDrawable.GradientDirection.TOP_LEFT_BOTTOM_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41233a[BubbleDrawable.GradientDirection.TOP_RIGHT_BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f41233a[BubbleDrawable.GradientDirection.BOTTOM_LEFT_TOP_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f41233a[BubbleDrawable.GradientDirection.BOTTOM_RIGHT_TOP_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public BubbleGradientLinearLayout(Context context) {
        super(context);
        this.f41206a = "BubbleGradientLinearLayout";
        e(null);
    }

    public BubbleGradientLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f41206a = "BubbleGradientLinearLayout";
        e(attributeSet);
    }

    private void b() {
        ObjectAnimator objectAnimator = this.f41225t;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.f41225t.cancel();
    }

    private static int c(Context context, float f11) {
        return (int) ((f11 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private float[] d(BubbleDrawable.GradientDirection gradientDirection) {
        int i11 = b.f41233a[gradientDirection.ordinal()];
        if (i11 == 1) {
            return new float[]{0.0f, 0.0f, getWidth(), 0.0f};
        }
        if (i11 == 2) {
            return new float[]{0.0f, 0.0f, getWidth(), getHeight()};
        }
        if (i11 == 3) {
            return new float[]{getWidth(), 0.0f, 0.0f, getHeight()};
        }
        if (i11 != 4) {
            return i11 != 5 ? new float[]{0.0f, 0.0f, 0.0f, getHeight()} : new float[]{getWidth(), getHeight(), 0.0f, 0.0f};
        }
        return new float[]{0.0f, getHeight(), getWidth(), 0.0f};
    }

    private void e(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f41208c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f41209d = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f41210e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f41211f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f41212g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f41141u);
            this.f41214i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f41142v);
            this.f41213h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f41143w);
            this.f41215j = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f41144x);
            this.f41218m = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f41145y);
            this.f41222q = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientStartColor, BubbleDrawable.b.f41145y);
            this.f41223r = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientEndColor, BubbleDrawable.b.f41145y);
            this.f41224s = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientCenterColor, BubbleDrawable.b.f41145y);
            this.f41228w = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_isOpenAnimator, false);
            this.f41216k = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f41217l = BubbleDrawable.GradientDirection.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_gradient_orientation, 0));
            this.f41219n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
            int i11 = this.f41224s;
            if (i11 != BubbleDrawable.b.f41145y) {
                this.f41220o = new int[]{this.f41222q, i11, this.f41223r};
            } else {
                this.f41220o = new int[]{this.f41222q, this.f41223r};
            }
        }
    }

    private void f() {
        g(getWidth(), getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i11, int i12) {
        h((int) ((getPaddingLeft() + this.f41208c) - this.f41210e), (int) (((i11 - getPaddingRight()) - this.f41208c) - this.f41210e), (int) ((getPaddingTop() + this.f41208c) - this.f41211f), (int) (((i12 - getPaddingBottom()) - this.f41208c) - this.f41211f));
        setBackgroundDrawable(this.f41207b);
    }

    private void h(int i11, int i12, int i13, int i14) {
        if (i12 < i11 || i14 < i13) {
            return;
        }
        RectF rectF = new RectF(i11, i13, i12, i14);
        this.f41221p = d(this.f41217l);
        BubbleDrawable.b bVarU = new BubbleDrawable.b().B(rectF).t(this.f41216k).z(BubbleDrawable.BubbleType.SHADER).q(this.f41213h).s(this.f41214i).v(this.f41212g).u(this.f41215j);
        float[] fArr = this.f41221p;
        this.f41207b = bVarU.y(fArr[0], fArr[1], fArr[2], fArr[3], this.f41220o).r(this.f41219n).F(this.f41208c).C(this.f41209d).D(this.f41210e).E(this.f41211f).A();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startTransAnim();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        g(i11, i12);
    }

    public void setGradientColors(int i11, int i12, int i13) {
        this.f41222q = i11;
        this.f41223r = i12;
        this.f41224s = i13;
        f();
    }

    public void setLocation(BubbleDrawable.ArrowLocation arrowLocation) {
        this.f41216k = arrowLocation;
        g(getWidth(), getHeight());
    }

    public void setUpBubbleDrawable() {
        setBackgroundDrawable(null);
        post(new Runnable() { // from class: com.tn.lib.view.bubbleview.BubbleGradientLinearLayout.1
            @Override // java.lang.Runnable
            public void run() {
                BubbleGradientLinearLayout bubbleGradientLinearLayout = BubbleGradientLinearLayout.this;
                bubbleGradientLinearLayout.g(bubbleGradientLinearLayout.getWidth(), BubbleGradientLinearLayout.this.getHeight());
            }
        });
    }

    public void setmArrowPosition(float f11) {
        this.f41215j = f11;
        f();
    }

    public void startShowRemindAnim() {
        AnimatorSet animatorSet = this.f41227v;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f41227v = null;
        }
        this.f41227v = new AnimatorSet();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        float x10 = getX();
        int i11 = marginLayoutParams.leftMargin;
        if (this.f41226u == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationX", x10 - (Math.abs(i11) + c(getContext(), 4.0f)), c(getContext(), 4.0f) + x10, x10 - (Math.abs(marginLayoutParams.leftMargin) + c(getContext(), 4.0f)));
            this.f41226u = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(100L);
            this.f41226u.setInterpolator(new LinearInterpolator());
            this.f41226u.setRepeatCount(1);
            this.f41226u.addListener(new a(x10, marginLayoutParams, i11));
        }
        this.f41227v.play(this.f41226u).with(this.f41225t);
        this.f41227v.start();
    }

    public void startTransAnim() {
        if (this.f41228w) {
            if (this.f41225t == null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getY(), getY() - c(getContext(), 6.0f), getY());
                this.f41225t = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(2000L);
                this.f41225t.setInterpolator(new LinearInterpolator());
                this.f41225t.setRepeatCount(-1);
            }
            if (this.f41225t.isStarted()) {
                return;
            }
            this.f41225t.start();
        }
    }
}
