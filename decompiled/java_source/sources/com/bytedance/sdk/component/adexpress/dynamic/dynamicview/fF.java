package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class fF extends vS {
    ObjectAnimator Sj;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private boolean f20894dx;
    ObjectAnimator sP;
    private int sU;
    private Runnable zR;

    public fF(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.sU = 0;
        this.f20894dx = false;
        this.zR = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fF.1
            @Override // java.lang.Runnable
            public void run() {
                fF.this.Sj();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj() {
        final View childAt;
        final View childAt2 = getChildAt(this.sU);
        int i11 = this.sU;
        if (i11 == 0) {
            this.f20894dx = false;
        }
        boolean z10 = i11 + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.sU + 1)).getChildCount() <= 0;
        if (this.Fmk.TEQ().HiB().Sj() || !z10) {
            View childAt3 = z10 ? getChildAt((this.sU + 2) % getChildCount()) : getChildAt((this.sU + 1) % getChildCount());
            this.Sj = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (-(this.Dq + getChildAt(this.sU).getHeight())) / 2);
            if (z10) {
                this.sU++;
            }
            childAt = childAt3;
        } else {
            this.f20894dx = true;
            childAt = getChildAt(this.sU - 1);
            this.Sj = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (this.Dq + getChildAt(this.sU).getHeight()) / 2);
        }
        this.Sj.setInterpolator(new LinearInterpolator());
        this.Sj.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fF.2
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
        if (this.f20894dx) {
            this.sP = ObjectAnimator.ofFloat(childAt, "translationY", (-(this.Dq + childAt.getHeight())) / 2, 0.0f);
        } else {
            this.sP = ObjectAnimator.ofFloat(childAt, "translationY", (this.Dq + childAt.getHeight()) / 2, 0.0f);
        }
        this.sP.setInterpolator(new LinearInterpolator());
        this.sP.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fF.3
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
        if (this.f20894dx) {
            this.sU--;
        } else {
            int i12 = this.sU + 1;
            this.sU = i12;
            this.sU = i12 % getChildCount();
        }
        postDelayed(this.zR, 3000L);
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
