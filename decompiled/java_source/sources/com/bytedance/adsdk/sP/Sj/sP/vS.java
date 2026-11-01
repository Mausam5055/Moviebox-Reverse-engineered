package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends Jcg<Integer> {
    public vS(List<com.bytedance.adsdk.sP.Jcg.Sj<Integer>> list) {
        super(list);
    }

    int TKC(com.bytedance.adsdk.sP.Jcg.Sj<Integer> sj2, float f11) {
        if (sj2.Sj == null || sj2.sP == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.TKC == null) {
            return com.bytedance.adsdk.sP.vS.HiB.Sj(sj2.Dq(), sj2.uA(), f11);
        }
        sj2.Jcg.floatValue();
        EjP();
        Dq();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public Integer Sj(com.bytedance.adsdk.sP.Jcg.Sj<Integer> sj2, float f11) {
        return Integer.valueOf(TKC(sj2, f11));
    }

    public int uA() {
        return TKC(TKC(), HiB());
    }
}
