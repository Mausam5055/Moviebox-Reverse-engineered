package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends Sj {
    private final RectF Dq;
    private final String EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Fmk;
    private final boolean HiB;
    private final LongSparseArray<RadialGradient> Jcg;
    private final int TEQ;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> f20775aa;
    private com.bytedance.adsdk.sP.Sj.sP.dNu sef;
    private final com.bytedance.adsdk.sP.TKC.sP.Jcg uA;
    private final LongSparseArray<LinearGradient> vS;

    public uA(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.vS vSVar) {
        super(uAVar, sj2, vSVar.Dq().Sj(), vSVar.uA().Sj(), vSVar.aa(), vSVar.EjP(), vSVar.Jcg(), vSVar.TEQ(), vSVar.Ym());
        this.vS = new LongSparseArray<>();
        this.Jcg = new LongSparseArray<>();
        this.Dq = new RectF();
        this.EjP = vSVar.Sj();
        this.uA = vSVar.sP();
        this.HiB = vSVar.Fmk();
        this.TEQ = (int) (uAVar.wE().HiB() / 32.0f);
        com.bytedance.adsdk.sP.Sj.sP.Sj<com.bytedance.adsdk.sP.TKC.sP.EjP, com.bytedance.adsdk.sP.TKC.sP.EjP> Sj = vSVar.TKC().Sj();
        this.Ym = Sj;
        Sj.Sj(this);
        sj2.Sj(Sj);
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj2 = vSVar.HiB().Sj();
        this.f20775aa = Sj2;
        Sj2.Sj(this);
        sj2.Sj(Sj2);
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj3 = vSVar.vS().Sj();
        this.Fmk = Sj3;
        Sj3.Sj(this);
        sj2.Sj(Sj3);
    }

    private int EjP() {
        int iRound = Math.round(this.f20775aa.Dq() * this.TEQ);
        int iRound2 = Math.round(this.Fmk.Dq() * this.TEQ);
        int iRound3 = Math.round(this.Ym.Dq() * this.TEQ);
        int i11 = iRound != 0 ? iRound * 527 : 17;
        if (iRound2 != 0) {
            i11 = i11 * 31 * iRound2;
        }
        return iRound3 != 0 ? i11 * 31 * iRound3 : i11;
    }

    private int[] Sj(int[] iArr) {
        if (this.sef == null) {
            return iArr;
        }
        throw null;
    }

    private RadialGradient TKC() {
        long jEjP = EjP();
        RadialGradient radialGradient = this.Jcg.get(jEjP);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFJcg = this.f20775aa.Jcg();
        PointF pointFJcg2 = this.Fmk.Jcg();
        com.bytedance.adsdk.sP.TKC.sP.EjP ejPJcg = this.Ym.Jcg();
        int[] iArrSj = Sj(ejPJcg.sP());
        float[] fArrSj = ejPJcg.Sj();
        float f11 = pointFJcg.x;
        float f12 = pointFJcg.y;
        RadialGradient radialGradient2 = new RadialGradient(f11, f12, (float) Math.hypot(pointFJcg2.x - f11, pointFJcg2.y - f12), iArrSj, fArrSj, Shader.TileMode.CLAMP);
        this.Jcg.put(jEjP, radialGradient2);
        return radialGradient2;
    }

    private LinearGradient sP() {
        long jEjP = EjP();
        LinearGradient linearGradient = this.vS.get(jEjP);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFJcg = this.f20775aa.Jcg();
        PointF pointFJcg2 = this.Fmk.Jcg();
        com.bytedance.adsdk.sP.TKC.sP.EjP ejPJcg = this.Ym.Jcg();
        LinearGradient linearGradient2 = new LinearGradient(pointFJcg.x, pointFJcg.y, pointFJcg2.x, pointFJcg2.y, Sj(ejPJcg.sP()), ejPJcg.Sj(), Shader.TileMode.CLAMP);
        this.vS.put(jEjP, linearGradient2);
        return linearGradient2;
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.Sj, com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(Canvas canvas, Matrix matrix, int i11) {
        if (this.HiB) {
            return;
        }
        Sj(this.Dq, matrix, false);
        Shader shaderSP = this.uA == com.bytedance.adsdk.sP.TKC.sP.Jcg.LINEAR ? sP() : TKC();
        shaderSP.setLocalMatrix(matrix);
        this.sP.setShader(shaderSP);
        super.Sj(canvas, matrix, i11);
    }
}
