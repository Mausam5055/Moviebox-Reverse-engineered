package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends Jcg<Float> {
    public EjP(List<com.bytedance.adsdk.sP.Jcg.Sj<Float>> list) {
        super(list);
    }

    float TKC(com.bytedance.adsdk.sP.Jcg.Sj<Float> sj2, float f11) {
        if (sj2.Sj == null || sj2.sP == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.TKC == null) {
            return com.bytedance.adsdk.sP.vS.HiB.Sj(sj2.vS(), sj2.Jcg(), f11);
        }
        sj2.Jcg.floatValue();
        EjP();
        Dq();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public Float Sj(com.bytedance.adsdk.sP.Jcg.Sj<Float> sj2, float f11) {
        return Float.valueOf(TKC(sj2, f11));
    }

    public float uA() {
        return TKC(TKC(), HiB());
    }
}
