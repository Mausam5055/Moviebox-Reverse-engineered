package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class uvD implements Fmk, HiB, TEQ, Ym, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj {
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Dq;
    private final com.bytedance.adsdk.sP.TKC.TKC.Sj EjP;
    private final String HiB;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Jcg;
    private EjP TEQ;
    private final com.bytedance.adsdk.sP.uA TKC;
    private final com.bytedance.adsdk.sP.Sj.sP.uvD uA;
    private final boolean vS;
    private final Matrix Sj = new Matrix();
    private final Path sP = new Path();

    public uvD(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.aa aaVar) {
        this.TKC = uAVar;
        this.EjP = sj2;
        this.HiB = aaVar.Sj();
        this.vS = aaVar.HiB();
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj = aaVar.sP().Sj();
        this.Jcg = Sj;
        sj2.Sj(Sj);
        Sj.Sj(this);
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj2 = aaVar.TKC().Sj();
        this.Dq = Sj2;
        sj2.Sj(Sj2);
        Sj2.Sj(this);
        com.bytedance.adsdk.sP.Sj.sP.uvD uvdTEQ = aaVar.EjP().TEQ();
        this.uA = uvdTEQ;
        uvdTEQ.Sj(sj2);
        uvdTEQ.Sj(this);
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.Fmk
    public Path EjP() {
        Path pathEjP = this.TEQ.EjP();
        this.sP.reset();
        float fFloatValue = this.Jcg.Jcg().floatValue();
        float fFloatValue2 = this.Dq.Jcg().floatValue();
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.Sj.set(this.uA.sP(i11 + fFloatValue2));
            this.sP.addPath(pathEjP, this.Sj);
        }
        return this.sP;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        this.TKC.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(Canvas canvas, Matrix matrix, int i11) {
        float fFloatValue = this.Jcg.Jcg().floatValue();
        float fFloatValue2 = this.Dq.Jcg().floatValue();
        float fFloatValue3 = this.uA.sP().Jcg().floatValue() / 100.0f;
        float fFloatValue4 = this.uA.TKC().Jcg().floatValue() / 100.0f;
        for (int i12 = ((int) fFloatValue) - 1; i12 >= 0; i12--) {
            this.Sj.set(matrix);
            float f11 = i12;
            this.Sj.preConcat(this.uA.sP(f11 + fFloatValue2));
            this.TEQ.Sj(canvas, this.Sj, (int) (i11 * com.bytedance.adsdk.sP.vS.HiB.Sj(fFloatValue3, fFloatValue4, f11 / fFloatValue)));
        }
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        this.TEQ.Sj(rectF, matrix, z10);
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.TKC
    public void Sj(List<TKC> list, List<TKC> list2) {
        this.TEQ.Sj(list, list2);
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.TEQ
    public void Sj(ListIterator<TKC> listIterator) {
        if (this.TEQ != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.TEQ = new EjP(this.TKC, this.EjP, "Repeater", this.vS, arrayList, null);
    }
}
