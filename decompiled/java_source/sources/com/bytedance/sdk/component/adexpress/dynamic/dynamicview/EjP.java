package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends vS {
    ObjectAnimator Sj;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private Runnable f20887dx;
    ObjectAnimator sP;
    private int sU;

    public EjP(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.sU = 0;
        this.f20887dx = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.EjP.1
            @Override // java.lang.Runnable
            public void run() {
                EjP.this.Sj();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj() {
        final View childAt = getChildAt(this.sU);
        final View childAt2 = getChildAt((this.sU + 1) % getChildCount());
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt, "translationY", 0.0f, (-(this.Dq + getChildAt(this.sU).getHeight())) / 2);
        this.Sj = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.Sj.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.EjP.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(childAt2, "translationY", (this.Dq + childAt2.getHeight()) / 2, 0.0f);
        this.sP = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        this.sP.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.EjP.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                childAt2.setVisibility(0);
            }
        });
        this.Sj.setDuration(500L);
        this.sP.setDuration(500L);
        this.Sj.start();
        this.sP.start();
        int i11 = this.sU + 1;
        this.sU = i11;
        this.sU = i11 % getChildCount();
        postDelayed(this.f20887dx, 2000L);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.topMargin = (this.Dq - layoutParams.height) / 2;
            childAt.setLayoutParams(layoutParams);
            if (i11 != 0) {
                childAt.setVisibility(8);
            }
        }
        postDelayed(this.f20887dx, 2500L);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Mts
    public void sP() {
        removeCallbacks(this.f20887dx);
        ObjectAnimator objectAnimator = this.Sj;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.Sj.cancel();
        }
        ObjectAnimator objectAnimator2 = this.sP;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.sP.cancel();
        }
        super.sP();
    }
}
