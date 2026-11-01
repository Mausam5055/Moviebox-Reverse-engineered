package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends com.bytedance.sdk.openadsdk.core.HiB.EjP {
    public TKC(Context context) {
        super(context);
        Sj();
    }

    private void Sj() {
        setVisibility(8);
        setId(com.bytedance.sdk.openadsdk.utils.Zq.Ss);
    }

    public void Sj(int i11, sU sUVar) {
        if (sUVar.Ph() || (sUVar.hzV() && sUVar.aa())) {
            FPG.Sj((View) this, 0);
            com.bytedance.sdk.openadsdk.TzV.sP.Sj().Sj((int) FPG.Sj(getContext(), i11, true), this, sUVar);
        }
    }
}
