package com.bytedance.adsdk.ugeno.core;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {
    private View EjP;
    private int HiB;
    private String Jcg;
    Paint Sj;
    private AnimatorSet TKC = new AnimatorSet();
    private Sj sP;
    private int vS;

    public Jcg(View view, Sj sj2) {
        this.EjP = view;
        this.sP = sj2;
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setAntiAlias(true);
    }

    public void Sj() {
        ArrayList arrayList = new ArrayList();
        List<Sj.C0203Sj> listTKC = this.sP.TKC();
        if (listTKC == null || listTKC.size() <= 0) {
            return;
        }
        for (Sj.C0203Sj c0203Sj : listTKC) {
            if (c0203Sj != null) {
                ObjectAnimator objectAnimator = new ObjectAnimator();
                objectAnimator.setDuration(c0203Sj.Sj());
                if (TextUtils.equals(c0203Sj.HiB(), "translateX")) {
                    objectAnimator.setPropertyName("translationX");
                } else if (TextUtils.equals(c0203Sj.HiB(), "translateY")) {
                    objectAnimator.setPropertyName("translationY");
                } else {
                    objectAnimator.setPropertyName(c0203Sj.HiB());
                }
                objectAnimator.setStartDelay(c0203Sj.EjP());
                objectAnimator.setTarget(this.EjP);
                if (TextUtils.equals(c0203Sj.HiB(), "backgroundColor")) {
                    objectAnimator.setIntValues((int) c0203Sj.vS(), (int) c0203Sj.Jcg());
                    StringBuilder sb2 = new StringBuilder("playAnimation: from = ");
                    sb2.append(c0203Sj.vS());
                    sb2.append("; to=");
                    sb2.append(c0203Sj.Jcg());
                } else {
                    objectAnimator.setFloatValues(c0203Sj.vS(), c0203Sj.Jcg());
                }
                int iSP = (int) this.sP.sP();
                if (iSP != 0) {
                    objectAnimator.setRepeatCount(iSP);
                } else {
                    objectAnimator.setRepeatCount((int) c0203Sj.sP());
                }
                if (TextUtils.equals(c0203Sj.HiB(), "backgroundColor")) {
                    objectAnimator.setEvaluator(new ArgbEvaluator());
                }
                String strVS = this.sP.vS();
                if (TextUtils.isEmpty(strVS)) {
                    strVS = c0203Sj.TKC();
                }
                if (TextUtils.equals(strVS, "reverse")) {
                    objectAnimator.setRepeatMode(2);
                } else {
                    objectAnimator.setRepeatMode(1);
                }
                if (c0203Sj.Dq() != null && c0203Sj.Dq().length > 0) {
                    objectAnimator.setFloatValues(c0203Sj.Dq());
                }
                if (TextUtils.equals(c0203Sj.HiB(), "rotationX")) {
                    this.EjP.post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.core.Jcg.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Jcg.this.EjP.setPivotX(Jcg.this.EjP.getWidth() / 2.0f);
                            Jcg.this.EjP.setPivotY(Jcg.this.EjP.getHeight());
                        }
                    });
                }
                if (TextUtils.equals(c0203Sj.HiB(), "ripple")) {
                    this.Jcg = c0203Sj.TEQ();
                }
                String strUA = c0203Sj.uA();
                strUA.hashCode();
                switch (strUA) {
                    case "accelerate":
                        objectAnimator.setInterpolator(new AccelerateInterpolator());
                        break;
                    case "decelerate":
                        objectAnimator.setInterpolator(new DecelerateInterpolator());
                        break;
                    case "linear":
                    case "standard":
                        objectAnimator.setInterpolator(new LinearInterpolator());
                        break;
                    case "accelerateDecelerate":
                        objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
                        break;
                }
                arrayList.add(objectAnimator);
            }
        }
        if (this.sP.EjP() != 0) {
            this.TKC.setDuration(this.sP.EjP());
        }
        this.TKC.setStartDelay(this.sP.HiB());
        if (TextUtils.equals(this.sP.Sj(), "sequentially")) {
            this.TKC.playSequentially(arrayList);
        } else {
            this.TKC.playTogether(arrayList);
        }
        this.TKC.start();
    }

    public void Sj(int i11, int i12) {
        this.HiB = i11 / 2;
        this.vS = i12 / 2;
    }

    public void Sj(Canvas canvas, IAnimation iAnimation) {
        try {
            if (iAnimation.getRipple() == 0.0f || TextUtils.isEmpty(this.Jcg)) {
                return;
            }
            this.Sj.setColor(com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(this.Jcg));
            this.Sj.setAlpha(90);
            ((ViewGroup) this.EjP.getParent()).setClipChildren(true);
            int i11 = this.HiB;
            int i12 = this.vS;
            canvas.drawCircle(i11, i12, Math.min(i11, i12) * 2 * iAnimation.getRipple(), this.Sj);
        } catch (Throwable th2) {
            new StringBuilder("ripple animation error ").append(th2.getMessage());
        }
    }

    public void sP() {
        AnimatorSet animatorSet = this.TKC;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }
}
