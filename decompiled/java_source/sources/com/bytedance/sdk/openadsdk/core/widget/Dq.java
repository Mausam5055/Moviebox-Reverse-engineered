package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class Dq extends View {
    private static final int[] Sj = {Color.parseColor("#1AFFFFFF"), Color.parseColor("#4DFFFFFF"), Color.parseColor("#99FFFFFF")};
    private int Dq;
    private final ArrayList<Sj> EjP;
    private final Paint HiB;
    private int Jcg;
    private final RectF TKC;
    private final RectF sP;
    private int uA;
    private final Paint vS;

    private static final class Sj {
        float EjP;
        public Paint Sj;
        float TKC;
        public float sP;

        public Sj(Paint paint, float f11, float f12, float f13) {
            this.Sj = paint;
            this.sP = f11;
            this.TKC = f12;
            this.EjP = f13;
        }
    }

    public Dq(Context context) {
        super(context);
        this.sP = new RectF();
        this.TKC = new RectF();
        this.EjP = new ArrayList<>();
        this.vS = new Paint();
        Paint paint = new Paint();
        this.HiB = paint;
        paint.setColor(Color.parseColor("#D9D9D9"));
    }

    private void Sj() {
        if (this.Jcg <= 0) {
            return;
        }
        this.TKC.right = Math.max(this.uA, (int) (((this.Dq * 1.0f) / 100.0f) * getWidth()));
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.sP;
        int i11 = this.Jcg;
        canvas.drawRoundRect(rectF, i11, i11, this.HiB);
        RectF rectF2 = this.TKC;
        int i12 = this.Jcg;
        canvas.drawRoundRect(rectF2, i12, i12, this.vS);
        int iSave = canvas.save();
        canvas.translate(this.TKC.right - this.uA, 0.0f);
        for (Sj sj2 : this.EjP) {
            canvas.drawCircle(sj2.TKC, sj2.EjP, sj2.sP, sj2.Sj);
        }
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        int i15 = i12 / 2;
        this.Jcg = i15;
        this.uA = i15 * 5;
        float f11 = i11;
        float f12 = i12;
        this.sP.set(0.0f, 0.0f, f11, f12);
        this.TKC.set(0.0f, 0.0f, 0.0f, f12);
        this.vS.setShader(new LinearGradient(0.0f, 0.0f, f11, f12, new int[]{Color.parseColor("#90C0FF"), Color.parseColor("#196BE4")}, (float[]) null, Shader.TileMode.CLAMP));
        this.EjP.clear();
        float f13 = this.Jcg / 4.0f;
        for (int i16 : Sj) {
            Paint paint = new Paint();
            paint.setColor(i16);
            this.EjP.add(new Sj(paint, this.Jcg / 2.0f, f13, f12 / 2.0f));
            f13 += (this.Jcg / 2.0f) * 3.0f;
        }
        Sj();
    }

    public void setProgress(int i11) {
        int i12 = this.Dq;
        if (i12 == i11) {
            return;
        }
        if (i11 < 0) {
            i11 = 0;
        } else if (i11 > 100) {
            i11 = 100;
        }
        if (i12 == i11) {
            return;
        }
        this.Dq = i11;
        Sj();
    }
}
