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
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleGradientConstrainLayout extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f41179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BubbleDrawable f41180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f41181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f41182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f41183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f41184f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f41185g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f41186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f41187i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f41188j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private BubbleDrawable.ArrowLocation f41189k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private BubbleDrawable.GradientDirection f41190l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f41191m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f41192n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f41193o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f41194p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f41195q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f41196r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f41197s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ObjectAnimator f41198t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ObjectAnimator f41199u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private AnimatorSet f41200v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f41201w;

    class a implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f41202a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup.MarginLayoutParams f41203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f41204c;

        a(float f11, ViewGroup.MarginLayoutParams marginLayoutParams, int i11) {
            this.f41202a = f11;
            this.f41203b = marginLayoutParams;
            this.f41204c = i11;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            BubbleGradientConstrainLayout.this.setX(this.f41202a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f41203b;
            marginLayoutParams.leftMargin = this.f41204c;
            BubbleGradientConstrainLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BubbleGradientConstrainLayout.this.setX(this.f41202a);
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f41203b;
            marginLayoutParams.leftMargin = this.f41204c;
            BubbleGradientConstrainLayout.this.setLayoutParams(marginLayoutParams);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public BubbleGradientConstrainLayout(Context context) {
        super(context);
        this.f41179a = "BubbleGradientLinearLayout";
        l(null);
    }

    public BubbleGradientConstrainLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f41179a = "BubbleGradientLinearLayout";
        l(attributeSet);
    }

    private void i() {
        ObjectAnimator objectAnimator = this.f41198t;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.f41198t.cancel();
    }

    private static int j(Context context, float f11) {
        return (int) ((f11 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private float[] k(BubbleDrawable.GradientDirection gradientDirection) {
        return gradientDirection == BubbleDrawable.GradientDirection.getDefault() ? new float[]{0.0f, 0.0f, 0.0f, getHeight()} : new float[]{0.0f, 0.0f, getWidth(), 0.0f};
    }

    private void l(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f41181c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f41182d = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f41183e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f41184f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f41185g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f41141u);
            this.f41187i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f41142v);
            this.f41186h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f41143w);
            this.f41188j = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f41144x);
            this.f41191m = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f41145y);
            this.f41195q = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientStartColor, BubbleDrawable.b.f41145y);
            this.f41196r = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientEndColor, BubbleDrawable.b.f41145y);
            this.f41197s = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_gradientCenterColor, -1);
            this.f41201w = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_isOpenAnimator, false);
            this.f41189k = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f41190l = BubbleDrawable.GradientDirection.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_gradient_orientation, 0));
            this.f41192n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
            int i11 = this.f41197s;
            if (i11 > 0) {
                this.f41193o = new int[]{this.f41195q, i11, this.f41196r};
            } else {
                this.f41193o = new int[]{this.f41195q, this.f41196r};
            }
        }
    }

    private void m() {
        n(getWidth(), getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i11, int i12) {
        o((int) ((getPaddingLeft() + this.f41181c) - this.f41183e), (int) (((i11 - getPaddingRight()) - this.f41181c) - this.f41183e), (int) ((getPaddingTop() + this.f41181c) - this.f41184f), (int) (((i12 - getPaddingBottom()) - this.f41181c) - this.f41184f));
        setBackgroundDrawable(this.f41180b);
    }

    private void o(int i11, int i12, int i13, int i14) {
        if (i12 < i11 || i14 < i13) {
            return;
        }
        RectF rectF = new RectF(i11, i13, i12, i14);
        this.f41194p = k(this.f41190l);
        BubbleDrawable.b bVarU = new BubbleDrawable.b().B(rectF).t(this.f41189k).z(BubbleDrawable.BubbleType.SHADER).q(this.f41186h).s(this.f41187i).v(this.f41185g).u(this.f41188j);
        float[] fArr = this.f41194p;
        this.f41180b = bVarU.y(fArr[0], fArr[1], fArr[2], fArr[3], this.f41193o).r(this.f41192n).F(this.f41181c).C(this.f41182d).D(this.f41183e).E(this.f41184f).A();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startTransAnim();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        n(i11, i12);
    }

    public void setLocation(BubbleDrawable.ArrowLocation arrowLocation) {
        this.f41189k = arrowLocation;
        n(getWidth(), getHeight());
    }

    public void setUpBubbleDrawable() {
        setBackgroundDrawable(null);
        post(new Runnable() { // from class: com.tn.lib.view.bubbleview.BubbleGradientConstrainLayout.1
            @Override // java.lang.Runnable
            public void run() {
                BubbleGradientConstrainLayout bubbleGradientConstrainLayout = BubbleGradientConstrainLayout.this;
                bubbleGradientConstrainLayout.n(bubbleGradientConstrainLayout.getWidth(), BubbleGradientConstrainLayout.this.getHeight());
            }
        });
    }

    public void setmArrowPosition(float f11) {
        this.f41188j = f11;
        m();
    }

    public void startShowRemindAnim() {
        AnimatorSet animatorSet = this.f41200v;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f41200v = null;
        }
        this.f41200v = new AnimatorSet();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        float x10 = getX();
        int i11 = marginLayoutParams.leftMargin;
        if (this.f41199u == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationX", x10 - (Math.abs(i11) + j(getContext(), 4.0f)), j(getContext(), 4.0f) + x10, x10 - (Math.abs(marginLayoutParams.leftMargin) + j(getContext(), 4.0f)));
            this.f41199u = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(100L);
            this.f41199u.setInterpolator(new LinearInterpolator());
            this.f41199u.setRepeatCount(1);
            this.f41199u.addListener(new a(x10, marginLayoutParams, i11));
        }
        this.f41200v.play(this.f41199u).with(this.f41198t);
        this.f41200v.start();
    }

    public void startTransAnim() {
        if (this.f41201w) {
            if (this.f41198t == null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getY(), getY() - j(getContext(), 6.0f), getY());
                this.f41198t = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(2000L);
                this.f41198t.setInterpolator(new LinearInterpolator());
                this.f41198t.setRepeatCount(-1);
            }
            if (this.f41198t.isStarted()) {
                return;
            }
            this.f41198t.start();
        }
    }
}
