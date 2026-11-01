package com.bytedance.sdk.component.adexpress.vS;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class dx extends FrameLayout {
    private AnimatorSet Dq;
    private ImageView EjP;
    private TextView HiB;
    private AnimatorSet Jcg;
    private Context Sj;
    private ImageView TKC;
    private ImageView sP;
    private AnimatorSet uA;
    private AnimatorSet vS;

    public dx(@NonNull Context context) {
        super(context);
        this.vS = new AnimatorSet();
        this.Jcg = new AnimatorSet();
        this.Dq = new AnimatorSet();
        this.uA = new AnimatorSet();
        this.Sj = context;
        TKC();
    }

    private void EjP() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sP, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.TKC, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.TKC, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.EjP, "alpha", 0.0f, 1.0f);
        this.Dq.setDuration(300L);
        this.Dq.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.sP, "translationX", 0.0f, com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), 90.0f));
        objectAnimatorOfFloat5.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), 90.0f));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.vS.dx.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) dx.this.EjP.getLayoutParams();
                layoutParams.width = num.intValue();
                dx.this.EjP.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.TKC, "translationX", 0.0f, com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), 90.0f));
        objectAnimatorOfFloat6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.uA.setDuration(1500L);
        this.uA.playTogether(objectAnimatorOfFloat5, valueAnimatorOfInt, objectAnimatorOfFloat6);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.sP, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.EjP, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.TKC, "alpha", 1.0f, 0.0f);
        this.Jcg.setDuration(50L);
        this.Jcg.playTogether(objectAnimatorOfFloat7, objectAnimatorOfFloat8, objectAnimatorOfFloat9);
        this.vS.playSequentially(this.Dq, this.uA, this.Jcg);
    }

    private void TKC() {
        ImageView imageView = new ImageView(this.Sj);
        this.EjP = imageView;
        imageView.setBackgroundResource(com.bytedance.sdk.component.utils.ib.EjP(this.Sj, "tt_splash_slide_right_bg"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, -2);
        layoutParams.gravity = 48;
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 30.0f);
        addView(this.EjP, layoutParams);
        setClipChildren(false);
        setClipToPadding(false);
        ImageView imageView2 = new ImageView(this.Sj);
        this.TKC = imageView2;
        imageView2.setImageResource(com.bytedance.sdk.component.utils.ib.EjP(this.Sj, "tt_splash_slide_right_circle"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 50.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 50.0f));
        layoutParams2.gravity = 48;
        layoutParams2.leftMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 30.0f);
        addView(this.TKC, layoutParams2);
        ImageView imageView3 = new ImageView(this.Sj);
        this.sP = imageView3;
        imageView3.setImageResource(com.bytedance.sdk.component.utils.ib.EjP(this.Sj, "tt_splash_hand2"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 80.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 80.0f));
        layoutParams3.gravity = 48;
        layoutParams3.leftMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 30.0f);
        addView(this.sP, layoutParams3);
        TextView textView = new TextView(this.Sj);
        this.HiB = textView;
        textView.setTextColor(-1);
        this.HiB.setSingleLine();
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 80;
        addView(this.HiB, layoutParams4);
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.dx.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) dx.this.sP.getLayoutParams();
                layoutParams5.topMargin = (int) ((dx.this.TKC.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(dx.this.getContext(), 7.0f));
                int iSj = (-dx.this.TKC.getMeasuredWidth()) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(dx.this.Sj, 30.0f));
                layoutParams5.leftMargin = iSj;
                layoutParams5.setMarginStart(iSj);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                dx.this.sP.setLayoutParams(layoutParams5);
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) dx.this.EjP.getLayoutParams();
                layoutParams6.topMargin = (int) ((dx.this.TKC.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(dx.this.getContext(), 5.0f));
                layoutParams6.leftMargin = (int) ((dx.this.TKC.getMeasuredWidth() / 2.0f) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(dx.this.Sj, 30.0f)));
                layoutParams5.setMarginStart(layoutParams5.leftMargin);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                dx.this.EjP.setLayoutParams(layoutParams6);
            }
        });
    }

    public void Sj() {
        EjP();
        this.vS.start();
        this.vS.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.vS.dx.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                dx.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.dx.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dx.this.vS.start();
                    }
                }, 200L);
            }
        });
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
    }

    public void sP() {
        try {
            AnimatorSet animatorSet = this.vS;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.Dq;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.uA;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.Jcg;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable unused) {
        }
    }

    public void setGuideText(String str) {
        this.HiB.setText(str);
    }
}
