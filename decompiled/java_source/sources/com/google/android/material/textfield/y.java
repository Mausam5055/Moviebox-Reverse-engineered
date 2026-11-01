package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.j0;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: loaded from: classes4.dex */
class y extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextInputLayout f30016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextView f30017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CharSequence f30018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CheckableImageButton f30019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorStateList f30020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PorterDuff.Mode f30021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f30022g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView.ScaleType f30023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View.OnLongClickListener f30024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f30025j;

    y(TextInputLayout textInputLayout, j0 j0Var) {
        super(textInputLayout.getContext());
        this.f30016a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R$layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f30019d = checkableImageButton;
        t.e(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f30017b = appCompatTextView;
        j(j0Var);
        i(j0Var);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void D() {
        int i11 = (this.f30018c == null || this.f30025j) ? 8 : 0;
        setVisibility((this.f30019d.getVisibility() == 0 || i11 == 0) ? 0 : 8);
        this.f30017b.setVisibility(i11);
        this.f30016a.i0();
    }

    private void i(j0 j0Var) {
        this.f30017b.setVisibility(8);
        this.f30017b.setId(R$id.textinput_prefix_text);
        this.f30017b.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(this.f30017b, 1);
        p(j0Var.n(R$styleable.TextInputLayout_prefixTextAppearance, 0));
        if (j0Var.s(R$styleable.TextInputLayout_prefixTextColor)) {
            q(j0Var.c(R$styleable.TextInputLayout_prefixTextColor));
        }
        o(j0Var.p(R$styleable.TextInputLayout_prefixText));
    }

    private void j(j0 j0Var) {
        if (xa.c.j(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) this.f30019d.getLayoutParams(), 0);
        }
        v(null);
        w(null);
        if (j0Var.s(R$styleable.TextInputLayout_startIconTint)) {
            this.f30020e = xa.c.b(getContext(), j0Var, R$styleable.TextInputLayout_startIconTint);
        }
        if (j0Var.s(R$styleable.TextInputLayout_startIconTintMode)) {
            this.f30021f = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (j0Var.s(R$styleable.TextInputLayout_startIconDrawable)) {
            t(j0Var.g(R$styleable.TextInputLayout_startIconDrawable));
            if (j0Var.s(R$styleable.TextInputLayout_startIconContentDescription)) {
                s(j0Var.p(R$styleable.TextInputLayout_startIconContentDescription));
            }
            r(j0Var.a(R$styleable.TextInputLayout_startIconCheckable, true));
        }
        u(j0Var.f(R$styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size)));
        if (j0Var.s(R$styleable.TextInputLayout_startIconScaleType)) {
            x(t.b(j0Var.k(R$styleable.TextInputLayout_startIconScaleType, -1)));
        }
    }

    void A(boolean z10) {
        if (l() != z10) {
            this.f30019d.setVisibility(z10 ? 0 : 8);
            C();
            D();
        }
    }

    void B(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f30017b.getVisibility() != 0) {
            accessibilityNodeInfoCompat.setTraversalAfter(this.f30019d);
        } else {
            accessibilityNodeInfoCompat.setLabelFor(this.f30017b);
            accessibilityNodeInfoCompat.setTraversalAfter(this.f30017b);
        }
    }

    void C() {
        EditText editText = this.f30016a.f29851d;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f30017b, l() ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    CharSequence a() {
        return this.f30018c;
    }

    ColorStateList b() {
        return this.f30017b.getTextColors();
    }

    int c() {
        return ViewCompat.getPaddingStart(this) + ViewCompat.getPaddingStart(this.f30017b) + (l() ? this.f30019d.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) this.f30019d.getLayoutParams()) : 0);
    }

    TextView d() {
        return this.f30017b;
    }

    CharSequence e() {
        return this.f30019d.getContentDescription();
    }

    Drawable f() {
        return this.f30019d.getDrawable();
    }

    int g() {
        return this.f30022g;
    }

    ImageView.ScaleType h() {
        return this.f30023h;
    }

    boolean k() {
        return this.f30019d.isCheckable();
    }

    boolean l() {
        return this.f30019d.getVisibility() == 0;
    }

    void m(boolean z10) {
        this.f30025j = z10;
        D();
    }

    void n() {
        t.d(this.f30016a, this.f30019d, this.f30020e);
    }

    void o(CharSequence charSequence) {
        this.f30018c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f30017b.setText(charSequence);
        D();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        C();
    }

    void p(int i11) {
        androidx.core.widget.m.q(this.f30017b, i11);
    }

    void q(ColorStateList colorStateList) {
        this.f30017b.setTextColor(colorStateList);
    }

    void r(boolean z10) {
        this.f30019d.setCheckable(z10);
    }

    void s(CharSequence charSequence) {
        if (e() != charSequence) {
            this.f30019d.setContentDescription(charSequence);
        }
    }

    void t(Drawable drawable) {
        this.f30019d.setImageDrawable(drawable);
        if (drawable != null) {
            t.a(this.f30016a, this.f30019d, this.f30020e, this.f30021f);
            A(true);
            n();
        } else {
            A(false);
            v(null);
            w(null);
            s(null);
        }
    }

    void u(int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i11 != this.f30022g) {
            this.f30022g = i11;
            t.g(this.f30019d, i11);
        }
    }

    void v(View.OnClickListener onClickListener) {
        t.h(this.f30019d, onClickListener, this.f30024i);
    }

    void w(View.OnLongClickListener onLongClickListener) {
        this.f30024i = onLongClickListener;
        t.i(this.f30019d, onLongClickListener);
    }

    void x(ImageView.ScaleType scaleType) {
        this.f30023h = scaleType;
        t.j(this.f30019d, scaleType);
    }

    void y(ColorStateList colorStateList) {
        if (this.f30020e != colorStateList) {
            this.f30020e = colorStateList;
            t.a(this.f30016a, this.f30019d, colorStateList, this.f30021f);
        }
    }

    void z(PorterDuff.Mode mode) {
        if (this.f30021f != mode) {
            this.f30021f = mode;
            t.a(this.f30016a, this.f30019d, this.f30020e, mode);
        }
    }
}
