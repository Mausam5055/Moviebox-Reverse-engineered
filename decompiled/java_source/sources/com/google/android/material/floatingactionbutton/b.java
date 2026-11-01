package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.core.util.i;
import java.util.ArrayList;
import java.util.List;
import oa.h;

/* JADX INFO: loaded from: classes4.dex */
abstract class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f28981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExtendedFloatingActionButton f28982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList f28983c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.material.floatingactionbutton.a f28984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f28985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h f28986f;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(oa.a.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.E.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f28982b.E.getDefaultColor()))));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f11) {
            int colorForState = extendedFloatingActionButton.E.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.f28982b.E.getDefaultColor());
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (oa.a.a(0.0f, Color.alpha(colorForState) / 255.0f, f11.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f11.floatValue() == 1.0f) {
                extendedFloatingActionButton.B(extendedFloatingActionButton.E);
            } else {
                extendedFloatingActionButton.B(colorStateListValueOf);
            }
        }
    }

    b(ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.a aVar) {
        this.f28982b = extendedFloatingActionButton;
        this.f28981a = extendedFloatingActionButton.getContext();
        this.f28984d = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void a() {
        this.f28984d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public h c() {
        return this.f28986f;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void e(Animator.AnimatorListener animatorListener) {
        this.f28983c.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void f() {
        this.f28984d.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void h(Animator.AnimatorListener animatorListener) {
        this.f28983c.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void i(h hVar) {
        this.f28986f = hVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public AnimatorSet j() {
        return n(o());
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final List k() {
        return this.f28983c;
    }

    AnimatorSet n(h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.j("opacity")) {
            arrayList.add(hVar.f("opacity", this.f28982b, View.ALPHA));
        }
        if (hVar.j("scale")) {
            arrayList.add(hVar.f("scale", this.f28982b, View.SCALE_Y));
            arrayList.add(hVar.f("scale", this.f28982b, View.SCALE_X));
        }
        if (hVar.j("width")) {
            arrayList.add(hVar.f("width", this.f28982b, ExtendedFloatingActionButton.J));
        }
        if (hVar.j("height")) {
            arrayList.add(hVar.f("height", this.f28982b, ExtendedFloatingActionButton.K));
        }
        if (hVar.j("paddingStart")) {
            arrayList.add(hVar.f("paddingStart", this.f28982b, ExtendedFloatingActionButton.L));
        }
        if (hVar.j("paddingEnd")) {
            arrayList.add(hVar.f("paddingEnd", this.f28982b, ExtendedFloatingActionButton.M));
        }
        if (hVar.j("labelOpacity")) {
            arrayList.add(hVar.f("labelOpacity", this.f28982b, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        oa.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final h o() {
        h hVar = this.f28986f;
        if (hVar != null) {
            return hVar;
        }
        if (this.f28985e == null) {
            this.f28985e = h.d(this.f28981a, g());
        }
        return (h) i.g(this.f28985e);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public void onAnimationStart(Animator animator) {
        this.f28984d.c(animator);
    }
}
