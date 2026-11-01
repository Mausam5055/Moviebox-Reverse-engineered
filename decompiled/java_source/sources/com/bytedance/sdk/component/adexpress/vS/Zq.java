package com.bytedance.sdk.component.adexpress.vS;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class Zq extends FrameLayout {
    private AnimatorSet EjP;
    private boolean HiB;
    private Context Sj;
    private ib TKC;
    private ImageView sP;

    public Zq(@NonNull Context context) {
        super(context);
        this.HiB = true;
        this.Sj = context;
        this.EjP = new AnimatorSet();
        TKC();
        EjP();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.Zq.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) Zq.this.sP.getLayoutParams();
                layoutParams.topMargin = (int) ((Zq.this.TKC.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(Zq.this.getContext(), 5.0f));
                layoutParams.leftMargin = (int) ((Zq.this.TKC.getMeasuredWidth() / 2.0f) - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(Zq.this.getContext(), 5.0f));
                layoutParams.bottomMargin = (int) (((-Zq.this.TKC.getMeasuredHeight()) / 2.0f) + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(Zq.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-Zq.this.TKC.getMeasuredWidth()) / 2.0f) + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(Zq.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                Zq.this.sP.setLayoutParams(layoutParams);
            }
        });
    }

    private void EjP() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sP, "scaleX", 1.0f, 0.9f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.vS.Zq.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (Zq.this.HiB) {
                    Zq.this.TKC.Sj();
                }
                Zq zq2 = Zq.this;
                zq2.HiB = !zq2.HiB;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(Zq.this.sP, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
                objectAnimatorOfFloat2.start();
                Zq.this.sP.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.sP, "scaleY", 1.0f, 0.9f);
        objectAnimatorOfFloat2.setDuration(800L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.EjP.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void TKC() {
        this.TKC = new ib(this.Sj);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 40.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 40.0f));
        layoutParams.gravity = 8388627;
        addView(this.TKC, layoutParams);
        this.sP = new ImageView(this.Sj);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 62.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 62.0f));
        layoutParams2.gravity = 16;
        this.sP.setImageResource(com.bytedance.sdk.component.utils.ib.EjP(this.Sj, "tt_splash_hand"));
        addView(this.sP, layoutParams2);
    }

    public void Sj() {
        this.EjP.start();
    }

    public void sP() {
        AnimatorSet animatorSet = this.EjP;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ib ibVar = this.TKC;
        if (ibVar != null) {
            ibVar.sP();
        }
        ImageView imageView = this.sP;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }
}
