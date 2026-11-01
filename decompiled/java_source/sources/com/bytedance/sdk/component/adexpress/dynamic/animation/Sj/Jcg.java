package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends EjP {
    public Jcg(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> Sj() {
        this.TKC.setTag(2097610709, Integer.valueOf(this.sP.TKC()));
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "marqueeValue", 0.0f, 1.0f).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        return arrayList;
    }
}
