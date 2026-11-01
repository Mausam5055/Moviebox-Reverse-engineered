package com.google.android.material.button;

import ab.i;
import ab.n;
import ab.q;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
import com.google.android.material.color.b;
import com.google.android.material.internal.f0;
import xa.c;

/* JADX INFO: loaded from: classes4.dex */
class a {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final boolean f28515u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final boolean f28516v = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaterialButton f28517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n f28518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28523g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28524h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PorterDuff.Mode f28525i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f28526j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ColorStateList f28527k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f28528l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Drawable f28529m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f28533q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LayerDrawable f28535s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f28536t;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f28530n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f28531o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f28532p = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f28534r = true;

    a(MaterialButton materialButton, n nVar) {
        this.f28517a = materialButton;
        this.f28518b = nVar;
    }

    private void G(int i11, int i12) {
        int paddingStart = ViewCompat.getPaddingStart(this.f28517a);
        int paddingTop = this.f28517a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f28517a);
        int paddingBottom = this.f28517a.getPaddingBottom();
        int i13 = this.f28521e;
        int i14 = this.f28522f;
        this.f28522f = i12;
        this.f28521e = i11;
        if (!this.f28531o) {
            H();
        }
        ViewCompat.setPaddingRelative(this.f28517a, paddingStart, (paddingTop + i11) - i13, paddingEnd, (paddingBottom + i12) - i14);
    }

    private void H() {
        this.f28517a.setInternalBackground(a());
        i iVarF = f();
        if (iVarF != null) {
            iVarF.c0(this.f28536t);
            iVarF.setState(this.f28517a.getDrawableState());
        }
    }

    private void I(n nVar) {
        if (f28516v && !this.f28531o) {
            int paddingStart = ViewCompat.getPaddingStart(this.f28517a);
            int paddingTop = this.f28517a.getPaddingTop();
            int paddingEnd = ViewCompat.getPaddingEnd(this.f28517a);
            int paddingBottom = this.f28517a.getPaddingBottom();
            H();
            ViewCompat.setPaddingRelative(this.f28517a, paddingStart, paddingTop, paddingEnd, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(nVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(nVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(nVar);
        }
    }

    private void J() {
        i iVarF = f();
        i iVarN = n();
        if (iVarF != null) {
            iVarF.m0(this.f28524h, this.f28527k);
            if (iVarN != null) {
                iVarN.l0(this.f28524h, this.f28530n ? b.d(this.f28517a, R$attr.colorSurface) : 0);
            }
        }
    }

    private InsetDrawable K(Drawable drawable) {
        return new InsetDrawable(drawable, this.f28519c, this.f28521e, this.f28520d, this.f28522f);
    }

    private Drawable a() {
        i iVar = new i(this.f28518b);
        iVar.S(this.f28517a.getContext());
        a1.a.o(iVar, this.f28526j);
        PorterDuff.Mode mode = this.f28525i;
        if (mode != null) {
            a1.a.p(iVar, mode);
        }
        iVar.m0(this.f28524h, this.f28527k);
        i iVar2 = new i(this.f28518b);
        iVar2.setTint(0);
        iVar2.l0(this.f28524h, this.f28530n ? b.d(this.f28517a, R$attr.colorSurface) : 0);
        if (f28515u) {
            i iVar3 = new i(this.f28518b);
            this.f28529m = iVar3;
            a1.a.n(iVar3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(ya.b.d(this.f28528l), K(new LayerDrawable(new Drawable[]{iVar2, iVar})), this.f28529m);
            this.f28535s = rippleDrawable;
            return rippleDrawable;
        }
        ya.a aVar = new ya.a(this.f28518b);
        this.f28529m = aVar;
        a1.a.o(aVar, ya.b.d(this.f28528l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{iVar2, iVar, this.f28529m});
        this.f28535s = layerDrawable;
        return K(layerDrawable);
    }

    private i g(boolean z10) {
        LayerDrawable layerDrawable = this.f28535s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f28515u ? (i) ((LayerDrawable) ((InsetDrawable) this.f28535s.getDrawable(0)).getDrawable()).getDrawable(!z10 ? 1 : 0) : (i) this.f28535s.getDrawable(!z10 ? 1 : 0);
    }

    private i n() {
        return g(true);
    }

    void A(boolean z10) {
        this.f28530n = z10;
        J();
    }

    void B(ColorStateList colorStateList) {
        if (this.f28527k != colorStateList) {
            this.f28527k = colorStateList;
            J();
        }
    }

    void C(int i11) {
        if (this.f28524h != i11) {
            this.f28524h = i11;
            J();
        }
    }

    void D(ColorStateList colorStateList) {
        if (this.f28526j != colorStateList) {
            this.f28526j = colorStateList;
            if (f() != null) {
                a1.a.o(f(), this.f28526j);
            }
        }
    }

    void E(PorterDuff.Mode mode) {
        if (this.f28525i != mode) {
            this.f28525i = mode;
            if (f() == null || this.f28525i == null) {
                return;
            }
            a1.a.p(f(), this.f28525i);
        }
    }

    void F(boolean z10) {
        this.f28534r = z10;
    }

    int b() {
        return this.f28523g;
    }

    public int c() {
        return this.f28522f;
    }

    public int d() {
        return this.f28521e;
    }

    public q e() {
        LayerDrawable layerDrawable = this.f28535s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f28535s.getNumberOfLayers() > 2 ? (q) this.f28535s.getDrawable(2) : (q) this.f28535s.getDrawable(1);
    }

    i f() {
        return g(false);
    }

    ColorStateList h() {
        return this.f28528l;
    }

    n i() {
        return this.f28518b;
    }

    ColorStateList j() {
        return this.f28527k;
    }

    int k() {
        return this.f28524h;
    }

    ColorStateList l() {
        return this.f28526j;
    }

    PorterDuff.Mode m() {
        return this.f28525i;
    }

    boolean o() {
        return this.f28531o;
    }

    boolean p() {
        return this.f28533q;
    }

    boolean q() {
        return this.f28534r;
    }

    void r(TypedArray typedArray) {
        this.f28519c = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetLeft, 0);
        this.f28520d = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetRight, 0);
        this.f28521e = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetTop, 0);
        this.f28522f = typedArray.getDimensionPixelOffset(R$styleable.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(R$styleable.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_cornerRadius, -1);
            this.f28523g = dimensionPixelSize;
            z(this.f28518b.w(dimensionPixelSize));
            this.f28532p = true;
        }
        this.f28524h = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_strokeWidth, 0);
        this.f28525i = f0.r(typedArray.getInt(R$styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f28526j = c.a(this.f28517a.getContext(), typedArray, R$styleable.MaterialButton_backgroundTint);
        this.f28527k = c.a(this.f28517a.getContext(), typedArray, R$styleable.MaterialButton_strokeColor);
        this.f28528l = c.a(this.f28517a.getContext(), typedArray, R$styleable.MaterialButton_rippleColor);
        this.f28533q = typedArray.getBoolean(R$styleable.MaterialButton_android_checkable, false);
        this.f28536t = typedArray.getDimensionPixelSize(R$styleable.MaterialButton_elevation, 0);
        this.f28534r = typedArray.getBoolean(R$styleable.MaterialButton_toggleCheckedStateOnClick, true);
        int paddingStart = ViewCompat.getPaddingStart(this.f28517a);
        int paddingTop = this.f28517a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f28517a);
        int paddingBottom = this.f28517a.getPaddingBottom();
        if (typedArray.hasValue(R$styleable.MaterialButton_android_background)) {
            t();
        } else {
            H();
        }
        ViewCompat.setPaddingRelative(this.f28517a, paddingStart + this.f28519c, paddingTop + this.f28521e, paddingEnd + this.f28520d, paddingBottom + this.f28522f);
    }

    void s(int i11) {
        if (f() != null) {
            f().setTint(i11);
        }
    }

    void t() {
        this.f28531o = true;
        this.f28517a.setSupportBackgroundTintList(this.f28526j);
        this.f28517a.setSupportBackgroundTintMode(this.f28525i);
    }

    void u(boolean z10) {
        this.f28533q = z10;
    }

    void v(int i11) {
        if (this.f28532p && this.f28523g == i11) {
            return;
        }
        this.f28523g = i11;
        this.f28532p = true;
        z(this.f28518b.w(i11));
    }

    public void w(int i11) {
        G(this.f28521e, i11);
    }

    public void x(int i11) {
        G(i11, this.f28522f);
    }

    void y(ColorStateList colorStateList) {
        if (this.f28528l != colorStateList) {
            this.f28528l = colorStateList;
            boolean z10 = f28515u;
            if (z10 && (this.f28517a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f28517a.getBackground()).setColor(ya.b.d(colorStateList));
            } else {
                if (z10 || !(this.f28517a.getBackground() instanceof ya.a)) {
                    return;
                }
                ((ya.a) this.f28517a.getBackground()).setTintList(ya.b.d(colorStateList));
            }
        }
    }

    void z(n nVar) {
        this.f28518b = nVar;
        I(nVar);
    }
}
