package com.bytedance.adsdk.sP.Sj.sP;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class aa extends Jcg<com.bytedance.adsdk.sP.Jcg.TKC> {
    private final com.bytedance.adsdk.sP.Jcg.TKC EjP;

    public aa(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.Jcg.TKC>> list) {
        super(list);
        this.EjP = new com.bytedance.adsdk.sP.Jcg.TKC();
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public com.bytedance.adsdk.sP.Jcg.TKC Sj(com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.Jcg.TKC> sj2, float f11) {
        com.bytedance.adsdk.sP.Jcg.TKC tkc;
        com.bytedance.adsdk.sP.Jcg.TKC tkc2 = sj2.Sj;
        if (tkc2 == null || (tkc = sj2.sP) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        com.bytedance.adsdk.sP.Jcg.TKC tkc3 = tkc2;
        com.bytedance.adsdk.sP.Jcg.TKC tkc4 = tkc;
        if (this.TKC == null) {
            this.EjP.Sj(com.bytedance.adsdk.sP.vS.HiB.Sj(tkc3.Sj(), tkc4.Sj(), f11), com.bytedance.adsdk.sP.vS.HiB.Sj(tkc3.sP(), tkc4.sP(), f11));
            return this.EjP;
        }
        sj2.Jcg.floatValue();
        EjP();
        Dq();
        throw null;
    }
}
