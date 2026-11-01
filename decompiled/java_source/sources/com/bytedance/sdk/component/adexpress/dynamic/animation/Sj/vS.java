package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends EjP {
    public vS(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    List<ObjectAnimator> Sj() {
        float f11 = this.TKC.getLayoutParams().width;
        this.TKC.setTranslationX(f11);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "translationX", f11, 0.0f).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.TKC, "alpha", 0.0f, 1.0f).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        arrayList.add(Sj(duration2));
        return arrayList;
    }
}
