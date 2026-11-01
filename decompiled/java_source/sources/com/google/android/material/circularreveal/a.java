package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: com.google.android.material.circularreveal.a$a, reason: collision with other inner class name */
    class C0394a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f28741a;

        C0394a(c cVar) {
            this.f28741a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f28741a.destroyCircularRevealCache();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f28741a.buildCircularRevealCache();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Animator a(c cVar, float f11, float f12, float f13) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(cVar, (Property<c, V>) c.C0395c.f28754a, c.b.f28752b, new c.e(f11, f12, f13));
        c.e revealInfo = cVar.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) cVar, (int) f11, (int) f12, revealInfo.f28758c, f13);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    public static Animator.AnimatorListener b(c cVar) {
        return new C0394a(cVar);
    }
}
