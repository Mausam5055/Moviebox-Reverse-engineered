package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends EjP {
    public Dq(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> Sj() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "rippleValue", 0.0f, 1.0f).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ((ViewGroup) this.TKC.getParent()).setClipChildren(false);
        ((ViewGroup) this.TKC.getParent().getParent()).setClipChildren(false);
        ((ViewGroup) this.TKC.getParent().getParent().getParent()).setClipChildren(false);
        this.TKC.setTag(2097610712, this.sP.Dq());
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        return arrayList;
    }
}
