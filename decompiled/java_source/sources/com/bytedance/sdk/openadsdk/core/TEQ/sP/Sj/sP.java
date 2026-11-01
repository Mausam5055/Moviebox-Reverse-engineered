package com.bytedance.sdk.openadsdk.core.TEQ.sP.Sj;

import android.content.Context;
import com.bytedance.adsdk.sP.vS;
import com.bytedance.adsdk.ugeno.EjP;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends vS {
    private EjP Sj;

    public sP(Context context) {
        super(context);
    }

    public void Sj(EjP ejP) {
        this.Sj = ejP;
    }

    @Override // com.bytedance.adsdk.sP.vS, android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override // com.bytedance.adsdk.sP.vS, android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.Sj;
        if (ejP != null) {
            ejP.Dq();
        }
    }
}
