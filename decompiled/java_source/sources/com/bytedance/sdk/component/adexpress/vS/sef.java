package com.bytedance.sdk.component.adexpress.vS;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: loaded from: classes2.dex */
public class sef extends FrameLayout {
    private AnimatorSet EjP;
    private boolean HiB;
    private Context Sj;
    private EjP TKC;
    private ImageView sP;
    private TextView vS;

    public sef(@NonNull Context context) {
        super(context);
        this.HiB = true;
        this.Sj = context;
        this.EjP = new AnimatorSet();
        TKC();
        EjP();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.sef.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) sef.this.sP.getLayoutParams();
                layoutParams.topMargin = ((int) ((sef.this.TKC.getMeasuredHeight() / 2.0f) - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(sef.this.getContext(), 5.0f))) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(sef.this.Sj, 20.0f));
                layoutParams.leftMargin = ((int) ((sef.this.TKC.getMeasuredWidth() / 2.0f) - com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(sef.this.getContext(), 5.0f))) + ((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(sef.this.Sj, 20.0f));
                layoutParams.bottomMargin = (int) (((-sef.this.TKC.getMeasuredHeight()) / 2.0f) + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(sef.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-sef.this.TKC.getMeasuredWidth()) / 2.0f) + com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(sef.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                sef.this.sP.setLayoutParams(layoutParams);
            }
        });
    }

    private void EjP() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sP, "scaleX", 1.0f, 0.8f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.vS.sef.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (sef.this.HiB) {
                    sef.this.TKC.Sj();
                    sef.this.TKC.setAlpha(1.0f);
                } else {
                    sef.this.TKC.sP();
                    sef.this.TKC.setAlpha(0.0f);
                }
                sef sefVar = sef.this;
                sefVar.HiB = !sefVar.HiB;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(sef.this.sP, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat2.start();
                sef.this.sP.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.sP, "scaleY", 1.0f, 0.8f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.EjP.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void TKC() {
        this.TKC = new EjP(this.Sj);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 80.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 80.0f));
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        layoutParams.topMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 20.0f);
        int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 20.0f);
        layoutParams.leftMargin = iSj;
        layoutParams.setMarginStart(iSj);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.TKC, layoutParams);
        this.TKC.Sj();
        this.sP = new ImageView(this.Sj);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 80.0f), (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 80.0f));
        this.sP.setImageResource(com.bytedance.sdk.component.utils.ib.EjP(this.Sj, "tt_splash_hand"));
        addView(this.sP, layoutParams2);
        TextView textView = new TextView(this.Sj);
        this.vS = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.Sj, 10.0f);
        addView(this.vS, layoutParams3);
    }

    public void Sj() {
        this.EjP.start();
    }

    public void sP() {
        AnimatorSet animatorSet = this.EjP;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        EjP ejP = this.TKC;
        if (ejP != null) {
            ejP.sP();
        }
    }

    public void setGuideText(String str) {
        this.vS.setText(str);
    }

    public void setGuideTextColor(int i11) {
        this.vS.setTextColor(i11);
    }
}
