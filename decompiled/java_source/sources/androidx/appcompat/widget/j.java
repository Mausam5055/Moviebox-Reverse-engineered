package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageView f2039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h0 f2040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h0 f2041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h0 f2042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2043e = 0;

    public j(ImageView imageView) {
        this.f2039a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f2042d == null) {
            this.f2042d = new h0();
        }
        h0 h0Var = this.f2042d;
        h0Var.a();
        ColorStateList colorStateListA = androidx.core.widget.i.a(this.f2039a);
        if (colorStateListA != null) {
            h0Var.f2037d = true;
            h0Var.f2034a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.i.b(this.f2039a);
        if (modeB != null) {
            h0Var.f2036c = true;
            h0Var.f2035b = modeB;
        }
        if (!h0Var.f2037d && !h0Var.f2036c) {
            return false;
        }
        f.i(drawable, h0Var, this.f2039a.getDrawableState());
        return true;
    }

    private boolean l() {
        return this.f2040b != null;
    }

    void b() {
        if (this.f2039a.getDrawable() != null) {
            this.f2039a.getDrawable().setLevel(this.f2043e);
        }
    }

    void c() {
        Drawable drawable = this.f2039a.getDrawable();
        if (drawable != null) {
            y.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            h0 h0Var = this.f2041c;
            if (h0Var != null) {
                f.i(drawable, h0Var, this.f2039a.getDrawableState());
                return;
            }
            h0 h0Var2 = this.f2040b;
            if (h0Var2 != null) {
                f.i(drawable, h0Var2, this.f2039a.getDrawableState());
            }
        }
    }

    ColorStateList d() {
        h0 h0Var = this.f2041c;
        if (h0Var != null) {
            return h0Var.f2034a;
        }
        return null;
    }

    PorterDuff.Mode e() {
        h0 h0Var = this.f2041c;
        if (h0Var != null) {
            return h0Var.f2035b;
        }
        return null;
    }

    boolean f() {
        return !(this.f2039a.getBackground() instanceof RippleDrawable);
    }

    public void g(AttributeSet attributeSet, int i11) {
        int iN;
        j0 j0VarV = j0.v(this.f2039a.getContext(), attributeSet, R$styleable.AppCompatImageView, i11, 0);
        ImageView imageView = this.f2039a;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), R$styleable.AppCompatImageView, attributeSet, j0VarV.r(), i11, 0);
        try {
            Drawable drawable = this.f2039a.getDrawable();
            if (drawable == null && (iN = j0VarV.n(R$styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = g.a.b(this.f2039a.getContext(), iN)) != null) {
                this.f2039a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                y.b(drawable);
            }
            if (j0VarV.s(R$styleable.AppCompatImageView_tint)) {
                androidx.core.widget.i.c(this.f2039a, j0VarV.c(R$styleable.AppCompatImageView_tint));
            }
            if (j0VarV.s(R$styleable.AppCompatImageView_tintMode)) {
                androidx.core.widget.i.d(this.f2039a, y.e(j0VarV.k(R$styleable.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void h(Drawable drawable) {
        this.f2043e = drawable.getLevel();
    }

    public void i(int i11) {
        if (i11 != 0) {
            Drawable drawableB = g.a.b(this.f2039a.getContext(), i11);
            if (drawableB != null) {
                y.b(drawableB);
            }
            this.f2039a.setImageDrawable(drawableB);
        } else {
            this.f2039a.setImageDrawable(null);
        }
        c();
    }

    void j(ColorStateList colorStateList) {
        if (this.f2041c == null) {
            this.f2041c = new h0();
        }
        h0 h0Var = this.f2041c;
        h0Var.f2034a = colorStateList;
        h0Var.f2037d = true;
        c();
    }

    void k(PorterDuff.Mode mode) {
        if (this.f2041c == null) {
            this.f2041c = new h0();
        }
        h0 h0Var = this.f2041c;
        h0Var.f2035b = mode;
        h0Var.f2036c = true;
        c();
    }
}
