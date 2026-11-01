package com.bytedance.sdk.component.adexpress.vS;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends FrameLayout {
    private ImageView Sj;
    private AnimatorSet sP;

    public HiB(Context context) {
        super(context);
        TKC();
        EjP();
    }

    private void EjP() {
        this.sP = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.Sj, "scaleX", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(2000L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.Sj, "scaleY", 1.0f, 1.5f, 1.0f, 1.0f, 1.0f);
        objectAnimatorOfFloat2.setDuration(2000L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.sP.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
    }

    private void TKC() {
        ImageView imageView = new ImageView(getContext());
        this.Sj = imageView;
        imageView.setImageResource(com.bytedance.sdk.component.utils.ib.EjP(getContext(), "tt_white_hand"));
        int iSj = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), 20.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iSj, iSj);
        layoutParams.gravity = 17;
        addView(this.Sj, layoutParams);
    }

    public void Sj() {
        AnimatorSet animatorSet = this.sP;
        if (animatorSet != null) {
            animatorSet.start();
        }
    }

    public void sP() {
        AnimatorSet animatorSet = this.sP;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }
}
