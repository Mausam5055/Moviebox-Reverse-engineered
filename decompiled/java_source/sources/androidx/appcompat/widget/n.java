package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class n extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SeekBar f2055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f2056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f2057f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f2058g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2059h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f2060i;

    n(SeekBar seekBar) {
        super(seekBar);
        this.f2057f = null;
        this.f2058g = null;
        this.f2059h = false;
        this.f2060i = false;
        this.f2055d = seekBar;
    }

    private void f() {
        Drawable drawable = this.f2056e;
        if (drawable != null) {
            if (this.f2059h || this.f2060i) {
                Drawable drawableR = a1.a.r(drawable.mutate());
                this.f2056e = drawableR;
                if (this.f2059h) {
                    a1.a.o(drawableR, this.f2057f);
                }
                if (this.f2060i) {
                    a1.a.p(this.f2056e, this.f2058g);
                }
                if (this.f2056e.isStateful()) {
                    this.f2056e.setState(this.f2055d.getDrawableState());
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.l
    void c(AttributeSet attributeSet, int i11) {
        super.c(attributeSet, i11);
        j0 j0VarV = j0.v(this.f2055d.getContext(), attributeSet, R$styleable.AppCompatSeekBar, i11, 0);
        SeekBar seekBar = this.f2055d;
        ViewCompat.saveAttributeDataForStyleable(seekBar, seekBar.getContext(), R$styleable.AppCompatSeekBar, attributeSet, j0VarV.r(), i11, 0);
        Drawable drawableH = j0VarV.h(R$styleable.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.f2055d.setThumb(drawableH);
        }
        j(j0VarV.g(R$styleable.AppCompatSeekBar_tickMark));
        if (j0VarV.s(R$styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f2058g = y.e(j0VarV.k(R$styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f2058g);
            this.f2060i = true;
        }
        if (j0VarV.s(R$styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f2057f = j0VarV.c(R$styleable.AppCompatSeekBar_tickMarkTint);
            this.f2059h = true;
        }
        j0VarV.x();
        f();
    }

    void g(Canvas canvas) {
        if (this.f2056e != null) {
            int max = this.f2055d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f2056e.getIntrinsicWidth();
                int intrinsicHeight = this.f2056e.getIntrinsicHeight();
                int i11 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i12 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f2056e.setBounds(-i11, -i12, i11, i12);
                float width = ((this.f2055d.getWidth() - this.f2055d.getPaddingLeft()) - this.f2055d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f2055d.getPaddingLeft(), this.f2055d.getHeight() / 2);
                for (int i13 = 0; i13 <= max; i13++) {
                    this.f2056e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void h() {
        Drawable drawable = this.f2056e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f2055d.getDrawableState())) {
            this.f2055d.invalidateDrawable(drawable);
        }
    }

    void i() {
        Drawable drawable = this.f2056e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(Drawable drawable) {
        Drawable drawable2 = this.f2056e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f2056e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f2055d);
            a1.a.m(drawable, this.f2055d.getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(this.f2055d.getDrawableState());
            }
            f();
        }
        this.f2055d.invalidate();
    }
}
