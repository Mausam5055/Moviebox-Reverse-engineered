package com.bytedance.adsdk.sP.TKC.TKC;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends Sj {
    private final Paint Dq;
    private final RectF Jcg;
    private final Path TEQ;
    private final HiB Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> f20777aa;
    private final float[] uA;

    Dq(com.bytedance.adsdk.sP.uA uAVar, HiB hiB) {
        super(uAVar, hiB);
        this.Jcg = new RectF();
        com.bytedance.adsdk.sP.Sj.Sj sj2 = new com.bytedance.adsdk.sP.Sj.Sj();
        this.Dq = sj2;
        this.uA = new float[8];
        this.TEQ = new Path();
        this.Ym = hiB;
        sj2.setAlpha(0);
        sj2.setStyle(Paint.Style.FILL);
        sj2.setColor(hiB.uvD());
    }

    @Override // com.bytedance.adsdk.sP.TKC.TKC.Sj, com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        super.Sj(rectF, matrix, z10);
        this.Jcg.set(0.0f, 0.0f, this.Ym.TzV(), this.Ym.dNu());
        this.Sj.mapRect(this.Jcg);
        rectF.set(this.Jcg);
    }

    @Override // com.bytedance.adsdk.sP.TKC.TKC.Sj
    public void sP(Canvas canvas, Matrix matrix, int i11) {
        super.sP(canvas, matrix, i11);
        int iAlpha = Color.alpha(this.Ym.uvD());
        if (iAlpha == 0) {
            return;
        }
        int iIntValue = (int) ((i11 / 255.0f) * (((iAlpha / 255.0f) * (this.EjP.Sj() == null ? 100 : this.EjP.Sj().Jcg().intValue())) / 100.0f) * 255.0f);
        this.Dq.setAlpha(iIntValue);
        com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> sj2 = this.f20777aa;
        if (sj2 != null) {
            this.Dq.setColorFilter(sj2.Jcg());
        }
        if (iIntValue > 0) {
            float[] fArr = this.uA;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.Ym.TzV();
            float[] fArr2 = this.uA;
            fArr2[3] = 0.0f;
            fArr2[4] = this.Ym.TzV();
            this.uA[5] = this.Ym.dNu();
            float[] fArr3 = this.uA;
            fArr3[6] = 0.0f;
            fArr3[7] = this.Ym.dNu();
            matrix.mapPoints(this.uA);
            this.TEQ.reset();
            Path path = this.TEQ;
            float[] fArr4 = this.uA;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.TEQ;
            float[] fArr5 = this.uA;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.TEQ;
            float[] fArr6 = this.uA;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.TEQ;
            float[] fArr7 = this.uA;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.TEQ;
            float[] fArr8 = this.uA;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.TEQ.close();
            canvas.drawPath(this.TEQ, this.Dq);
        }
    }
}
