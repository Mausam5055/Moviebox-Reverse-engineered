package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class aa extends EjP {
    public aa(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> Sj() {
        int i11;
        int i12;
        this.TKC.setTag(2097610711, Integer.valueOf(this.sP.EjP()));
        View view = this.TKC;
        if (view == null || !com.bytedance.sdk.component.adexpress.EjP.sP.Sj(view.getContext())) {
            i11 = 0;
            i12 = 1;
        } else {
            i12 = 0;
            i11 = 1;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "shineValue", i11, i12).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        return arrayList;
    }
}
