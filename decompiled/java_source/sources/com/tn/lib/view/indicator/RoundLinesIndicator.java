package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class RoundLinesIndicator extends BaseIndicator {
    public RoundLinesIndicator(Context context) {
        this(context, null);
    }

    public RoundLinesIndicator(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundLinesIndicator(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41333b.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f41332a.d() <= 1) {
            return;
        }
        this.f41333b.setColor(this.f41332a.g());
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, canvas.getWidth(), this.f41332a.c()), this.f41332a.i(), this.f41332a.i(), this.f41333b);
        this.f41333b.setColor(this.f41332a.j());
        int iA = this.f41332a.a() * this.f41332a.k();
        canvas.drawRoundRect(new RectF(iA, 0.0f, iA + this.f41332a.k(), this.f41332a.c()), this.f41332a.i(), this.f41332a.i(), this.f41333b);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int iD = this.f41332a.d();
        if (iD <= 1) {
            return;
        }
        setMeasuredDimension(this.f41332a.k() * iD, this.f41332a.c());
    }
}
