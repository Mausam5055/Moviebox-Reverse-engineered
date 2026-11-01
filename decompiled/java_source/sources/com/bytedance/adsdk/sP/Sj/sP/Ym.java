package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Ym extends Jcg<PointF> {
    private final PointF EjP;

    public Ym(List<com.bytedance.adsdk.sP.Jcg.Sj<PointF>> list) {
        super(list);
        this.EjP = new PointF();
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public PointF Sj(com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2, float f11) {
        return Sj(sj2, f11, f11, f11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public PointF Sj(com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2, float f11, float f12, float f13) {
        PointF pointF;
        PointF pointF2 = sj2.Sj;
        if (pointF2 == null || (pointF = sj2.sP) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF3 = pointF2;
        PointF pointF4 = pointF;
        if (this.TKC != null) {
            sj2.Jcg.floatValue();
            EjP();
            Dq();
            throw null;
        }
        PointF pointF5 = this.EjP;
        float f14 = pointF3.x;
        float f15 = f14 + (f12 * (pointF4.x - f14));
        float f16 = pointF3.y;
        pointF5.set(f15, f16 + (f13 * (pointF4.y - f16)));
        return this.EjP;
    }
}
