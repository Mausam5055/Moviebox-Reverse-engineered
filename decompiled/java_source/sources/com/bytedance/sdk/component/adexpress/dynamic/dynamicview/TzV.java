package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;

/* JADX INFO: loaded from: classes2.dex */
public class TzV extends vS {
    public sP Sj;

    public TzV(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    protected GradientDrawable Sj(GradientDrawable.Orientation orientation, int[] iArr) {
        sP sPVar = new sP(orientation, iArr);
        this.Sj = sPVar;
        return sPVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    protected sP Sj(Bitmap bitmap) {
        Sj sj2 = new Sj(bitmap, this.Sj);
        this.Sj = sj2;
        return sj2;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB
    protected GradientDrawable getDrawable() {
        sP sPVar = new sP();
        this.Sj = sPVar;
        return sPVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.WMZ
    public boolean uA() {
        return super.uA();
    }
}
