package com.bytedance.sdk.component.adexpress.vS;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends zR {
    private TextView Sj;
    private AnimatorSet TKC;
    private View sP;

    public Jcg(Context context) {
        super(context);
        this.TKC = new AnimatorSet();
        sP(context);
    }

    private void EjP() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sP, "translationY", 0.0f, com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(getContext(), -3.0f));
        objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.sP, "alpha", 1.0f, 0.8f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setInterpolator(new CycleInterpolator(1.0f));
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.TKC.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.TKC.setDuration(1000L);
        this.TKC.start();
    }

    private void sP(Context context) {
        View viewSj = com.bytedance.sdk.component.adexpress.TKC.Sj.Sj(context);
        this.sP = viewSj;
        addView(viewSj);
        setClipChildren(false);
        this.Sj = (TextView) findViewById(2097610748);
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.zR
    public void Sj() {
        EjP();
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.zR
    protected void Sj(Context context) {
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.zR
    public void sP() {
        this.TKC.cancel();
    }

    public void setButtonText(String str) {
        if (this.Sj == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.Sj.setText(str);
    }
}
