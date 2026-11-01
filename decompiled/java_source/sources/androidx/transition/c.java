package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class c extends l0 {

    private static class a extends AnimatorListenerAdapter implements j.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f15010a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f15011b = false;

        a(View view) {
            this.f15010a = view;
        }

        @Override // androidx.transition.j.f
        public void a(j jVar) {
            this.f15010a.setTag(R$id.transition_pause_alpha, null);
        }

        @Override // androidx.transition.j.f
        public void b(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void c(j jVar) {
            this.f15010a.setTag(R$id.transition_pause_alpha, Float.valueOf(this.f15010a.getVisibility() == 0 ? z.b(this.f15010a) : 0.0f));
        }

        @Override // androidx.transition.j.f
        public /* synthetic */ void d(j jVar, boolean z10) {
            k.a(this, jVar, z10);
        }

        @Override // androidx.transition.j.f
        public void e(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void f(j jVar) {
        }

        @Override // androidx.transition.j.f
        public void g(j jVar, boolean z10) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            z.e(this.f15010a, 1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator, boolean z10) {
            if (this.f15011b) {
                this.f15010a.setLayerType(0, null);
            }
            if (z10) {
                return;
            }
            z.e(this.f15010a, 1.0f);
            z.a(this.f15010a);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f15010a.hasOverlappingRendering() && this.f15010a.getLayerType() == 0) {
                this.f15011b = true;
                this.f15010a.setLayerType(2, null);
            }
        }
    }

    public c() {
    }

    public c(int i11) {
        l0(i11);
    }

    private Animator m0(View view, float f11, float f12) {
        if (f11 == f12) {
            return null;
        }
        z.e(view, f11);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) z.f15118b, f12);
        a aVar = new a(view);
        objectAnimatorOfFloat.addListener(aVar);
        x().a(aVar);
        return objectAnimatorOfFloat;
    }

    private static float n0(w wVar, float f11) {
        Float f12;
        return (wVar == null || (f12 = (Float) wVar.f15109a.get("android:fade:transitionAlpha")) == null) ? f11 : f12.floatValue();
    }

    @Override // androidx.transition.l0
    public Animator h0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        z.c(view);
        return m0(view, n0(wVar, 0.0f), 1.0f);
    }

    @Override // androidx.transition.l0, androidx.transition.j
    public void j(w wVar) {
        super.j(wVar);
        Float fValueOf = (Float) wVar.f15110b.getTag(R$id.transition_pause_alpha);
        if (fValueOf == null) {
            fValueOf = wVar.f15110b.getVisibility() == 0 ? Float.valueOf(z.b(wVar.f15110b)) : Float.valueOf(0.0f);
        }
        wVar.f15109a.put("android:fade:transitionAlpha", fValueOf);
    }

    @Override // androidx.transition.l0
    public Animator j0(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        z.c(view);
        Animator animatorM0 = m0(view, n0(wVar, 1.0f), 0.0f);
        if (animatorM0 == null) {
            z.e(view, n0(wVar2, 1.0f));
        }
        return animatorM0;
    }
}
