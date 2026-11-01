package com.bytedance.sdk.component.adexpress.vS;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends FrameLayout {
    private int Dq;
    private View EjP;
    private View HiB;
    private ImageView Jcg;
    private AnimatorSet Sj;
    private Context TEQ;
    private boolean TKC;
    private ObjectAnimator sP;
    private int uA;
    private View vS;

    public sP(Context context, int i11, int i12) {
        super(context);
        this.TKC = false;
        this.Sj = new AnimatorSet();
        this.Dq = i11;
        this.uA = i12;
        this.TEQ = context;
        TKC();
        EjP();
    }

    private void EjP() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.EjP, "scaleX", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.EjP, "scaleY", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.HiB, "scaleX", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.HiB, "scaleY", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.vS, "scaleX", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.vS, "scaleY", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.Jcg, "rotation", 0.0f, -20.0f, 0.0f);
        this.sP = objectAnimatorOfFloat7;
        objectAnimatorOfFloat7.setDuration(1000L);
        this.Sj.setDuration(1500L);
        this.Sj.setInterpolator(new AccelerateDecelerateInterpolator());
        this.Sj.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3).with(objectAnimatorOfFloat4).with(objectAnimatorOfFloat5).with(objectAnimatorOfFloat6);
        this.Sj.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.vS.sP.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                sP.this.TKC = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (sP.this.TKC) {
                    return;
                }
                sP.this.sP.start();
                sP.this.Sj.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private GradientDrawable Sj(String str, String str2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(1, Color.parseColor(str2));
        return gradientDrawable;
    }

    private void TKC() {
        View view = new View(this.TEQ);
        this.EjP = view;
        view.setBackground(Sj("#1A7BBEFF", "#337BBEFF"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (((double) this.Dq) * 0.45d), (int) (((double) this.uA) * 0.45d));
        layoutParams.gravity = 17;
        this.EjP.setLayoutParams(layoutParams);
        addView(this.EjP);
        View view2 = new View(this.TEQ);
        this.HiB = view2;
        view2.setBackground(Sj("#337BBEFF", "#807BBEFF"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (((double) this.Dq) * 0.25d), (int) (((double) this.uA) * 0.25d));
        layoutParams2.gravity = 17;
        this.HiB.setLayoutParams(layoutParams2);
        addView(this.HiB);
        View view3 = new View(this.TEQ);
        this.vS = view3;
        view3.setBackground(Sj("#807BBEFF", "#FF7BBEFF"));
        int i11 = this.Dq;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) (((double) i11) * 0.25d), (int) (((double) i11) * 0.25d));
        layoutParams3.gravity = 17;
        this.vS.setLayoutParams(layoutParams3);
        addView(this.vS);
        ImageView imageView = new ImageView(this.TEQ);
        this.Jcg = imageView;
        imageView.setImageResource(com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_blue_hand"));
        this.Jcg.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((int) (((double) this.Dq) * 0.62d), (int) (((double) this.uA) * 0.53d));
        layoutParams4.gravity = 17;
        layoutParams4.topMargin = (layoutParams4.width / 2) - 5;
        layoutParams4.leftMargin = (layoutParams4.height / 2) - 5;
        this.Jcg.setLayoutParams(layoutParams4);
        addView(this.Jcg);
    }

    public void Sj() {
        this.TKC = false;
        ObjectAnimator objectAnimator = this.sP;
        if (objectAnimator == null || this.Sj == null) {
            return;
        }
        objectAnimator.start();
        this.Sj.start();
    }

    public void sP() {
        this.TKC = true;
        ObjectAnimator objectAnimator = this.sP;
        if (objectAnimator == null || this.Sj == null) {
            return;
        }
        objectAnimator.cancel();
        this.Sj.cancel();
    }
}
