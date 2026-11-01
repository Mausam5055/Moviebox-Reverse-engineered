package com.bytedance.adsdk.ugeno.EjP;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements TKC {
    @Override // com.bytedance.adsdk.ugeno.EjP.TKC
    public List<sP> Sj() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new sP("update") { // from class: com.bytedance.adsdk.ugeno.EjP.HiB.1
            @Override // com.bytedance.adsdk.ugeno.EjP.sP
            public com.bytedance.adsdk.ugeno.EjP.sP.Sj Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
                return new com.bytedance.adsdk.ugeno.EjP.sP.EjP(tkc, str, sj2);
            }
        });
        arrayList.add(new sP("emit") { // from class: com.bytedance.adsdk.ugeno.EjP.HiB.2
            @Override // com.bytedance.adsdk.ugeno.EjP.sP
            public com.bytedance.adsdk.ugeno.EjP.sP.Sj Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
                return new com.bytedance.adsdk.ugeno.EjP.sP.sP(tkc, str, sj2);
            }
        });
        return arrayList;
    }
}
