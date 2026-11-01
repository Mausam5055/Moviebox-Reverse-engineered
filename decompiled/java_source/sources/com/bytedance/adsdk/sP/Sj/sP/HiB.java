package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends Jcg<com.bytedance.adsdk.sP.TKC.sP.EjP> {
    private final com.bytedance.adsdk.sP.TKC.sP.EjP EjP;

    public HiB(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP>> list) {
        super(list);
        com.bytedance.adsdk.sP.TKC.sP.EjP ejP = list.get(0).Sj;
        int iTKC = ejP != null ? ejP.TKC() : 0;
        this.EjP = new com.bytedance.adsdk.sP.TKC.sP.EjP(new float[iTKC], new int[iTKC]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public com.bytedance.adsdk.sP.TKC.sP.EjP Sj(com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP> sj2, float f11) {
        this.EjP.Sj(sj2.Sj, sj2.sP, f11);
        return this.EjP;
    }
}
