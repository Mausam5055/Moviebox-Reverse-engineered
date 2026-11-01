package com.bytedance.sdk.component.adexpress.vS;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class zR extends RelativeLayout {
    private AnimatorSet Dq;
    private TextView EjP;
    private TextView HiB;
    private AnimatorSet Jcg;
    private ImageView Sj;
    private String TEQ;
    private ImageView TKC;
    private int Ym;
    private ImageView sP;
    private AnimatorSet uA;
    private AnimatorSet vS;

    public zR(Context context) {
        super(context);
        this.vS = new AnimatorSet();
        this.Jcg = new AnimatorSet();
        this.Dq = new AnimatorSet();
        this.uA = new AnimatorSet();
        this.Ym = 100;
        Sj(context);
    }

    public zR(Context context, String str) {
        super(context);
        this.vS = new AnimatorSet();
        this.Jcg = new AnimatorSet();
        this.Dq = new AnimatorSet();
        this.uA = new AnimatorSet();
        this.Ym = 100;
        setClipChildren(false);
        this.TEQ = str;
        Sj(context);
    }

    public void Sj() {
        TKC();
        this.vS.start();
        this.vS.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.vS.zR.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                zR.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.vS.zR.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zR.this.vS.start();
                    }
                }, 200L);
            }
        });
    }

    protected void Sj(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.EjP.Sj();
        }
        if ("5".equals(this.TEQ)) {
            addView(com.bytedance.sdk.component.adexpress.TKC.Sj.vS(context));
            this.Ym = (int) (((double) this.Ym) * 1.25d);
        } else {
            addView(com.bytedance.sdk.component.adexpress.TKC.Sj.HiB(context));
        }
        this.Sj = (ImageView) findViewById(2097610734);
        this.sP = (ImageView) findViewById(2097610735);
        this.EjP = (TextView) findViewById(2097610730);
        this.TKC = (ImageView) findViewById(2097610733);
        this.HiB = (TextView) findViewById(2097610731);
    }

    public void TKC() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.Sj, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.Sj, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.Sj, "translationY", 0.0f, com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), -this.Ym));
        objectAnimatorOfFloat3.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), this.Ym));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.vS.zR.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (zR.this.TKC != null) {
                    Integer num = (Integer) valueAnimator.getAnimatedValue();
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) zR.this.TKC.getLayoutParams();
                    layoutParams.height = num.intValue();
                    zR.this.TKC.setLayoutParams(layoutParams);
                }
            }
        });
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.TKC, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.TKC, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.sP, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.sP, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.sP, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.sP, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat10 = ObjectAnimator.ofFloat(this.sP, "translationY", 0.0f, com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), -this.Ym));
        objectAnimatorOfFloat10.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.Jcg.setDuration(50L);
        this.uA.setDuration(1500L);
        this.Dq.setDuration(50L);
        this.Jcg.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat7, objectAnimatorOfFloat5);
        this.Dq.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat6, objectAnimatorOfFloat8, objectAnimatorOfFloat9, objectAnimatorOfFloat4);
        this.uA.playTogether(objectAnimatorOfFloat3, valueAnimatorOfInt, objectAnimatorOfFloat10);
        this.vS.playSequentially(this.Dq, this.uA, this.Jcg);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.vS;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        sP();
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
            AnimatorSet animatorSet3 = this.Jcg;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.uA;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    public void setGuideText(String str) {
        TextView textView = this.EjP;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setSlideText(String str) {
        if (this.HiB != null) {
            if (TextUtils.isEmpty(str)) {
                this.HiB.setText("");
            } else {
                this.HiB.setText(str);
            }
        }
    }
}
