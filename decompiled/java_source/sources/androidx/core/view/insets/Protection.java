package androidx.core.view.insets;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* JADX INFO: loaded from: classes.dex */
public abstract class Protection {
    private static final long DEFAULT_DURATION_IN = 333;
    private static final long DEFAULT_DURATION_OUT = 166;
    private final a mAttributes = new a();
    private Object mController;
    private z0.c mInsets;
    private z0.c mInsetsIgnoringVisibility;
    private final int mSide;
    private float mSystemAlpha;
    private float mSystemInsetAmount;
    private float mUserAlpha;
    private ValueAnimator mUserAlphaAnimator;
    private float mUserInsetAmount;
    private ValueAnimator mUserInsetAmountAnimator;
    private static final Interpolator DEFAULT_INTERPOLATOR_MOVE_IN = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_MOVE_OUT = new PathInterpolator(0.6f, 0.0f, 1.0f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_FADE_IN = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_FADE_OUT = new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8394a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f8395b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private z0.c f8396c = z0.c.f79124e;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f8397d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Drawable f8398e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f8399f = 0.0f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f8400g = 0.0f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f8401h = 1.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private InterfaceC0071a f8402i;

        /* JADX INFO: renamed from: androidx.core.view.insets.Protection$a$a, reason: collision with other inner class name */
        interface InterfaceC0071a {
            void a(int i11);

            void b(z0.c cVar);

            void c(float f11);

            void d(int i11);

            void e(float f11);

            void f(float f11);

            void g(Drawable drawable);

            void onVisibilityChanged(boolean z10);
        }

        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void A(int i11) {
            if (this.f8394a != i11) {
                this.f8394a = i11;
                InterfaceC0071a interfaceC0071a = this.f8402i;
                if (interfaceC0071a != null) {
                    interfaceC0071a.d(i11);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f11) {
            if (this.f8401h != f11) {
                this.f8401h = f11;
                InterfaceC0071a interfaceC0071a = this.f8402i;
                if (interfaceC0071a != null) {
                    interfaceC0071a.c(f11);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void u(Drawable drawable) {
            this.f8398e = drawable;
            InterfaceC0071a interfaceC0071a = this.f8402i;
            if (interfaceC0071a != null) {
                interfaceC0071a.g(drawable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(int i11) {
            if (this.f8395b != i11) {
                this.f8395b = i11;
                InterfaceC0071a interfaceC0071a = this.f8402i;
                if (interfaceC0071a != null) {
                    interfaceC0071a.a(i11);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(z0.c cVar) {
            if (this.f8396c.equals(cVar)) {
                return;
            }
            this.f8396c = cVar;
            InterfaceC0071a interfaceC0071a = this.f8402i;
            if (interfaceC0071a != null) {
                interfaceC0071a.b(cVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x(float f11) {
            if (this.f8399f != f11) {
                this.f8399f = f11;
                InterfaceC0071a interfaceC0071a = this.f8402i;
                if (interfaceC0071a != null) {
                    interfaceC0071a.e(f11);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void y(float f11) {
            if (this.f8400g != f11) {
                this.f8400g = f11;
                InterfaceC0071a interfaceC0071a = this.f8402i;
                if (interfaceC0071a != null) {
                    interfaceC0071a.f(f11);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z(boolean z10) {
            if (this.f8397d != z10) {
                this.f8397d = z10;
                InterfaceC0071a interfaceC0071a = this.f8402i;
                if (interfaceC0071a != null) {
                    interfaceC0071a.onVisibilityChanged(z10);
                }
            }
        }

        float k() {
            return this.f8401h;
        }

        Drawable l() {
            return this.f8398e;
        }

        int m() {
            return this.f8395b;
        }

        z0.c n() {
            return this.f8396c;
        }

        float o() {
            return this.f8399f;
        }

        float p() {
            return this.f8400g;
        }

        int q() {
            return this.f8394a;
        }

        boolean r() {
            return this.f8397d;
        }

        void t(InterfaceC0071a interfaceC0071a) {
            if (this.f8402i != null && interfaceC0071a != null) {
                throw new IllegalStateException("Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?");
            }
            this.f8402i = interfaceC0071a;
        }
    }

    public Protection(int i11) {
        z0.c cVar = z0.c.f79124e;
        this.mInsets = cVar;
        this.mInsetsIgnoringVisibility = cVar;
        this.mSystemAlpha = 1.0f;
        this.mUserAlpha = 1.0f;
        this.mSystemInsetAmount = 1.0f;
        this.mUserInsetAmount = 1.0f;
        this.mController = null;
        this.mUserAlphaAnimator = null;
        this.mUserInsetAmountAnimator = null;
        if (i11 == 1 || i11 == 2 || i11 == 4 || i11 == 8) {
            this.mSide = i11;
            return;
        }
        throw new IllegalArgumentException("Unexpected side: " + i11);
    }

    private void cancelUserAlphaAnimation() {
        ValueAnimator valueAnimator = this.mUserAlphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mUserAlphaAnimator = null;
        }
    }

    private void cancelUserInsetsAmountAnimation() {
        ValueAnimator valueAnimator = this.mUserInsetAmountAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mUserInsetAmountAnimator = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateAlpha$0(ValueAnimator valueAnimator) {
        setAlphaInternal(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateInsetsAmount$1(ValueAnimator valueAnimator) {
        setAlphaInternal(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setAlphaInternal(float f11) {
        this.mUserAlpha = f11;
        updateAlpha();
    }

    private void setInsetAmountInternal(float f11) {
        this.mUserInsetAmount = f11;
        updateInsetAmount();
    }

    private void updateAlpha() {
        this.mAttributes.s(this.mSystemAlpha * this.mUserAlpha);
    }

    private void updateInsetAmount() {
        float f11 = this.mUserInsetAmount * this.mSystemInsetAmount;
        int i11 = this.mSide;
        if (i11 == 1) {
            a aVar = this.mAttributes;
            aVar.x((-(1.0f - f11)) * aVar.f8394a);
            return;
        }
        if (i11 == 2) {
            a aVar2 = this.mAttributes;
            aVar2.y((-(1.0f - f11)) * aVar2.f8395b);
        } else if (i11 == 4) {
            a aVar3 = this.mAttributes;
            aVar3.x((1.0f - f11) * aVar3.f8394a);
        } else {
            if (i11 != 8) {
                return;
            }
            a aVar4 = this.mAttributes;
            aVar4.y((1.0f - f11) * aVar4.f8395b);
        }
    }

    public void animateAlpha(float f11) {
        cancelUserAlphaAnimation();
        float f12 = this.mUserAlpha;
        if (f11 == f12) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f12, f11);
        this.mUserAlphaAnimator = valueAnimatorOfFloat;
        if (this.mUserAlpha < f11) {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_IN);
            this.mUserAlphaAnimator.setInterpolator(DEFAULT_INTERPOLATOR_FADE_IN);
        } else {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_OUT);
            this.mUserAlphaAnimator.setInterpolator(DEFAULT_INTERPOLATOR_FADE_OUT);
        }
        this.mUserAlphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.insets.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f8407a.lambda$animateAlpha$0(valueAnimator);
            }
        });
        this.mUserAlphaAnimator.start();
    }

    public void animateInsetsAmount(float f11) {
        cancelUserInsetsAmountAnimation();
        float f12 = this.mUserInsetAmount;
        if (f11 == f12) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f12, f11);
        this.mUserInsetAmountAnimator = valueAnimatorOfFloat;
        if (this.mUserInsetAmount < f11) {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_IN);
            this.mUserInsetAmountAnimator.setInterpolator(DEFAULT_INTERPOLATOR_MOVE_IN);
        } else {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_OUT);
            this.mUserInsetAmountAnimator.setInterpolator(DEFAULT_INTERPOLATOR_MOVE_OUT);
        }
        this.mUserInsetAmountAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.insets.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f8406a.lambda$animateInsetsAmount$1(valueAnimator);
            }
        });
        this.mUserInsetAmountAnimator.start();
    }

    void dispatchColorHint(int i11) {
    }

    z0.c dispatchInsets(z0.c cVar, z0.c cVar2, z0.c cVar3) {
        this.mInsets = cVar;
        this.mInsetsIgnoringVisibility = cVar2;
        this.mAttributes.w(cVar3);
        return updateLayout();
    }

    public float getAlpha() {
        return this.mUserAlpha;
    }

    a getAttributes() {
        return this.mAttributes;
    }

    Object getController() {
        return this.mController;
    }

    public float getInsetAmount() {
        return this.mUserInsetAmount;
    }

    public int getSide() {
        return this.mSide;
    }

    int getThickness(int i11) {
        return i11;
    }

    boolean occupiesCorners() {
        return false;
    }

    public void setAlpha(float f11) {
        if (f11 >= 0.0f && f11 <= 1.0f) {
            cancelUserAlphaAnimation();
            setAlphaInternal(f11);
        } else {
            throw new IllegalArgumentException("Alpha must in a range of [0, 1]. Got: " + f11);
        }
    }

    void setController(Object obj) {
        this.mController = obj;
    }

    void setDrawable(Drawable drawable) {
        this.mAttributes.u(drawable);
    }

    public void setInsetAmount(float f11) {
        if (f11 >= 0.0f && f11 <= 1.0f) {
            cancelUserInsetsAmountAnimation();
            setInsetAmountInternal(f11);
        } else {
            throw new IllegalArgumentException("Inset amount must in a range of [0, 1]. Got: " + f11);
        }
    }

    void setSystemAlpha(float f11) {
        this.mSystemAlpha = f11;
        updateAlpha();
    }

    void setSystemInsetAmount(float f11) {
        this.mSystemInsetAmount = f11;
        updateInsetAmount();
    }

    void setSystemVisible(boolean z10) {
        this.mAttributes.z(z10);
    }

    z0.c updateLayout() {
        int i11;
        z0.c cVarC = z0.c.f79124e;
        int i12 = this.mSide;
        if (i12 == 1) {
            i11 = this.mInsets.f79125a;
            this.mAttributes.A(getThickness(this.mInsetsIgnoringVisibility.f79125a));
            if (occupiesCorners()) {
                cVarC = z0.c.c(getThickness(i11), 0, 0, 0);
            }
        } else if (i12 == 2) {
            i11 = this.mInsets.f79126b;
            this.mAttributes.v(getThickness(this.mInsetsIgnoringVisibility.f79126b));
            if (occupiesCorners()) {
                cVarC = z0.c.c(0, getThickness(i11), 0, 0);
            }
        } else if (i12 == 4) {
            i11 = this.mInsets.f79127c;
            this.mAttributes.A(getThickness(this.mInsetsIgnoringVisibility.f79127c));
            if (occupiesCorners()) {
                cVarC = z0.c.c(0, 0, getThickness(i11), 0);
            }
        } else if (i12 != 8) {
            i11 = 0;
        } else {
            i11 = this.mInsets.f79128d;
            this.mAttributes.v(getThickness(this.mInsetsIgnoringVisibility.f79128d));
            if (occupiesCorners()) {
                cVarC = z0.c.c(0, 0, 0, getThickness(i11));
            }
        }
        setSystemVisible(i11 > 0);
        setSystemAlpha(i11 > 0 ? 1.0f : 0.0f);
        setSystemInsetAmount(i11 > 0 ? 1.0f : 0.0f);
        return cVarC;
    }
}
