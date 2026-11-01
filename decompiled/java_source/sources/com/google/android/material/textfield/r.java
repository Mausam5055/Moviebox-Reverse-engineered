package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
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
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes4.dex */
class r extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final TextInputLayout f29946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FrameLayout f29947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CheckableImageButton f29948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ColorStateList f29949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PorterDuff.Mode f29950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View.OnLongClickListener f29951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CheckableImageButton f29952g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d f29953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LinkedHashSet f29955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f29956k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private PorterDuff.Mode f29957l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f29958m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView.ScaleType f29959n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View.OnLongClickListener f29960o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f29961p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final TextView f29962q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f29963r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private EditText f29964s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AccessibilityManager f29965t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private AccessibilityManagerCompat.TouchExplorationStateChangeListener f29966u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final TextWatcher f29967v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final TextInputLayout.e f29968w;

    class a extends com.google.android.material.internal.a0 {
        a() {
        }

        @Override // com.google.android.material.internal.a0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            r.this.o().a(editable);
        }

        @Override // com.google.android.material.internal.a0, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            r.this.o().b(charSequence, i11, i12, i13);
        }
    }

    class b implements TextInputLayout.e {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e
        public void a(TextInputLayout textInputLayout) {
            if (r.this.f29964s == textInputLayout.getEditText()) {
                return;
            }
            if (r.this.f29964s != null) {
                r.this.f29964s.removeTextChangedListener(r.this.f29967v);
                if (r.this.f29964s.getOnFocusChangeListener() == r.this.o().e()) {
                    r.this.f29964s.setOnFocusChangeListener(null);
                }
            }
            r.this.f29964s = textInputLayout.getEditText();
            if (r.this.f29964s != null) {
                r.this.f29964s.addTextChangedListener(r.this.f29967v);
            }
            r.this.o().n(r.this.f29964s);
            r rVar = r.this;
            rVar.m0(rVar.o());
        }
    }

    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            r.this.h();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            r.this.R();
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SparseArray f29972a = new SparseArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final r f29973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f29974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f29975d;

        d(r rVar, j0 j0Var) {
            this.f29973b = rVar;
            this.f29974c = j0Var.n(R$styleable.TextInputLayout_endIconDrawable, 0);
            this.f29975d = j0Var.n(R$styleable.TextInputLayout_passwordToggleDrawable, 0);
        }

        private s b(int i11) {
            if (i11 == -1) {
                return new g(this.f29973b);
            }
            if (i11 == 0) {
                return new v(this.f29973b);
            }
            if (i11 == 1) {
                return new x(this.f29973b, this.f29975d);
            }
            if (i11 == 2) {
                return new f(this.f29973b);
            }
            if (i11 == 3) {
                return new p(this.f29973b);
            }
            throw new IllegalArgumentException("Invalid end icon mode: " + i11);
        }

        s c(int i11) {
            s sVar = (s) this.f29972a.get(i11);
            if (sVar != null) {
                return sVar;
            }
            s sVarB = b(i11);
            this.f29972a.append(i11, sVarB);
            return sVarB;
        }
    }

    r(TextInputLayout textInputLayout, j0 j0Var) {
        super(textInputLayout.getContext());
        this.f29954i = 0;
        this.f29955j = new LinkedHashSet();
        this.f29967v = new a();
        b bVar = new b();
        this.f29968w = bVar;
        this.f29965t = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f29946a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f29947b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonK = k(this, layoutInflaterFrom, R$id.text_input_error_icon);
        this.f29948c = checkableImageButtonK;
        CheckableImageButton checkableImageButtonK2 = k(frameLayout, layoutInflaterFrom, R$id.text_input_end_icon);
        this.f29952g = checkableImageButtonK2;
        this.f29953h = new d(this, j0Var);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f29962q = appCompatTextView;
        E(j0Var);
        D(j0Var);
        F(j0Var);
        frameLayout.addView(checkableImageButtonK2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButtonK);
        textInputLayout.addOnEditTextAttachedListener(bVar);
        addOnAttachStateChangeListener(new c());
    }

    private void B0() {
        this.f29947b.setVisibility((this.f29952g.getVisibility() != 0 || J()) ? 8 : 0);
        setVisibility((I() || J() || ((this.f29961p == null || this.f29963r) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    private void C0() {
        this.f29948c.setVisibility(u() != null && this.f29946a.isErrorEnabled() && this.f29946a.X() ? 0 : 8);
        B0();
        D0();
        if (C()) {
            return;
        }
        this.f29946a.i0();
    }

    private void D(j0 j0Var) {
        if (!j0Var.s(R$styleable.TextInputLayout_passwordToggleEnabled)) {
            if (j0Var.s(R$styleable.TextInputLayout_endIconTint)) {
                this.f29956k = xa.c.b(getContext(), j0Var, R$styleable.TextInputLayout_endIconTint);
            }
            if (j0Var.s(R$styleable.TextInputLayout_endIconTintMode)) {
                this.f29957l = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_endIconTintMode, -1), null);
            }
        }
        if (j0Var.s(R$styleable.TextInputLayout_endIconMode)) {
            Z(j0Var.k(R$styleable.TextInputLayout_endIconMode, 0));
            if (j0Var.s(R$styleable.TextInputLayout_endIconContentDescription)) {
                V(j0Var.p(R$styleable.TextInputLayout_endIconContentDescription));
            }
            T(j0Var.a(R$styleable.TextInputLayout_endIconCheckable, true));
        } else if (j0Var.s(R$styleable.TextInputLayout_passwordToggleEnabled)) {
            if (j0Var.s(R$styleable.TextInputLayout_passwordToggleTint)) {
                this.f29956k = xa.c.b(getContext(), j0Var, R$styleable.TextInputLayout_passwordToggleTint);
            }
            if (j0Var.s(R$styleable.TextInputLayout_passwordToggleTintMode)) {
                this.f29957l = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_passwordToggleTintMode, -1), null);
            }
            Z(j0Var.a(R$styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            V(j0Var.p(R$styleable.TextInputLayout_passwordToggleContentDescription));
        }
        Y(j0Var.f(R$styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(R$dimen.mtrl_min_touch_target_size)));
        if (j0Var.s(R$styleable.TextInputLayout_endIconScaleType)) {
            c0(t.b(j0Var.k(R$styleable.TextInputLayout_endIconScaleType, -1)));
        }
    }

    private void E(j0 j0Var) {
        if (j0Var.s(R$styleable.TextInputLayout_errorIconTint)) {
            this.f29949d = xa.c.b(getContext(), j0Var, R$styleable.TextInputLayout_errorIconTint);
        }
        if (j0Var.s(R$styleable.TextInputLayout_errorIconTintMode)) {
            this.f29950e = com.google.android.material.internal.f0.r(j0Var.k(R$styleable.TextInputLayout_errorIconTintMode, -1), null);
        }
        if (j0Var.s(R$styleable.TextInputLayout_errorIconDrawable)) {
            h0(j0Var.g(R$styleable.TextInputLayout_errorIconDrawable));
        }
        this.f29948c.setContentDescription(getResources().getText(R$string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(this.f29948c, 2);
        this.f29948c.setClickable(false);
        this.f29948c.setPressable(false);
        this.f29948c.setFocusable(false);
    }

    private void E0() {
        int visibility = this.f29962q.getVisibility();
        int i11 = (this.f29961p == null || this.f29963r) ? 8 : 0;
        if (visibility != i11) {
            o().q(i11 == 0);
        }
        B0();
        this.f29962q.setVisibility(i11);
        this.f29946a.i0();
    }

    private void F(j0 j0Var) {
        this.f29962q.setVisibility(8);
        this.f29962q.setId(R$id.textinput_suffix_text);
        this.f29962q.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        ViewCompat.setAccessibilityLiveRegion(this.f29962q, 1);
        v0(j0Var.n(R$styleable.TextInputLayout_suffixTextAppearance, 0));
        if (j0Var.s(R$styleable.TextInputLayout_suffixTextColor)) {
            w0(j0Var.c(R$styleable.TextInputLayout_suffixTextColor));
        }
        u0(j0Var.p(R$styleable.TextInputLayout_suffixText));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        AccessibilityManager accessibilityManager;
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.f29966u;
        if (touchExplorationStateChangeListener == null || (accessibilityManager = this.f29965t) == null) {
            return;
        }
        AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f29966u == null || this.f29965t == null || !ViewCompat.isAttachedToWindow(this)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f29965t, this.f29966u);
    }

    private CheckableImageButton k(ViewGroup viewGroup, LayoutInflater layoutInflater, int i11) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R$layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i11);
        t.e(checkableImageButton);
        if (xa.c.j(getContext())) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    private void l(int i11) {
        Iterator it = this.f29955j.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(s sVar) {
        if (this.f29964s == null) {
            return;
        }
        if (sVar.e() != null) {
            this.f29964s.setOnFocusChangeListener(sVar.e());
        }
        if (sVar.g() != null) {
            this.f29952g.setOnFocusChangeListener(sVar.g());
        }
    }

    private int v(s sVar) {
        int i11 = this.f29953h.f29974c;
        return i11 == 0 ? sVar.d() : i11;
    }

    private void x0(s sVar) {
        sVar.s();
        this.f29966u = sVar.h();
        h();
    }

    private void y0(s sVar) {
        R();
        this.f29966u = null;
        sVar.u();
    }

    private void z0(boolean z10) {
        if (!z10 || p() == null) {
            t.a(this.f29946a, this.f29952g, this.f29956k, this.f29957l);
            return;
        }
        Drawable drawableMutate = a1.a.r(p()).mutate();
        a1.a.n(drawableMutate, this.f29946a.getErrorCurrentTextColors());
        this.f29952g.setImageDrawable(drawableMutate);
    }

    int A() {
        return ViewCompat.getPaddingEnd(this) + ViewCompat.getPaddingEnd(this.f29962q) + ((I() || J()) ? this.f29952g.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) this.f29952g.getLayoutParams()) : 0);
    }

    void A0(boolean z10) {
        if (this.f29954i == 1) {
            this.f29952g.performClick();
            if (z10) {
                this.f29952g.jumpDrawablesToCurrentState();
            }
        }
    }

    TextView B() {
        return this.f29962q;
    }

    boolean C() {
        return this.f29954i != 0;
    }

    void D0() {
        if (this.f29946a.f29851d == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f29962q, getContext().getResources().getDimensionPixelSize(R$dimen.material_input_text_to_prefix_suffix_padding), this.f29946a.f29851d.getPaddingTop(), (I() || J()) ? 0 : ViewCompat.getPaddingEnd(this.f29946a.f29851d), this.f29946a.f29851d.getPaddingBottom());
    }

    boolean G() {
        return this.f29952g.isCheckable();
    }

    boolean H() {
        return C() && this.f29952g.isChecked();
    }

    boolean I() {
        return this.f29947b.getVisibility() == 0 && this.f29952g.getVisibility() == 0;
    }

    boolean J() {
        return this.f29948c.getVisibility() == 0;
    }

    boolean K() {
        return this.f29954i == 1;
    }

    void L(boolean z10) {
        this.f29963r = z10;
        E0();
    }

    void M() {
        C0();
        O();
        N();
        if (o().t()) {
            z0(this.f29946a.X());
        }
    }

    void N() {
        t.d(this.f29946a, this.f29952g, this.f29956k);
    }

    void O() {
        t.d(this.f29946a, this.f29948c, this.f29949d);
    }

    void P(boolean z10) {
        boolean z11;
        boolean zIsActivated;
        boolean zIsChecked;
        s sVarO = o();
        boolean z12 = true;
        if (!sVarO.l() || (zIsChecked = this.f29952g.isChecked()) == sVarO.m()) {
            z11 = false;
        } else {
            this.f29952g.setChecked(!zIsChecked);
            z11 = true;
        }
        if (!sVarO.j() || (zIsActivated = this.f29952g.isActivated()) == sVarO.k()) {
            z12 = z11;
        } else {
            S(!zIsActivated);
        }
        if (z10 || z12) {
            N();
        }
    }

    void Q(TextInputLayout.f fVar) {
        this.f29955j.remove(fVar);
    }

    void S(boolean z10) {
        this.f29952g.setActivated(z10);
    }

    void T(boolean z10) {
        this.f29952g.setCheckable(z10);
    }

    void U(int i11) {
        V(i11 != 0 ? getResources().getText(i11) : null);
    }

    void V(CharSequence charSequence) {
        if (n() != charSequence) {
            this.f29952g.setContentDescription(charSequence);
        }
    }

    void W(int i11) {
        X(i11 != 0 ? g.a.b(getContext(), i11) : null);
    }

    void X(Drawable drawable) {
        this.f29952g.setImageDrawable(drawable);
        if (drawable != null) {
            t.a(this.f29946a, this.f29952g, this.f29956k, this.f29957l);
            N();
        }
    }

    void Y(int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i11 != this.f29958m) {
            this.f29958m = i11;
            t.g(this.f29952g, i11);
            t.g(this.f29948c, i11);
        }
    }

    void Z(int i11) {
        if (this.f29954i == i11) {
            return;
        }
        y0(o());
        int i12 = this.f29954i;
        this.f29954i = i11;
        l(i12);
        f0(i11 != 0);
        s sVarO = o();
        W(v(sVarO));
        U(sVarO.c());
        T(sVarO.l());
        if (!sVarO.i(this.f29946a.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + this.f29946a.getBoxBackgroundMode() + " is not supported by the end icon mode " + i11);
        }
        x0(sVarO);
        a0(sVarO.f());
        EditText editText = this.f29964s;
        if (editText != null) {
            sVarO.n(editText);
            m0(sVarO);
        }
        t.a(this.f29946a, this.f29952g, this.f29956k, this.f29957l);
        P(true);
    }

    void a0(View.OnClickListener onClickListener) {
        t.h(this.f29952g, onClickListener, this.f29960o);
    }

    void b0(View.OnLongClickListener onLongClickListener) {
        this.f29960o = onLongClickListener;
        t.i(this.f29952g, onLongClickListener);
    }

    void c0(ImageView.ScaleType scaleType) {
        this.f29959n = scaleType;
        t.j(this.f29952g, scaleType);
        t.j(this.f29948c, scaleType);
    }

    void d0(ColorStateList colorStateList) {
        if (this.f29956k != colorStateList) {
            this.f29956k = colorStateList;
            t.a(this.f29946a, this.f29952g, colorStateList, this.f29957l);
        }
    }

    void e0(PorterDuff.Mode mode) {
        if (this.f29957l != mode) {
            this.f29957l = mode;
            t.a(this.f29946a, this.f29952g, this.f29956k, mode);
        }
    }

    void f0(boolean z10) {
        if (I() != z10) {
            this.f29952g.setVisibility(z10 ? 0 : 8);
            B0();
            D0();
            this.f29946a.i0();
        }
    }

    void g(TextInputLayout.f fVar) {
        this.f29955j.add(fVar);
    }

    void g0(int i11) {
        h0(i11 != 0 ? g.a.b(getContext(), i11) : null);
        O();
    }

    void h0(Drawable drawable) {
        this.f29948c.setImageDrawable(drawable);
        C0();
        t.a(this.f29946a, this.f29948c, this.f29949d, this.f29950e);
    }

    void i() {
        this.f29952g.performClick();
        this.f29952g.jumpDrawablesToCurrentState();
    }

    void i0(View.OnClickListener onClickListener) {
        t.h(this.f29948c, onClickListener, this.f29951f);
    }

    void j() {
        this.f29955j.clear();
    }

    void j0(View.OnLongClickListener onLongClickListener) {
        this.f29951f = onLongClickListener;
        t.i(this.f29948c, onLongClickListener);
    }

    void k0(ColorStateList colorStateList) {
        if (this.f29949d != colorStateList) {
            this.f29949d = colorStateList;
            t.a(this.f29946a, this.f29948c, colorStateList, this.f29950e);
        }
    }

    void l0(PorterDuff.Mode mode) {
        if (this.f29950e != mode) {
            this.f29950e = mode;
            t.a(this.f29946a, this.f29948c, this.f29949d, mode);
        }
    }

    CheckableImageButton m() {
        if (J()) {
            return this.f29948c;
        }
        if (C() && I()) {
            return this.f29952g;
        }
        return null;
    }

    CharSequence n() {
        return this.f29952g.getContentDescription();
    }

    void n0(int i11) {
        o0(i11 != 0 ? getResources().getText(i11) : null);
    }

    s o() {
        return this.f29953h.c(this.f29954i);
    }

    void o0(CharSequence charSequence) {
        this.f29952g.setContentDescription(charSequence);
    }

    Drawable p() {
        return this.f29952g.getDrawable();
    }

    void p0(int i11) {
        q0(i11 != 0 ? g.a.b(getContext(), i11) : null);
    }

    int q() {
        return this.f29958m;
    }

    void q0(Drawable drawable) {
        this.f29952g.setImageDrawable(drawable);
    }

    int r() {
        return this.f29954i;
    }

    void r0(boolean z10) {
        if (z10 && this.f29954i != 1) {
            Z(1);
        } else {
            if (z10) {
                return;
            }
            Z(0);
        }
    }

    ImageView.ScaleType s() {
        return this.f29959n;
    }

    void s0(ColorStateList colorStateList) {
        this.f29956k = colorStateList;
        t.a(this.f29946a, this.f29952g, colorStateList, this.f29957l);
    }

    CheckableImageButton t() {
        return this.f29952g;
    }

    void t0(PorterDuff.Mode mode) {
        this.f29957l = mode;
        t.a(this.f29946a, this.f29952g, this.f29956k, mode);
    }

    Drawable u() {
        return this.f29948c.getDrawable();
    }

    void u0(CharSequence charSequence) {
        this.f29961p = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f29962q.setText(charSequence);
        E0();
    }

    void v0(int i11) {
        androidx.core.widget.m.q(this.f29962q, i11);
    }

    CharSequence w() {
        return this.f29952g.getContentDescription();
    }

    void w0(ColorStateList colorStateList) {
        this.f29962q.setTextColor(colorStateList);
    }

    Drawable x() {
        return this.f29952g.getDrawable();
    }

    CharSequence y() {
        return this.f29961p;
    }

    ColorStateList z() {
        return this.f29962q.getTextColors();
    }
}
