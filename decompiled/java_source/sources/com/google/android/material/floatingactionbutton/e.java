package com.google.android.material.floatingactionbutton;

import ab.i;
import ab.n;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.google.android.material.R$color;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
class e extends d {
    private StateListAnimator O;

    static class a extends i {
        a(n nVar) {
            super(nVar);
        }

        @Override // ab.i, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    e(FloatingActionButton floatingActionButton, za.b bVar) {
        super(floatingActionButton, bVar);
    }

    private StateListAnimator m0(float f11, float f12, float f13) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(d.I, n0(f11, f13));
        stateListAnimator.addState(d.J, n0(f11, f12));
        stateListAnimator.addState(d.K, n0(f11, f12));
        stateListAnimator.addState(d.L, n0(f11, f12));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f29027w, "elevation", f11).setDuration(0L));
        if (Build.VERSION.SDK_INT <= 24) {
            FloatingActionButton floatingActionButton = this.f29027w;
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
        }
        arrayList.add(ObjectAnimator.ofFloat(this.f29027w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(d.D);
        stateListAnimator.addState(d.M, animatorSet);
        stateListAnimator.addState(d.N, n0(0.0f, 0.0f));
        return stateListAnimator;
    }

    private Animator n0(float f11, float f12) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f29027w, "elevation", f11).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f29027w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f12).setDuration(100L));
        animatorSet.setInterpolator(d.D);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void A() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void C() {
        i0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void E(int[] iArr) {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void F(float f11, float f12, float f13) {
        if (this.f29027w.getStateListAnimator() == this.O) {
            StateListAnimator stateListAnimatorM0 = m0(f11, f12, f13);
            this.O = stateListAnimatorM0;
            this.f29027w.setStateListAnimator(stateListAnimatorM0);
        }
        if (c0()) {
            i0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean N() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void Y(ColorStateList colorStateList) {
        Drawable drawable = this.f29007c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(ya.b.d(colorStateList));
        } else {
            super.Y(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean c0() {
        return this.f29028x.c() || !e0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void g0() {
    }

    c l0(int i11, ColorStateList colorStateList) {
        Context context = this.f29027w.getContext();
        c cVar = new c((n) androidx.core.util.i.g(this.f29005a));
        cVar.e(androidx.core.content.b.getColor(context, R$color.design_fab_stroke_top_outer_color), androidx.core.content.b.getColor(context, R$color.design_fab_stroke_top_inner_color), androidx.core.content.b.getColor(context, R$color.design_fab_stroke_end_inner_color), androidx.core.content.b.getColor(context, R$color.design_fab_stroke_end_outer_color));
        cVar.d(i11);
        cVar.c(colorStateList);
        return cVar;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public float m() {
        return this.f29027w.getElevation();
    }

    i o0() {
        return new a((n) androidx.core.util.i.g(this.f29005a));
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void r(Rect rect) {
        if (this.f29028x.c()) {
            super.r(rect);
        } else if (e0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f29015k - this.f29027w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i11) {
        Drawable layerDrawable;
        i iVarO0 = o0();
        this.f29006b = iVarO0;
        iVarO0.setTintList(colorStateList);
        if (mode != null) {
            this.f29006b.setTintMode(mode);
        }
        this.f29006b.S(this.f29027w.getContext());
        if (i11 > 0) {
            this.f29008d = l0(i11, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) androidx.core.util.i.g(this.f29008d), (Drawable) androidx.core.util.i.g(this.f29006b)});
        } else {
            this.f29008d = null;
            layerDrawable = this.f29006b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(ya.b.d(colorStateList2), layerDrawable, null);
        this.f29007c = rippleDrawable;
        this.f29009e = rippleDrawable;
    }
}
