package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CheckedTextView f1968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f1969b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f1970c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1971d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1972e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1973f;

    d(CheckedTextView checkedTextView) {
        this.f1968a = checkedTextView;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.b.a(this.f1968a);
        if (drawableA != null) {
            if (this.f1971d || this.f1972e) {
                Drawable drawableMutate = a1.a.r(drawableA).mutate();
                if (this.f1971d) {
                    a1.a.o(drawableMutate, this.f1969b);
                }
                if (this.f1972e) {
                    a1.a.p(drawableMutate, this.f1970c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.f1968a.getDrawableState());
                }
                this.f1968a.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    ColorStateList b() {
        return this.f1969b;
    }

    PorterDuff.Mode c() {
        return this.f1970c;
    }

    void d(AttributeSet attributeSet, int i11) {
        int iN;
        int iN2;
        j0 j0VarV = j0.v(this.f1968a.getContext(), attributeSet, R$styleable.CheckedTextView, i11, 0);
        CheckedTextView checkedTextView = this.f1968a;
        ViewCompat.saveAttributeDataForStyleable(checkedTextView, checkedTextView.getContext(), R$styleable.CheckedTextView, attributeSet, j0VarV.r(), i11, 0);
        try {
            if (j0VarV.s(R$styleable.CheckedTextView_checkMarkCompat) && (iN2 = j0VarV.n(R$styleable.CheckedTextView_checkMarkCompat, 0)) != 0) {
                try {
                    CheckedTextView checkedTextView2 = this.f1968a;
                    checkedTextView2.setCheckMarkDrawable(g.a.b(checkedTextView2.getContext(), iN2));
                } catch (Resources.NotFoundException unused) {
                    if (j0VarV.s(R$styleable.CheckedTextView_android_checkMark)) {
                        CheckedTextView checkedTextView3 = this.f1968a;
                        checkedTextView3.setCheckMarkDrawable(g.a.b(checkedTextView3.getContext(), iN));
                    }
                }
            } else if (j0VarV.s(R$styleable.CheckedTextView_android_checkMark) && (iN = j0VarV.n(R$styleable.CheckedTextView_android_checkMark, 0)) != 0) {
                CheckedTextView checkedTextView4 = this.f1968a;
                checkedTextView4.setCheckMarkDrawable(g.a.b(checkedTextView4.getContext(), iN));
            }
            if (j0VarV.s(R$styleable.CheckedTextView_checkMarkTint)) {
                androidx.core.widget.b.b(this.f1968a, j0VarV.c(R$styleable.CheckedTextView_checkMarkTint));
            }
            if (j0VarV.s(R$styleable.CheckedTextView_checkMarkTintMode)) {
                androidx.core.widget.b.c(this.f1968a, y.e(j0VarV.k(R$styleable.CheckedTextView_checkMarkTintMode, -1), null));
            }
        } finally {
            j0VarV.x();
        }
    }

    void e() {
        if (this.f1973f) {
            this.f1973f = false;
        } else {
            this.f1973f = true;
            a();
        }
    }

    void f(ColorStateList colorStateList) {
        this.f1969b = colorStateList;
        this.f1971d = true;
        a();
    }

    void g(PorterDuff.Mode mode) {
        this.f1970c = mode;
        this.f1972e = true;
        a();
    }
}
