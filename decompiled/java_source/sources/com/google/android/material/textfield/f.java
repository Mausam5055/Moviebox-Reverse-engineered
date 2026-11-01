package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;

/* JADX INFO: loaded from: classes4.dex */
class f extends s {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f29909e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f29910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final TimeInterpolator f29911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TimeInterpolator f29912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private EditText f29913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View.OnClickListener f29914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View.OnFocusChangeListener f29915k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AnimatorSet f29916l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ValueAnimator f29917m;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            f.this.f29977b.f0(true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f29977b.f0(false);
        }
    }

    f(r rVar) {
        super(rVar);
        this.f29914j = new View.OnClickListener() { // from class: com.google.android.material.textfield.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f29904a.G(view);
            }
        };
        this.f29915k = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.b
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z10) {
                this.f29905a.H(view, z10);
            }
        };
        this.f29909e = wa.j.f(rVar.getContext(), R$attr.motionDurationShort3, 100);
        this.f29910f = wa.j.f(rVar.getContext(), R$attr.motionDurationShort3, 150);
        this.f29911g = wa.j.g(rVar.getContext(), R$attr.motionEasingLinearInterpolator, oa.a.f70918a);
        this.f29912h = wa.j.g(rVar.getContext(), R$attr.motionEasingEmphasizedInterpolator, oa.a.f70921d);
    }

    private void A(boolean z10) {
        boolean z11 = this.f29977b.I() == z10;
        if (z10 && !this.f29916l.isRunning()) {
            this.f29917m.cancel();
            this.f29916l.start();
            if (z11) {
                this.f29916l.end();
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        this.f29916l.cancel();
        this.f29917m.start();
        if (z11) {
            this.f29917m.end();
        }
    }

    private ValueAnimator B(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f29911g);
        valueAnimatorOfFloat.setDuration(this.f29909e);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29906a.E(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private ValueAnimator C() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(this.f29912h);
        valueAnimatorOfFloat.setDuration(this.f29910f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f29908a.F(valueAnimator);
            }
        });
        return valueAnimatorOfFloat;
    }

    private void D() {
        ValueAnimator valueAnimatorC = C();
        ValueAnimator valueAnimatorB = B(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f29916l = animatorSet;
        animatorSet.playTogether(valueAnimatorC, valueAnimatorB);
        this.f29916l.addListener(new a());
        ValueAnimator valueAnimatorB2 = B(1.0f, 0.0f);
        this.f29917m = valueAnimatorB2;
        valueAnimatorB2.addListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(ValueAnimator valueAnimator) {
        this.f29979d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f29979d.setScaleX(fFloatValue);
        this.f29979d.setScaleY(fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(View view) {
        EditText editText = this.f29913i;
        if (editText == null) {
            return;
        }
        Editable text = editText.getText();
        if (text != null) {
            text.clear();
        }
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(View view, boolean z10) {
        A(J());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        A(true);
    }

    private boolean J() {
        EditText editText = this.f29913i;
        return editText != null && (editText.hasFocus() || this.f29979d.hasFocus()) && this.f29913i.getText().length() > 0;
    }

    @Override // com.google.android.material.textfield.s
    void a(Editable editable) {
        if (this.f29977b.y() != null) {
            return;
        }
        A(J());
    }

    @Override // com.google.android.material.textfield.s
    int c() {
        return R$string.clear_text_end_icon_content_description;
    }

    @Override // com.google.android.material.textfield.s
    int d() {
        return R$drawable.mtrl_ic_cancel;
    }

    @Override // com.google.android.material.textfield.s
    View.OnFocusChangeListener e() {
        return this.f29915k;
    }

    @Override // com.google.android.material.textfield.s
    View.OnClickListener f() {
        return this.f29914j;
    }

    @Override // com.google.android.material.textfield.s
    View.OnFocusChangeListener g() {
        return this.f29915k;
    }

    @Override // com.google.android.material.textfield.s
    public void n(EditText editText) {
        this.f29913i = editText;
        this.f29976a.setEndIconVisible(J());
    }

    @Override // com.google.android.material.textfield.s
    void q(boolean z10) {
        if (this.f29977b.y() == null) {
            return;
        }
        A(z10);
    }

    @Override // com.google.android.material.textfield.s
    void s() {
        D();
    }

    @Override // com.google.android.material.textfield.s
    void u() {
        EditText editText = this.f29913i;
        if (editText != null) {
            editText.post(new Runnable() { // from class: com.google.android.material.textfield.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29907a.I();
                }
            });
        }
    }
}
