package com.bytedance.adsdk.sP.TKC.Sj;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements Fmk<PointF, PointF> {
    private final List<com.bytedance.adsdk.sP.Jcg.Sj<PointF>> Sj;

    public HiB(List<com.bytedance.adsdk.sP.Jcg.Sj<PointF>> list) {
        this.Sj = list;
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj() {
        return this.Sj.get(0).HiB() ? new com.bytedance.adsdk.sP.Sj.sP.Ym(this.Sj) : new com.bytedance.adsdk.sP.Sj.sP.TEQ(this.Sj);
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public List<com.bytedance.adsdk.sP.Jcg.Sj<PointF>> TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public boolean sP() {
        return this.Sj.size() == 1 && this.Sj.get(0).HiB();
    }
}
