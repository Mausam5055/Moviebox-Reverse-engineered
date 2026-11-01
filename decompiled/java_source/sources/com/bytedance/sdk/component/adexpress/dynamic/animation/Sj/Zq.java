package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Zq extends EjP {
    public Zq(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    List<ObjectAnimator> Sj() {
        float f11;
        float fSj = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.sP.vS());
        float fSj2 = com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(com.bytedance.sdk.component.adexpress.EjP.Sj(), this.sP.Jcg());
        float f12 = 0.0f;
        if ("reverse".equals(this.sP.uvD())) {
            f11 = fSj2;
            fSj2 = 0.0f;
            f12 = fSj;
            fSj = 0.0f;
        } else {
            f11 = 0.0f;
        }
        if (com.bytedance.sdk.component.adexpress.EjP.sP.Sj(this.TKC.getContext())) {
            fSj = -fSj;
            f12 = -f12;
        }
        this.TKC.setTranslationX(fSj);
        this.TKC.setTranslationY(fSj2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "translationX", fSj, f12).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.TKC, "translationY", fSj2, f11).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        arrayList.add(Sj(duration2));
        return arrayList;
    }
}
