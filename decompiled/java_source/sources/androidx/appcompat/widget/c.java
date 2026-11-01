package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f1961a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h0 f1964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h0 f1965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h0 f1966f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1963c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f1962b = f.b();

    c(View view) {
        this.f1961a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f1966f == null) {
            this.f1966f = new h0();
        }
        h0 h0Var = this.f1966f;
        h0Var.a();
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(this.f1961a);
        if (backgroundTintList != null) {
            h0Var.f2037d = true;
            h0Var.f2034a = backgroundTintList;
        }
        PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(this.f1961a);
        if (backgroundTintMode != null) {
            h0Var.f2036c = true;
            h0Var.f2035b = backgroundTintMode;
        }
        if (!h0Var.f2037d && !h0Var.f2036c) {
            return false;
        }
        f.i(drawable, h0Var, this.f1961a.getDrawableState());
        return true;
    }

    private boolean k() {
        return this.f1964d != null;
    }

    void b() {
        Drawable background = this.f1961a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            h0 h0Var = this.f1965e;
            if (h0Var != null) {
                f.i(background, h0Var, this.f1961a.getDrawableState());
                return;
            }
            h0 h0Var2 = this.f1964d;
            if (h0Var2 != null) {
                f.i(background, h0Var2, this.f1961a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        h0 h0Var = this.f1965e;
        if (h0Var != null) {
            return h0Var.f2034a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        h0 h0Var = this.f1965e;
        if (h0Var != null) {
            return h0Var.f2035b;
        }
        return null;
    }

    void e(AttributeSet attributeSet, int i11) {
        j0 j0VarV = j0.v(this.f1961a.getContext(), attributeSet, R$styleable.ViewBackgroundHelper, i11, 0);
        View view = this.f1961a;
        ViewCompat.saveAttributeDataForStyleable(view, view.getContext(), R$styleable.ViewBackgroundHelper, attributeSet, j0VarV.r(), i11, 0);
        try {
            if (j0VarV.s(R$styleable.ViewBackgroundHelper_android_background)) {
                this.f1963c = j0VarV.n(R$styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList colorStateListF = this.f1962b.f(this.f1961a.getContext(), this.f1963c);
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            if (j0VarV.s(R$styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.f1961a, j0VarV.c(R$styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (j0VarV.s(R$styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.f1961a, y.e(j0VarV.k(R$styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void f(Drawable drawable) {
        this.f1963c = -1;
        h(null);
        b();
    }

    void g(int i11) {
        this.f1963c = i11;
        f fVar = this.f1962b;
        h(fVar != null ? fVar.f(this.f1961a.getContext(), i11) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1964d == null) {
                this.f1964d = new h0();
            }
            h0 h0Var = this.f1964d;
            h0Var.f2034a = colorStateList;
            h0Var.f2037d = true;
        } else {
            this.f1964d = null;
        }
        b();
    }

    void i(ColorStateList colorStateList) {
        if (this.f1965e == null) {
            this.f1965e = new h0();
        }
        h0 h0Var = this.f1965e;
        h0Var.f2034a = colorStateList;
        h0Var.f2037d = true;
        b();
    }

    void j(PorterDuff.Mode mode) {
        if (this.f1965e == null) {
            this.f1965e = new h0();
        }
        h0 h0Var = this.f1965e;
        h0Var.f2035b = mode;
        h0Var.f2036c = true;
        b();
    }
}
