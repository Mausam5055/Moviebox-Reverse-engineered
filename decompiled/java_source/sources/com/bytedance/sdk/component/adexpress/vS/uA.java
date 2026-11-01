package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends View {
    private int Dq;
    private Paint EjP;
    private Paint HiB;
    private Paint Jcg;
    private int Sj;
    private final RectF TKC;
    private int sP;
    private int vS;

    public uA(Context context) {
        super(context);
        this.TKC = new RectF();
        Sj();
    }

    private void Sj() {
        Paint paint = new Paint();
        this.EjP = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.Jcg = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.HiB = paint3;
        paint3.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.TKC;
        int i11 = this.vS;
        canvas.drawRoundRect(rectF, i11, i11, this.HiB);
        RectF rectF2 = this.TKC;
        int i12 = this.vS;
        canvas.drawRoundRect(rectF2, i12, i12, this.EjP);
        int i13 = this.Sj;
        int i14 = this.sP;
        canvas.drawLine(i13 * 0.3f, i14 * 0.3f, i13 * 0.7f, i14 * 0.7f, this.Jcg);
        int i15 = this.Sj;
        int i16 = this.sP;
        canvas.drawLine(i15 * 0.7f, i16 * 0.3f, i15 * 0.3f, i16 * 0.7f, this.Jcg);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.Sj = i11;
        this.sP = i12;
        RectF rectF = this.TKC;
        int i15 = this.Dq;
        rectF.set(i15, i15, i11 - i15, i12 - i15);
    }

    public void setBgColor(int i11) {
        this.HiB.setStyle(Paint.Style.FILL);
        this.HiB.setColor(i11);
    }

    public void setDislikeColor(int i11) {
        this.Jcg.setColor(i11);
    }

    public void setDislikeWidth(int i11) {
        this.Jcg.setStrokeWidth(i11);
    }

    public void setRadius(int i11) {
        this.vS = i11;
    }

    public void setStrokeColor(int i11) {
        this.EjP.setStyle(Paint.Style.STROKE);
        this.EjP.setColor(i11);
    }

    public void setStrokeWidth(int i11) {
        this.EjP.setStrokeWidth(i11);
        this.Dq = i11;
    }
}
