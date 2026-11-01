package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends vS {
    ObjectAnimator Sj;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private boolean f20891dx;
    ObjectAnimator sP;
    private int sU;
    private Runnable zR;

    public TKC(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.sU = 0;
        this.f20891dx = false;
        this.zR = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.TKC.1
            @Override // java.lang.Runnable
            public void run() {
                TKC.this.Sj();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj() {
        final View childAt;
        final View childAt2 = getChildAt(this.sU);
        if (childAt2 == null) {
            return;
        }
        int i11 = this.sU;
        if (i11 == 0) {
            this.f20891dx = false;
        }
        if (i11 + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.sU + 1)).getChildCount() <= 0) {
            this.f20891dx = true;
            childAt = getChildAt(this.sU - 1);
            this.Sj = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (this.Jcg + getChildAt(this.sU).getWidth()) / 2);
        } else {
            childAt = getChildAt(this.sU + 1);
            this.Sj = ObjectAnimator.ofFloat(childAt2, "translationX", 0.0f, (-(this.Jcg + getChildAt(this.sU).getWidth())) / 2);
        }
        if (childAt == null) {
            return;
        }
        this.Sj.setInterpolator(new LinearInterpolator());
        this.Sj.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.TKC.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                childAt2.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        if (this.f20891dx) {
            this.sP = ObjectAnimator.ofFloat(childAt, "translationX", (-(this.Jcg + childAt.getWidth())) / 2, 0.0f);
        } else {
            this.sP = ObjectAnimator.ofFloat(childAt, "translationX", (this.Jcg + childAt.getWidth()) / 2, 0.0f);
        }
        this.sP.setInterpolator(new LinearInterpolator());
        this.sP.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.TKC.3
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
                childAt.setVisibility(0);
            }
        });
        this.Sj.setDuration(500L);
        this.sP.setDuration(500L);
        this.Sj.start();
        this.sP.start();
        if (this.f20891dx) {
            this.sU--;
        } else {
            this.sU++;
        }
        postDelayed(this.zR, 2000L);
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
        postDelayed(this.zR, 2500L);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Mts
    public void sP() {
        removeCallbacks(this.zR);
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
