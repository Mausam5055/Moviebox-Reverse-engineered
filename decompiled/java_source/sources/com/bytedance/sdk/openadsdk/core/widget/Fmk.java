package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"AppCompatCustomView"})
public class Fmk extends com.bytedance.sdk.openadsdk.core.HiB.EjP {
    private Paint Sj;
    private RectF sP;

    public Fmk(Context context) {
        super(context);
        Sj();
    }

    private void Sj() {
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.Sj.setColor(Color.parseColor("#99333333"));
        this.Sj.setAntiAlias(true);
        this.Sj.setStrokeWidth(0.0f);
        this.sP = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.sP;
        canvas.drawRoundRect(rectF, rectF.right / 2.0f, rectF.bottom / 2.0f, this.Sj);
        super.onDraw(canvas);
    }

    @Override // com.bytedance.sdk.openadsdk.core.HiB.EjP, android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (this.sP.right == getMeasuredWidth() && this.sP.bottom == getMeasuredHeight()) {
            return;
        }
        this.sP.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
    }
}
