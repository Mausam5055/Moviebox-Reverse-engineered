package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sef extends EjP {
    public sef(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    List<ObjectAnimator> Sj() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "rotation", 0.0f, this.sP.HiB(), 0.0f, this.sP.HiB(), 0.0f).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        return arrayList;
    }
}
