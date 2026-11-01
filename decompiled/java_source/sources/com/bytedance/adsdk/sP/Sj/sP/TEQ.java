package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ extends Jcg<PointF> {
    private final PointF EjP;
    private final float[] HiB;
    private uA Jcg;
    private final PathMeasure vS;

    public TEQ(List<? extends com.bytedance.adsdk.sP.Jcg.Sj<PointF>> list) {
        super(list);
        this.EjP = new PointF();
        this.HiB = new float[2];
        this.vS = new PathMeasure();
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public PointF Sj(com.bytedance.adsdk.sP.Jcg.Sj<PointF> sj2, float f11) {
        uA uAVar = (uA) sj2;
        Path pathSP = uAVar.sP();
        if (pathSP == null) {
            return sj2.Sj;
        }
        if (this.TKC != null) {
            uAVar.Jcg.floatValue();
            EjP();
            Dq();
            throw null;
        }
        if (this.Jcg != uAVar) {
            this.vS.setPath(pathSP, false);
            this.Jcg = uAVar;
        }
        PathMeasure pathMeasure = this.vS;
        pathMeasure.getPosTan(f11 * pathMeasure.getLength(), this.HiB, null);
        PointF pointF = this.EjP;
        float[] fArr = this.HiB;
        pointF.set(fArr[0], fArr[1]);
        return this.EjP;
    }
}
