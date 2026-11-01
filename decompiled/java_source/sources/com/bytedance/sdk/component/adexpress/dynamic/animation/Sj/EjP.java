package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Mts;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EjP implements Mts {
    private Set<ScheduledFuture<?>> EjP = new HashSet();
    public List<ObjectAnimator> Sj = Sj();
    public View TKC;
    com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sP;

    public class Sj implements Runnable {
        ObjectAnimator Sj;
        ScheduledFuture<?> sP;

        Sj(ObjectAnimator objectAnimator) {
            this.Sj = objectAnimator;
        }

        public void Sj(ScheduledFuture<?> scheduledFuture) {
            this.sP = scheduledFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC() != null) {
                com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().TKC().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP.Sj.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Sj.this.Sj.resume();
                    }
                });
                if (this.sP != null) {
                    EjP.this.EjP.remove(this.sP);
                }
            }
        }
    }

    public EjP(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        this.TKC = view;
        this.sP = sj2;
    }

    ObjectAnimator Sj(final ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay((long) (this.sP.sef() * 1000.0d));
        if (this.sP.Zq() > 0) {
            objectAnimator.setRepeatCount(this.sP.Zq() - 1);
        } else {
            objectAnimator.setRepeatCount(-1);
        }
        if (!"normal".equals(this.sP.uvD())) {
            if ("alternate".equals(this.sP.uvD()) || "alternate-reverse".equals(this.sP.uvD())) {
                objectAnimator.setRepeatMode(2);
            } else {
                objectAnimator.setRepeatMode(1);
            }
        }
        if ("ease-in-out".equals(this.sP.Fmk())) {
            objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if ("ease-in".equals(this.sP.uvD())) {
            objectAnimator.setInterpolator(new AccelerateInterpolator());
        } else if ("ease-out".equals(this.sP.uvD())) {
            objectAnimator.setInterpolator(new DecelerateInterpolator());
        } else {
            objectAnimator.setInterpolator(new LinearInterpolator());
        }
        objectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (valueAnimator.getCurrentPlayTime() > 0) {
                    EjP.this.TKC.setVisibility(0);
                    if (EjP.this.TKC.getParent() instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS) {
                        ((View) EjP.this.TKC.getParent()).setVisibility(0);
                    }
                    objectAnimator.removeAllUpdateListeners();
                }
            }
        });
        return objectAnimator;
    }

    abstract List<ObjectAnimator> Sj();

    public void TKC() {
        List<ObjectAnimator> list = this.Sj;
        if (list == null) {
            return;
        }
        for (final ObjectAnimator objectAnimator : list) {
            objectAnimator.start();
            if (this.sP.dNu() > 0.0d) {
                objectAnimator.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                        objectAnimator.pause();
                        Sj sj2 = EjP.this.new Sj(objectAnimator);
                        ScheduledFuture<?> scheduledFutureSj = com.bytedance.sdk.component.adexpress.EjP.EjP.Sj(sj2, (long) (EjP.this.sP.dNu() * 1000.0d), TimeUnit.MILLISECONDS);
                        sj2.Sj(scheduledFutureSj);
                        EjP.this.EjP.add(scheduledFutureSj);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Mts
    public void sP() {
        List<ObjectAnimator> list = this.Sj;
        if (list == null) {
            return;
        }
        for (ObjectAnimator objectAnimator : list) {
            objectAnimator.cancel();
            objectAnimator.removeAllUpdateListeners();
        }
        Iterator<ScheduledFuture<?>> it = this.EjP.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
    }
}
