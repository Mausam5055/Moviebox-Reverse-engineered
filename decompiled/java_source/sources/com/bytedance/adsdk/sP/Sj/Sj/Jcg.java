package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg implements HiB, Ym, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj {
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Dq;
    private final com.bytedance.adsdk.sP.TKC.TKC.Sj EjP;
    private com.bytedance.adsdk.sP.Sj.sP.TKC Fmk;
    private final String HiB;
    private final List<Fmk> Jcg;
    float Sj;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> TEQ;
    private final Paint TKC;
    private final com.bytedance.adsdk.sP.uA Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> f20772aa;
    private final Path sP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> uA;
    private final boolean vS;

    public Jcg(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.Zq zq2) {
        Path path = new Path();
        this.sP = path;
        this.TKC = new com.bytedance.adsdk.sP.Sj.Sj(1);
        this.Jcg = new ArrayList();
        this.EjP = sj2;
        this.HiB = zq2.Sj();
        this.vS = zq2.HiB();
        this.Ym = uAVar;
        if (sj2.TEQ() != null) {
            com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj = sj2.TEQ().Sj().Sj();
            this.f20772aa = Sj;
            Sj.Sj(this);
            sj2.Sj(this.f20772aa);
        }
        if (sj2.Ym() != null) {
            this.Fmk = new com.bytedance.adsdk.sP.Sj.sP.TKC(this, sj2, sj2.Ym());
        }
        if (zq2.sP() == null || zq2.TKC() == null) {
            this.Dq = null;
            this.uA = null;
            return;
        }
        path.setFillType(zq2.EjP());
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj2 = zq2.sP().Sj();
        this.Dq = Sj2;
        Sj2.Sj(this);
        sj2.Sj(Sj2);
        com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> Sj3 = zq2.TKC().Sj();
        this.uA = Sj3;
        Sj3.Sj(this);
        sj2.Sj(Sj3);
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        this.Ym.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(Canvas canvas, Matrix matrix, int i11) {
        if (this.vS) {
            return;
        }
        com.bytedance.adsdk.sP.HiB.Sj("FillContent#draw");
        this.TKC.setColor((com.bytedance.adsdk.sP.vS.HiB.Sj((int) ((((i11 / 255.0f) * this.uA.Jcg().intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((com.bytedance.adsdk.sP.Sj.sP.sP) this.Dq).uA() & 16777215));
        com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> sj2 = this.TEQ;
        if (sj2 != null) {
            this.TKC.setColorFilter(sj2.Jcg());
        }
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> sj3 = this.f20772aa;
        if (sj3 != null) {
            float fFloatValue = sj3.Jcg().floatValue();
            if (fFloatValue == 0.0f) {
                this.TKC.setMaskFilter(null);
            } else if (fFloatValue != this.Sj) {
                this.TKC.setMaskFilter(this.EjP.sP(fFloatValue));
            }
            this.Sj = fFloatValue;
        }
        com.bytedance.adsdk.sP.Sj.sP.TKC tkc = this.Fmk;
        if (tkc != null) {
            tkc.Sj(this.TKC);
        }
        this.sP.reset();
        for (int i12 = 0; i12 < this.Jcg.size(); i12++) {
            this.sP.addPath(this.Jcg.get(i12).EjP(), matrix);
        }
        canvas.drawPath(this.sP, this.TKC);
        com.bytedance.adsdk.sP.HiB.sP("FillContent#draw");
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        this.sP.reset();
        for (int i11 = 0; i11 < this.Jcg.size(); i11++) {
            this.sP.addPath(this.Jcg.get(i11).EjP(), matrix);
        }
        this.sP.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.TKC
    public void Sj(List<TKC> list, List<TKC> list2) {
        for (int i11 = 0; i11 < list2.size(); i11++) {
            TKC tkc = list2.get(i11);
            if (tkc instanceof Fmk) {
                this.Jcg.add((Fmk) tkc);
            }
        }
    }
}
