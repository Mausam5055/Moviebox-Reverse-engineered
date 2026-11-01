package com.bytedance.sdk.openadsdk.sef;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class Ym extends View {
    private final Paint Sj;
    private float TKC;
    private float sP;

    public Ym(Context context) {
        super(context);
        setBackgroundColor(Color.parseColor("#8A8A8A"));
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f11 = this.TKC;
        if (f11 > 0.0f) {
            float f12 = this.sP;
            canvas.drawLine(0.0f, f12, f11, f12, this.Sj);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        float f11 = i12;
        this.sP = (1.0f * f11) / 2.0f;
        this.Sj.setStrokeWidth(f11);
    }

    public void setProgress(float f11) {
        this.TKC = getWidth() * f11;
        invalidate();
    }
}
