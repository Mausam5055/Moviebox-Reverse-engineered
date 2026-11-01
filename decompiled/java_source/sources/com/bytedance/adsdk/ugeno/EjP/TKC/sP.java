package com.bytedance.adsdk.ugeno.EjP.TKC;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bytedance.adsdk.ugeno.EjP.vS;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends com.bytedance.adsdk.ugeno.EjP.sP.Sj {
    public sP(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
        super(tkc, str, sj2);
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.sP.Sj
    public void Sj() {
        if (this.TKC == null) {
            return;
        }
        int iSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.vS.get(RequestParameters.POSITION), 0);
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.TKC;
        com.bytedance.adsdk.ugeno.sP.TKC tkcSP = tkc.sP(tkc);
        if (tkcSP == null) {
            return;
        }
        com.bytedance.adsdk.ugeno.sP.TKC tkcEjP = tkcSP.EjP("SwiperView");
        if (tkcEjP instanceof com.bytedance.adsdk.ugeno.sP) {
            ((com.bytedance.adsdk.ugeno.sP) tkcEjP).Sj(iSj);
        }
    }
}
