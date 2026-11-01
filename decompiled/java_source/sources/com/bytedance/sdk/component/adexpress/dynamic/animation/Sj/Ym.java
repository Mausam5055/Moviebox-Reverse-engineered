package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Ym extends EjP {
    public Ym(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 == null || !(viewGroup2 instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB)) {
                return;
            }
            viewGroup2.setClipChildren(false);
            viewGroup2.setClipToPadding(false);
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 == null || !(viewGroup3 instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB)) {
                return;
            }
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Sj.EjP
    List<ObjectAnimator> Sj() {
        float f11;
        float fYm = (float) this.sP.Ym();
        float fAa = (float) this.sP.aa();
        String strUvD = this.sP.uvD();
        float f12 = 1.0f;
        if ("reverse".equals(strUvD) || "alternate-reverse".equals(strUvD)) {
            f11 = 1.0f;
        } else {
            f11 = fAa;
            fAa = 1.0f;
            f12 = fYm;
            fYm = 1.0f;
        }
        this.TKC.setTag(2097610710, this.sP.sP());
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "scaleX", fYm, f12).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.TKC, "scaleY", fAa, f11).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        arrayList.add(Sj(duration2));
        return arrayList;
    }
}
