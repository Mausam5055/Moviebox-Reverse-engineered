package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class u {
    private ColorStateList A;
    private Typeface B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f29980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f29981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f29982c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TimeInterpolator f29983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TimeInterpolator f29984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TimeInterpolator f29985f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Context f29986g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TextInputLayout f29987h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f29988i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29989j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private FrameLayout f29990k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Animator f29991l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f29992m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f29993n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29994o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f29995p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f29996q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f29997r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CharSequence f29998s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29999t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f30000u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ColorStateList f30001v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CharSequence f30002w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f30003x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f30004y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f30005z;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f30006a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f30007b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f30008c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TextView f30009d;

        a(int i11, TextView textView, int i12, TextView textView2) {
            this.f30006a = i11;
            this.f30007b = textView;
            this.f30008c = i12;
            this.f30009d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            u.this.f29993n = this.f30006a;
            u.this.f29991l = null;
            TextView textView = this.f30007b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f30008c == 1 && u.this.f29997r != null) {
                    u.this.f29997r.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f30009d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f30009d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f30009d;
            if (textView != null) {
                textView.setVisibility(0);
                this.f30009d.setAlpha(0.0f);
            }
        }
    }

    class b extends View.AccessibilityDelegate {
        b() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = u.this.f29987h.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    public u(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f29986g = context;
        this.f29987h = textInputLayout;
        this.f29992m = context.getResources().getDimensionPixelSize(R$dimen.design_textinput_caption_translate_y);
        this.f29980a = wa.j.f(context, R$attr.motionDurationShort4, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE);
        this.f29981b = wa.j.f(context, R$attr.motionDurationMedium4, 167);
        this.f29982c = wa.j.f(context, R$attr.motionDurationShort4, 167);
        this.f29983d = wa.j.g(context, R$attr.motionEasingEmphasizedDecelerateInterpolator, oa.a.f70921d);
        int i11 = R$attr.motionEasingEmphasizedDecelerateInterpolator;
        TimeInterpolator timeInterpolator = oa.a.f70918a;
        this.f29984e = wa.j.g(context, i11, timeInterpolator);
        this.f29985f = wa.j.g(context, R$attr.motionEasingLinearInterpolator, timeInterpolator);
    }

    private void D(int i11, int i12) {
        TextView textViewM;
        TextView textViewM2;
        if (i11 == i12) {
            return;
        }
        if (i12 != 0 && (textViewM2 = m(i12)) != null) {
            textViewM2.setVisibility(0);
            textViewM2.setAlpha(1.0f);
        }
        if (i11 != 0 && (textViewM = m(i11)) != null) {
            textViewM.setVisibility(4);
            if (i11 == 1) {
                textViewM.setText((CharSequence) null);
            }
        }
        this.f29993n = i12;
    }

    private void M(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void O(ViewGroup viewGroup, int i11) {
        if (i11 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean P(TextView textView, CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f29987h) && this.f29987h.isEnabled() && !(this.f29994o == this.f29993n && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void S(int i11, int i12, boolean z10) {
        if (i11 == i12) {
            return;
        }
        if (z10) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f29991l = animatorSet;
            ArrayList arrayList = new ArrayList();
            i(arrayList, this.f30003x, this.f30004y, 2, i11, i12);
            i(arrayList, this.f29996q, this.f29997r, 1, i11, i12);
            oa.b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i12, m(i11), i11, m(i12)));
            animatorSet.start();
        } else {
            D(i11, i12);
        }
        this.f29987h.j0();
        this.f29987h.o0(z10);
        this.f29987h.u0();
    }

    private boolean g() {
        return (this.f29988i == null || this.f29987h.getEditText() == null) ? false : true;
    }

    private void i(List list, boolean z10, TextView textView, int i11, int i12, int i13) {
        if (textView == null || !z10) {
            return;
        }
        if (i11 == i13 || i11 == i12) {
            ObjectAnimator objectAnimatorJ = j(textView, i13 == i11);
            if (i11 == i13 && i12 != 0) {
                objectAnimatorJ.setStartDelay(this.f29982c);
            }
            list.add(objectAnimatorJ);
            if (i13 != i11 || i12 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorK = k(textView);
            objectAnimatorK.setStartDelay(this.f29982c);
            list.add(objectAnimatorK);
        }
    }

    private ObjectAnimator j(TextView textView, boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z10 ? 1.0f : 0.0f);
        objectAnimatorOfFloat.setDuration(z10 ? this.f29981b : this.f29982c);
        objectAnimatorOfFloat.setInterpolator(z10 ? this.f29984e : this.f29985f);
        return objectAnimatorOfFloat;
    }

    private ObjectAnimator k(TextView textView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f29992m, 0.0f);
        objectAnimatorOfFloat.setDuration(this.f29980a);
        objectAnimatorOfFloat.setInterpolator(this.f29983d);
        return objectAnimatorOfFloat;
    }

    private TextView m(int i11) {
        if (i11 == 1) {
            return this.f29997r;
        }
        if (i11 != 2) {
            return null;
        }
        return this.f30004y;
    }

    private int v(boolean z10, int i11, int i12) {
        return z10 ? this.f29986g.getResources().getDimensionPixelSize(i11) : i12;
    }

    private boolean y(int i11) {
        return (i11 != 1 || this.f29997r == null || TextUtils.isEmpty(this.f29995p)) ? false : true;
    }

    boolean A() {
        return this.f29996q;
    }

    boolean B() {
        return this.f30003x;
    }

    void C(TextView textView, int i11) {
        FrameLayout frameLayout;
        if (this.f29988i == null) {
            return;
        }
        if (!z(i11) || (frameLayout = this.f29990k) == null) {
            this.f29988i.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i12 = this.f29989j - 1;
        this.f29989j = i12;
        O(this.f29988i, i12);
    }

    void E(int i11) {
        this.f29999t = i11;
        TextView textView = this.f29997r;
        if (textView != null) {
            ViewCompat.setAccessibilityLiveRegion(textView, i11);
        }
    }

    void F(CharSequence charSequence) {
        this.f29998s = charSequence;
        TextView textView = this.f29997r;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    void G(boolean z10) {
        if (this.f29996q == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f29986g);
            this.f29997r = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_error);
            this.f29997r.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f29997r.setTypeface(typeface);
            }
            H(this.f30000u);
            I(this.f30001v);
            F(this.f29998s);
            E(this.f29999t);
            this.f29997r.setVisibility(4);
            e(this.f29997r, 0);
        } else {
            w();
            C(this.f29997r, 0);
            this.f29997r = null;
            this.f29987h.j0();
            this.f29987h.u0();
        }
        this.f29996q = z10;
    }

    void H(int i11) {
        this.f30000u = i11;
        TextView textView = this.f29997r;
        if (textView != null) {
            this.f29987h.W(textView, i11);
        }
    }

    void I(ColorStateList colorStateList) {
        this.f30001v = colorStateList;
        TextView textView = this.f29997r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void J(int i11) {
        this.f30005z = i11;
        TextView textView = this.f30004y;
        if (textView != null) {
            androidx.core.widget.m.q(textView, i11);
        }
    }

    void K(boolean z10) {
        if (this.f30003x == z10) {
            return;
        }
        h();
        if (z10) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f29986g);
            this.f30004y = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_helper_text);
            this.f30004y.setTextAlignment(5);
            Typeface typeface = this.B;
            if (typeface != null) {
                this.f30004y.setTypeface(typeface);
            }
            this.f30004y.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f30004y, 1);
            J(this.f30005z);
            L(this.A);
            e(this.f30004y, 1);
            this.f30004y.setAccessibilityDelegate(new b());
        } else {
            x();
            C(this.f30004y, 1);
            this.f30004y = null;
            this.f29987h.j0();
            this.f29987h.u0();
        }
        this.f30003x = z10;
    }

    void L(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f30004y;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    void N(Typeface typeface) {
        if (typeface != this.B) {
            this.B = typeface;
            M(this.f29997r, typeface);
            M(this.f30004y, typeface);
        }
    }

    void Q(CharSequence charSequence) {
        h();
        this.f29995p = charSequence;
        this.f29997r.setText(charSequence);
        int i11 = this.f29993n;
        if (i11 != 1) {
            this.f29994o = 1;
        }
        S(i11, this.f29994o, P(this.f29997r, charSequence));
    }

    void R(CharSequence charSequence) {
        h();
        this.f30002w = charSequence;
        this.f30004y.setText(charSequence);
        int i11 = this.f29993n;
        if (i11 != 2) {
            this.f29994o = 2;
        }
        S(i11, this.f29994o, P(this.f30004y, charSequence));
    }

    void e(TextView textView, int i11) {
        if (this.f29988i == null && this.f29990k == null) {
            LinearLayout linearLayout = new LinearLayout(this.f29986g);
            this.f29988i = linearLayout;
            linearLayout.setOrientation(0);
            this.f29987h.addView(this.f29988i, -1, -2);
            this.f29990k = new FrameLayout(this.f29986g);
            this.f29988i.addView(this.f29990k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f29987h.getEditText() != null) {
                f();
            }
        }
        if (z(i11)) {
            this.f29990k.setVisibility(0);
            this.f29990k.addView(textView);
        } else {
            this.f29988i.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f29988i.setVisibility(0);
        this.f29989j++;
    }

    void f() {
        if (g()) {
            EditText editText = this.f29987h.getEditText();
            boolean zJ = xa.c.j(this.f29986g);
            ViewCompat.setPaddingRelative(this.f29988i, v(zJ, R$dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingStart(editText)), v(zJ, R$dimen.material_helper_text_font_1_3_padding_top, this.f29986g.getResources().getDimensionPixelSize(R$dimen.material_helper_text_default_padding_top)), v(zJ, R$dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    void h() {
        Animator animator = this.f29991l;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean l() {
        return y(this.f29994o);
    }

    int n() {
        return this.f29999t;
    }

    CharSequence o() {
        return this.f29998s;
    }

    CharSequence p() {
        return this.f29995p;
    }

    int q() {
        TextView textView = this.f29997r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    ColorStateList r() {
        TextView textView = this.f29997r;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    CharSequence s() {
        return this.f30002w;
    }

    View t() {
        return this.f30004y;
    }

    int u() {
        TextView textView = this.f30004y;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    void w() {
        this.f29995p = null;
        h();
        if (this.f29993n == 1) {
            if (!this.f30003x || TextUtils.isEmpty(this.f30002w)) {
                this.f29994o = 0;
            } else {
                this.f29994o = 2;
            }
        }
        S(this.f29993n, this.f29994o, P(this.f29997r, ""));
    }

    void x() {
        h();
        int i11 = this.f29993n;
        if (i11 == 2) {
            this.f29994o = 0;
        }
        S(i11, this.f29994o, P(this.f30004y, ""));
    }

    boolean z(int i11) {
        return i11 == 0 || i11 == 1;
    }
}
