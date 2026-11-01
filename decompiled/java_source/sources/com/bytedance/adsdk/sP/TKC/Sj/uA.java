package com.bytedance.adsdk.sP.TKC.Sj;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class uA implements Fmk<PointF, PointF> {
    private final sP Sj;
    private final sP sP;

    public uA(sP sPVar, sP sPVar2) {
        this.Sj = sPVar;
        this.sP = sPVar2;
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj() {
        return new com.bytedance.adsdk.sP.Sj.sP.sef(this.Sj.Sj(), this.sP.Sj());
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public List<com.bytedance.adsdk.sP.Jcg.Sj<PointF>> TKC() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public boolean sP() {
        return this.Sj.sP() && this.sP.sP();
    }
}
