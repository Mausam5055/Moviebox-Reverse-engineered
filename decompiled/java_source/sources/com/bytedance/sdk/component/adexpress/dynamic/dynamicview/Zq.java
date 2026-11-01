package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class Zq extends vS {
    String Sj;
    com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq sP;

    public Zq(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2, String str) {
        super(context, dynamicRootView, dq2);
        this.Sj = str;
        this.sP = dq2;
        com.bytedance.sdk.component.adexpress.vS.TEQ lottieView = getLottieView();
        if (lottieView != null) {
            addView(lottieView, getWidgetLayoutParams());
        }
    }

    private com.bytedance.sdk.component.adexpress.vS.TEQ getLottieView() {
        com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2 = this.Fmk;
        if (dq2 == null || dq2.TEQ() == null || this.Ym == null || TextUtils.isEmpty(this.Sj)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.dynamic.EjP.vS vSVarHiB = this.Fmk.TEQ().HiB();
        String strKb = vSVarHiB != null ? vSVarHiB.kb() : "";
        if (TextUtils.isEmpty(strKb)) {
            return null;
        }
        String str = this.Sj + "static/lotties/" + strKb + ".json";
        com.bytedance.sdk.component.adexpress.vS.TEQ teq = new com.bytedance.sdk.component.adexpress.vS.TEQ(this.Ym);
        teq.setImageLottieTosPath(str);
        teq.Dq();
        return teq;
    }
}
