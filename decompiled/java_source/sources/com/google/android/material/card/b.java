package com.google.android.material.card;

import ab.e;
import ab.f;
import ab.i;
import ab.m;
import ab.n;
import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import wa.j;
import xa.c;

/* JADX INFO: loaded from: classes4.dex */
class b {
    private static final Drawable A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final double f28546z = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaterialCardView f28547a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f28549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f28550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28552f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28553g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28554h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Drawable f28555i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Drawable f28556j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f28557k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f28558l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private n f28559m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ColorStateList f28560n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Drawable f28561o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LayerDrawable f28562p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private i f28563q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private i f28564r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f28566t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ValueAnimator f28567u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final TimeInterpolator f28568v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f28569w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f28570x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f28548b = new Rect();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f28565s = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f28571y = 0.0f;

    class a extends InsetDrawable {
        a(Drawable drawable, int i11, int i12, int i13, int i14) {
            super(drawable, i11, i12, i13, i14);
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    static {
        A = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public b(MaterialCardView materialCardView, AttributeSet attributeSet, int i11, int i12) {
        this.f28547a = materialCardView;
        i iVar = new i(materialCardView.getContext(), attributeSet, i11, i12);
        this.f28549c = iVar;
        iVar.S(materialCardView.getContext());
        iVar.j0(-12303292);
        n.b bVarV = iVar.G().v();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.CardView, i11, R$style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardCornerRadius)) {
            bVarV.o(typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f));
        }
        this.f28550d = new i();
        Z(bVarV.m());
        this.f28568v = j.g(materialCardView.getContext(), R$attr.motionEasingLinearInterpolator, oa.a.f70918a);
        this.f28569w = j.f(materialCardView.getContext(), R$attr.motionDurationShort2, 300);
        this.f28570x = j.f(materialCardView.getContext(), R$attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    private Drawable D(Drawable drawable) {
        int iCeil;
        int iCeil2;
        if (this.f28547a.getUseCompatPadding()) {
            iCeil2 = (int) Math.ceil(f());
            iCeil = (int) Math.ceil(e());
        } else {
            iCeil = 0;
            iCeil2 = 0;
        }
        return new a(drawable, iCeil, iCeil2, iCeil, iCeil2);
    }

    private boolean G() {
        return (this.f28553g & 80) == 80;
    }

    private boolean H() {
        return (this.f28553g & GravityCompat.END) == 8388613;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f28556j.setAlpha((int) (255.0f * fFloatValue));
        this.f28571y = fFloatValue;
    }

    private float c() {
        return Math.max(Math.max(d(this.f28559m.q(), this.f28549c.L()), d(this.f28559m.s(), this.f28549c.M())), Math.max(d(this.f28559m.k(), this.f28549c.v()), d(this.f28559m.i(), this.f28549c.u())));
    }

    private float d(e eVar, float f11) {
        if (eVar instanceof m) {
            return (float) ((1.0d - f28546z) * ((double) f11));
        }
        if (eVar instanceof f) {
            return f11 / 2.0f;
        }
        return 0.0f;
    }

    private boolean d0() {
        return this.f28547a.getPreventCornerOverlap() && !g();
    }

    private float e() {
        return this.f28547a.getMaxCardElevation() + (e0() ? c() : 0.0f);
    }

    private boolean e0() {
        return this.f28547a.getPreventCornerOverlap() && g() && this.f28547a.getUseCompatPadding();
    }

    private float f() {
        return (this.f28547a.getMaxCardElevation() * 1.5f) + (e0() ? c() : 0.0f);
    }

    private boolean f0() {
        if (this.f28547a.isClickable()) {
            return true;
        }
        View view = this.f28547a;
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    private boolean g() {
        return this.f28549c.V();
    }

    private Drawable h() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        i iVarJ = j();
        this.f28563q = iVarJ;
        iVarJ.d0(this.f28557k);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, this.f28563q);
        return stateListDrawable;
    }

    private Drawable i() {
        if (!ya.b.f78956a) {
            return h();
        }
        this.f28564r = j();
        return new RippleDrawable(this.f28557k, null, this.f28564r);
    }

    private i j() {
        return new i(this.f28559m);
    }

    private void j0(Drawable drawable) {
        if (this.f28547a.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.f28547a.getForeground()).setDrawable(drawable);
        } else {
            this.f28547a.setForeground(D(drawable));
        }
    }

    private void l0() {
        Drawable drawable;
        if (ya.b.f78956a && (drawable = this.f28561o) != null) {
            ((RippleDrawable) drawable).setColor(this.f28557k);
            return;
        }
        i iVar = this.f28563q;
        if (iVar != null) {
            iVar.d0(this.f28557k);
        }
    }

