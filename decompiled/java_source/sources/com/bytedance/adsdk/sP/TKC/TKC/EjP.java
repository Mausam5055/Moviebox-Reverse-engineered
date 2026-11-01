package com.bytedance.adsdk.sP.TKC.TKC;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends Sj {
    private final Paint Dq;
    protected final com.bytedance.adsdk.sP.TEQ Jcg;
    private final Rect TEQ;
    private com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private com.bytedance.adsdk.sP.Sj.sP.Sj<Bitmap, Bitmap> f20778aa;
    private final Rect uA;

    EjP(com.bytedance.adsdk.sP.uA uAVar, HiB hiB) {
        super(uAVar, hiB);
        this.Dq = new com.bytedance.adsdk.sP.Sj.Sj(3);
        this.uA = new Rect();
        this.TEQ = new Rect();
        this.Jcg = uAVar.vS(hiB.Jcg());
    }

    private Bitmap aa() {
        Bitmap bitmapJcg;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Bitmap, Bitmap> sj2 = this.f20778aa;
        if (sj2 != null && (bitmapJcg = sj2.Jcg()) != null) {
            return bitmapJcg;
        }
        Bitmap bitmapHiB = this.sP.HiB(this.TKC.Jcg());
        if (bitmapHiB != null) {
            return bitmapHiB;
        }
        com.bytedance.adsdk.sP.TEQ teq = this.Jcg;
        if (teq != null) {
            return teq.Ym();
        }
        return null;
    }

    @Override // com.bytedance.adsdk.sP.TKC.TKC.Sj, com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        super.Sj(rectF, matrix, z10);
        if (this.Jcg != null) {
            float fSj = com.bytedance.adsdk.sP.vS.vS.Sj();
            rectF.set(0.0f, 0.0f, this.Jcg.Sj() * fSj, this.Jcg.sP() * fSj);
            this.Sj.mapRect(rectF);
        }
    }

    @Override // com.bytedance.adsdk.sP.TKC.TKC.Sj
    public void sP(Canvas canvas, Matrix matrix, int i11) {
        super.sP(canvas, matrix, i11);
        Bitmap bitmapAa = aa();
        if (bitmapAa == null || bitmapAa.isRecycled() || this.Jcg == null) {
            return;
        }
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj();
        this.Dq.setAlpha(i11);
        com.bytedance.adsdk.sP.Sj.sP.Sj<ColorFilter, ColorFilter> sj2 = this.Ym;
        if (sj2 != null) {
            this.Dq.setColorFilter(sj2.Jcg());
        }
        canvas.save();
        canvas.concat(matrix);
        this.uA.set(0, 0, bitmapAa.getWidth(), bitmapAa.getHeight());
        if (this.sP.HiB()) {
            this.TEQ.set(0, 0, (int) (this.Jcg.Sj() * fSj), (int) (this.Jcg.sP() * fSj));
        } else {
            this.TEQ.set(0, 0, (int) (bitmapAa.getWidth() * fSj), (int) (bitmapAa.getHeight() * fSj));
        }
        canvas.drawBitmap(bitmapAa, this.uA, this.TEQ, this.Dq);
        canvas.restore();
    }
}
