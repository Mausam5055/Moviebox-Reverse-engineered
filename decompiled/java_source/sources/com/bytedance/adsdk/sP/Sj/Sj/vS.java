package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class vS implements Fmk, Ym, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj {
    private boolean Dq;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, PointF> EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, PointF> HiB;
    private final com.bytedance.adsdk.sP.uA TKC;
    private final String sP;
    private final com.bytedance.adsdk.sP.TKC.sP.sP vS;
    private final Path Sj = new Path();
    private final sP Jcg = new sP();

    public vS(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.sP sPVar) {
        this.sP = sPVar.Sj();
        this.TKC = uAVar;
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj = sPVar.TKC().Sj();
        this.EjP = Sj;
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj2 = sPVar.sP().Sj();
        this.HiB = Sj2;
        this.vS = sPVar;
        sj2.Sj(Sj);
        sj2.Sj(Sj2);
        Sj.Sj(this);
        Sj2.Sj(this);
    }

    private void sP() {
        this.Dq = false;
        this.TKC.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.Fmk
    public Path EjP() {
        if (this.Dq) {
            return this.Sj;
        }
        this.Sj.reset();
        if (this.vS.HiB()) {
            this.Dq = true;
            return this.Sj;
        }
        PointF pointFJcg = this.EjP.Jcg();
        float f11 = pointFJcg.x / 2.0f;
        float f12 = pointFJcg.y / 2.0f;
        float f13 = f11 * 0.55228f;
        float f14 = 0.55228f * f12;
        this.Sj.reset();
        if (this.vS.EjP()) {
            float f15 = -f12;
            this.Sj.moveTo(0.0f, f15);
            float f16 = 0.0f - f13;
            float f17 = -f11;
            float f18 = 0.0f - f14;
            this.Sj.cubicTo(f16, f15, f17, f18, f17, 0.0f);
            float f19 = f14 + 0.0f;
            this.Sj.cubicTo(f17, f19, f16, f12, 0.0f, f12);
            float f20 = f13 + 0.0f;
            this.Sj.cubicTo(f20, f12, f11, f19, f11, 0.0f);
            this.Sj.cubicTo(f11, f18, f20, f15, 0.0f, f15);
        } else {
            float f21 = -f12;
            this.Sj.moveTo(0.0f, f21);
            float f22 = f13 + 0.0f;
            float f23 = 0.0f - f14;
            this.Sj.cubicTo(f22, f21, f11, f23, f11, 0.0f);
            float f24 = f14 + 0.0f;
            this.Sj.cubicTo(f11, f24, f22, f12, 0.0f, f12);
            float f25 = 0.0f - f13;
            float f26 = -f11;
            this.Sj.cubicTo(f25, f12, f26, f24, f26, 0.0f);
            this.Sj.cubicTo(f26, f23, f25, f21, 0.0f, f21);
        }
        PointF pointFJcg2 = this.HiB.Jcg();
        this.Sj.offset(pointFJcg2.x, pointFJcg2.y);
        this.Sj.close();
        this.Jcg.Sj(this.Sj);
        this.Dq = true;
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        sP();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.TKC
    public void Sj(List<TKC> list, List<TKC> list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            TKC tkc = list.get(i11);
            if (tkc instanceof dx) {
                dx dxVar = (dx) tkc;
                if (dxVar.sP() == com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj.SIMULTANEOUSLY) {
                    this.Jcg.Sj(dxVar);
                    dxVar.Sj(this);
                }
            }
        }
    }
}
