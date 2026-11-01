package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends EjP {
    public HiB(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    private void EjP(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.sP.sU())).setDuration((int) (this.sP.TEQ() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        list.add(Sj(duration));
    }

    private void Sj(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.sP.sU())).setDuration(((int) (this.sP.TEQ() * 1000.0d)) / 2);
        duration.setInterpolator(new LinearInterpolator());
        duration.setRepeatMode(2);
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2 = this.sP;
        sj2.vS(sj2.Zq() * 2);
        list.add(Sj(duration));
    }

    private void TKC(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.sP.sU())).setDuration((int) (this.sP.TEQ() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.HiB.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HiB.this.TKC.setTranslationY(0.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(Sj(duration));
    }

    private void sP(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.sP.sU())).setDuration((int) (this.sP.TEQ() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.HiB.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HiB.this.TKC.setTranslationY(0.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(Sj(duration));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    List<ObjectAnimator> Sj() {
        byte b11;
        ArrayList arrayList = new ArrayList();
        switch (this.sP.dx()) {
            case "both":
                b11 = 0;
                break;
            case "none":
                b11 = 3;
                break;
            case "forwards":
                b11 = 1;
                break;
            case "backwards":
                b11 = 2;
                break;
            default:
                b11 = -1;
                break;
        }
        if (b11 == 0) {
            Sj(arrayList);
        } else if (b11 == 1) {
            EjP(arrayList);
        } else if (b11 != 2) {
            TKC(arrayList);
        } else {
            sP(arrayList);
        }
        return arrayList;
    }
}
