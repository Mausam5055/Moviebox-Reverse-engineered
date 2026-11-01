package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.PointF;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class sef extends Sj<PointF, PointF> {
    private final Sj<Float, Float> Dq;
    protected com.bytedance.adsdk.sP.Jcg.sP<Float> EjP;
    protected com.bytedance.adsdk.sP.Jcg.sP<Float> HiB;
    private final PointF Jcg;
    private final Sj<Float, Float> uA;
    private final PointF vS;

    public sef(Sj<Float, Float> sj2, Sj<Float, Float> sj3) {
        super(Collections.emptyList());
        this.vS = new PointF();
        this.Jcg = new PointF();
        this.Dq = sj2;
        this.uA = sj3;
        Sj(Dq());
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    public void Sj(float f11) {
        this.Dq.Sj(f11);
        this.uA.Sj(f11);
        this.vS.set(this.Dq.Jcg().floatValue(), this.uA.Jcg().floatValue());
        for (int i11 = 0; i11 < this.Sj.size(); i11++) {
            this.Sj.get(i11).Sj();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public PointF Sj(com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2, float f11) {
        if (this.EjP != null && this.Dq.TKC() != null) {
            this.Dq.HiB();
            throw null;
        }
        if (this.HiB != null && this.uA.TKC() != null) {
            this.uA.HiB();
            throw null;
        }
        this.Jcg.set(this.vS.x, 0.0f);
        PointF pointF = this.Jcg;
        pointF.set(pointF.x, this.vS.y);
        return this.Jcg;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: uA, reason: merged with bridge method [inline-methods] */
    public PointF Jcg() {
        return Sj(null, 0.0f);
    }
}
