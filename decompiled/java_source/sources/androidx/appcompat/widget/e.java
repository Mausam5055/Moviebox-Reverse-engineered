package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CompoundButton f1982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f1983b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f1984c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1985d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1986e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1987f;

    e(CompoundButton compoundButton) {
        this.f1982a = compoundButton;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.c.a(this.f1982a);
        if (drawableA != null) {
            if (this.f1985d || this.f1986e) {
                Drawable drawableMutate = a1.a.r(drawableA).mutate();
                if (this.f1985d) {
                    a1.a.o(drawableMutate, this.f1983b);
                }
                if (this.f1986e) {
                    a1.a.p(drawableMutate, this.f1984c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1982a.getDrawableState());
                }
                this.f1982a.setButtonDrawable(drawableMutate);
            }
        }
    }

    ColorStateList b() {
        return this.f1983b;
    }

    PorterDuff.Mode c() {
        return this.f1984c;
    }

    void d(AttributeSet attributeSet, int i11) {
        int iN;
        int iN2;
        j0 j0VarV = j0.v(this.f1982a.getContext(), attributeSet, R$styleable.CompoundButton, i11, 0);
        CompoundButton compoundButton = this.f1982a;
        ViewCompat.saveAttributeDataForStyleable(compoundButton, compoundButton.getContext(), R$styleable.CompoundButton, attributeSet, j0VarV.r(), i11, 0);
        try {
            if (j0VarV.s(R$styleable.CompoundButton_buttonCompat) && (iN2 = j0VarV.n(R$styleable.CompoundButton_buttonCompat, 0)) != 0) {
                try {
                    CompoundButton compoundButton2 = this.f1982a;
                    compoundButton2.setButtonDrawable(g.a.b(compoundButton2.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    if (j0VarV.s(R$styleable.CompoundButton_android_button)) {
                        CompoundButton compoundButton3 = this.f1982a;
                        compoundButton3.setButtonDrawable(g.a.b(compoundButton3.getContext(), iN));
                    }
                }
            } else if (j0VarV.s(R$styleable.CompoundButton_android_button) && (iN = j0VarV.n(R$styleable.CompoundButton_android_button, 0)) != 0) {
                CompoundButton compoundButton4 = this.f1982a;
                compoundButton4.setButtonDrawable(g.a.b(compoundButton4.getContext(), iN));
            }
            if (j0VarV.s(R$styleable.CompoundButton_buttonTint)) {
                androidx.core.widget.c.d(this.f1982a, j0VarV.c(R$styleable.CompoundButton_buttonTint));
            }
            if (j0VarV.s(R$styleable.CompoundButton_buttonTintMode)) {
                androidx.core.widget.c.e(this.f1982a, y.e(j0VarV.k(R$styleable.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void e() {
        if (this.f1987f) {
            this.f1987f = false;
        } else {
            this.f1987f = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.f1983b = colorStateList;
        this.f1985d = true;
        a();
    }

    void g(PorterDuff.Mode mode) {
        this.f1984c = mode;
        this.f1986e = true;
        a();
    }
}
