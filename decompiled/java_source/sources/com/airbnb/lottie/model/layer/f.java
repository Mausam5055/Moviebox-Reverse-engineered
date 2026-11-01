package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.p0;
import n4.q;

/* JADX INFO: loaded from: classes2.dex */
public class f extends a {
    private final RectF E;
    private final Paint F;
    private final float[] G;
    private final Path H;
    private final Layer I;
    private n4.a J;
    private n4.a K;

    f(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.E = new RectF();
        l4.a aVar = new l4.a();
        this.F = aVar;
        this.G = new float[8];
        this.H = new Path();
        this.I = layer;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(layer.p());
    }

    @Override // com.airbnb.lottie.model.layer.a, p4.e
    public void b(Object obj, w4.c cVar) {
        super.b(obj, cVar);
        if (obj == p0.K) {
            if (cVar == null) {
                this.J = null;
                return;
            } else {
                this.J = new q(cVar);
                return;
            }
        }
        if (obj == p0.f17903a) {
            if (cVar != null) {
                this.K = new q(cVar);
            } else {
                this.K = null;
                this.F.setColor(this.I.p());
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        super.f(rectF, matrix, z10);
        this.E.set(0.0f, 0.0f, this.I.r(), this.I.q());
        this.f17872o.mapRect(this.E);
        rectF.set(this.E);
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void t(Canvas canvas, Matrix matrix, int i11) {
        int iAlpha = Color.alpha(this.I.p());
        if (iAlpha == 0) {
            return;
        }
        n4.a aVar = this.K;
        Integer num = aVar == null ? null : (Integer) aVar.h();
        if (num != null) {
            this.F.setColor(num.intValue());
        } else {
            this.F.setColor(this.I.p());
        }
        int iIntValue = (int) ((i11 / 255.0f) * (((iAlpha / 255.0f) * (this.f17881x.h() == null ? 100 : ((Integer) this.f17881x.h().h()).intValue())) / 100.0f) * 255.0f);
        this.F.setAlpha(iIntValue);
        n4.a aVar2 = this.J;
        if (aVar2 != null) {
            this.F.setColorFilter((ColorFilter) aVar2.h());
        }
        if (iIntValue > 0) {
            float[] fArr = this.G;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.I.r();
            float[] fArr2 = this.G;
            fArr2[3] = 0.0f;
            fArr2[4] = this.I.r();
            this.G[5] = this.I.q();
            float[] fArr3 = this.G;
            fArr3[6] = 0.0f;
            fArr3[7] = this.I.q();
            matrix.mapPoints(this.G);
            this.H.reset();
            Path path = this.H;
            float[] fArr4 = this.G;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.H;
            float[] fArr5 = this.G;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.H;
            float[] fArr6 = this.G;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.H;
            float[] fArr7 = this.G;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.H;
            float[] fArr8 = this.G;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.H.close();
            canvas.drawPath(this.H, this.F);
        }
    }
}