    private Drawable t() {
        if (this.f28561o == null) {
            this.f28561o = i();
        }
        if (this.f28562p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f28561o, this.f28550d, this.f28556j});
            this.f28562p = layerDrawable;
            layerDrawable.setId(2, R$id.mtrl_card_checked_layer_id);
        }
        return this.f28562p;
    }

    private float v() {
        if (this.f28547a.getPreventCornerOverlap() && this.f28547a.getUseCompatPadding()) {
            return (float) ((1.0d - f28546z) * ((double) this.f28547a.getCardViewRadius()));
        }
        return 0.0f;
    }

    ColorStateList A() {
        return this.f28560n;
    }

    int B() {
        return this.f28554h;
    }

    Rect C() {
        return this.f28548b;
    }

    boolean E() {
        return this.f28565s;
    }

    boolean F() {
        return this.f28566t;
    }

    void J(TypedArray typedArray) {
        ColorStateList colorStateListA = c.a(this.f28547a.getContext(), typedArray, R$styleable.MaterialCardView_strokeColor);
        this.f28560n = colorStateListA;
        if (colorStateListA == null) {
            this.f28560n = ColorStateList.valueOf(-1);
        }
        this.f28554h = typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_strokeWidth, 0);
        boolean z10 = typedArray.getBoolean(R$styleable.MaterialCardView_android_checkable, false);
        this.f28566t = z10;
        this.f28547a.setLongClickable(z10);
        this.f28558l = c.a(this.f28547a.getContext(), typedArray, R$styleable.MaterialCardView_checkedIconTint);
        R(c.e(this.f28547a.getContext(), typedArray, R$styleable.MaterialCardView_checkedIcon));
        U(typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconSize, 0));
        T(typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_checkedIconMargin, 0));
        this.f28553g = typedArray.getInteger(R$styleable.MaterialCardView_checkedIconGravity, MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END);
        ColorStateList colorStateListA2 = c.a(this.f28547a.getContext(), typedArray, R$styleable.MaterialCardView_rippleColor);
        this.f28557k = colorStateListA2;
        if (colorStateListA2 == null) {
            this.f28557k = ColorStateList.valueOf(com.google.android.material.color.b.d(this.f28547a, R$attr.colorControlHighlight));
        }
        N(c.a(this.f28547a.getContext(), typedArray, R$styleable.MaterialCardView_cardForegroundColor));
        l0();
        i0();
        m0();
        this.f28547a.setBackgroundInternal(D(this.f28549c));
        Drawable drawableT = f0() ? t() : this.f28550d;
        this.f28555i = drawableT;
        this.f28547a.setForeground(D(drawableT));
    }

    void K(int i11, int i12) {
        int iCeil;
        int iCeil2;
        int i13;
        int i14;
        if (this.f28562p != null) {
            if (this.f28547a.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(f() * 2.0f);
                iCeil2 = (int) Math.ceil(e() * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i15 = H() ? ((i11 - this.f28551e) - this.f28552f) - iCeil2 : this.f28551e;
            int i16 = G() ? this.f28551e : ((i12 - this.f28551e) - this.f28552f) - iCeil;
            int i17 = H() ? this.f28551e : ((i11 - this.f28551e) - this.f28552f) - iCeil2;
            int i18 = G() ? ((i12 - this.f28551e) - this.f28552f) - iCeil : this.f28551e;
            if (ViewCompat.getLayoutDirection(this.f28547a) == 1) {
                i14 = i17;
                i13 = i15;
            } else {
                i13 = i17;
                i14 = i15;
            }
            this.f28562p.setLayerInset(2, i14, i18, i13, i16);
        }
    }

    void L(boolean z10) {
        this.f28565s = z10;
    }

    void M(ColorStateList colorStateList) {
        this.f28549c.d0(colorStateList);
    }

    void N(ColorStateList colorStateList) {
        i iVar = this.f28550d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        iVar.d0(colorStateList);
    }

    void O(boolean z10) {
        this.f28566t = z10;
    }

    public void P(boolean z10) {
        Q(z10, false);
    }

    public void Q(boolean z10, boolean z11) {
        Drawable drawable = this.f28556j;
        if (drawable != null) {
            if (z11) {
                b(z10);
            } else {
                drawable.setAlpha(z10 ? 255 : 0);
                this.f28571y = z10 ? 1.0f : 0.0f;
            }
        }
    }

    void R(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = a1.a.r(drawable).mutate();
            this.f28556j = drawableMutate;
            a1.a.o(drawableMutate, this.f28558l);
            P(this.f28547a.isChecked());
        } else {
            this.f28556j = A;
        }
        LayerDrawable layerDrawable = this.f28562p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R$id.mtrl_card_checked_layer_id, this.f28556j);
        }
    }

    void S(int i11) {
        this.f28553g = i11;
        K(this.f28547a.getMeasuredWidth(), this.f28547a.getMeasuredHeight());
    }

    void T(int i11) {
        this.f28551e = i11;
    }

    void U(int i11) {
        this.f28552f = i11;
    }

    void V(ColorStateList colorStateList) {
        this.f28558l = colorStateList;
        Drawable drawable = this.f28556j;
        if (drawable != null) {
            a1.a.o(drawable, colorStateList);
        }
    }

    void W(float f11) {
        Z(this.f28559m.w(f11));
        this.f28555i.invalidateSelf();
        if (e0() || d0()) {
            h0();
        }
        if (e0()) {
            k0();
        }
    }

    void X(float f11) {
        this.f28549c.e0(f11);
        i iVar = this.f28550d;
        if (iVar != null) {
            iVar.e0(f11);
        }
        i iVar2 = this.f28564r;
        if (iVar2 != null) {
            iVar2.e0(f11);
        }
    }

    void Y(ColorStateList colorStateList) {
        this.f28557k = colorStateList;
        l0();
    }

    void Z(n nVar) {
        this.f28559m = nVar;
        this.f28549c.setShapeAppearanceModel(nVar);
        i iVar = this.f28549c;
        iVar.i0(!iVar.V());
        i iVar2 = this.f28550d;
        if (iVar2 != null) {
            iVar2.setShapeAppearanceModel(nVar);
        }
        i iVar3 = this.f28564r;
        if (iVar3 != null) {
            iVar3.setShapeAppearanceModel(nVar);
        }
        i iVar4 = this.f28563q;
        if (iVar4 != null) {
            iVar4.setShapeAppearanceModel(nVar);
        }
    }

    void a0(ColorStateList colorStateList) {
        if (this.f28560n == colorStateList) {
            return;
        }
        this.f28560n = colorStateList;
        m0();
    }

    public void b(boolean z10) {
        float f11 = z10 ? 1.0f : 0.0f;
        float f12 = z10 ? 1.0f - this.f28571y : this.f28571y;
        ValueAnimator valueAnimator = this.f28567u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f28567u = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f28571y, f11);
        this.f28567u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.card.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f28545a.I(valueAnimator2);
            }
        });
        this.f28567u.setInterpolator(this.f28568v);
        this.f28567u.setDuration((long) ((z10 ? this.f28569w : this.f28570x) * f12));
        this.f28567u.start();
    }

    void b0(int i11) {
        if (i11 == this.f28554h) {
            return;
        }
        this.f28554h = i11;
        m0();
    }

    void c0(int i11, int i12, int i13, int i14) {
        this.f28548b.set(i11, i12, i13, i14);
        h0();
    }

    void g0() {
        Drawable drawable = this.f28555i;
        Drawable drawableT = f0() ? t() : this.f28550d;
        this.f28555i = drawableT;
        if (drawable != drawableT) {
            j0(drawableT);
        }
    }

    void h0() {
        int iC = (int) (((d0() || e0()) ? c() : 0.0f) - v());
        MaterialCardView materialCardView = this.f28547a;
        Rect rect = this.f28548b;
        materialCardView.d(rect.left + iC, rect.top + iC, rect.right + iC, rect.bottom + iC);
    }

    void i0() {
        this.f28549c.c0(this.f28547a.getCardElevation());
    }

    void k() {
        Drawable drawable = this.f28561o;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i11 = bounds.bottom;
            this.f28561o.setBounds(bounds.left, bounds.top, bounds.right, i11 - 1);
            this.f28561o.setBounds(bounds.left, bounds.top, bounds.right, i11);
        }
    }

    void k0() {
        if (!E()) {
            this.f28547a.setBackgroundInternal(D(this.f28549c));
        }
        this.f28547a.setForeground(D(this.f28555i));
    }

    i l() {
        return this.f28549c;
    }

    ColorStateList m() {
        return this.f28549c.z();
    }

    void m0() {
        this.f28550d.m0(this.f28554h, this.f28560n);
    }

    ColorStateList n() {
        return this.f28550d.z();
    }

    Drawable o() {
        return this.f28556j;
    }

    int p() {
        return this.f28553g;
    }

    int q() {
        return this.f28551e;
    }

    int r() {
        return this.f28552f;
    }

    ColorStateList s() {
        return this.f28558l;
    }

    float u() {
        return this.f28549c.L();
    }

    float w() {
        return this.f28549c.A();
    }

    ColorStateList x() {
        return this.f28557k;
    }

    n y() {
        return this.f28559m;
    }

    int z() {
        ColorStateList colorStateList = this.f28560n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }
}
