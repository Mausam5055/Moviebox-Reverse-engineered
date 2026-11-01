package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes4.dex */
public class RectangleIndicator extends BaseIndicator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    RectF f41340d;

    public RectangleIndicator(Context context) {
        this(context, null);
    }

    public RectangleIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RectangleIndicator(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41340d = new RectF();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iD = this.f41332a.d();
        if (iD <= 1) {
            return;
        }
        int i11 = 0;
        float fE = 0.0f;
        while (i11 < iD) {
            this.f41333b.setColor(this.f41332a.a() == i11 ? this.f41332a.j() : this.f41332a.g());
            int iK = this.f41332a.a() == i11 ? this.f41332a.k() : this.f41332a.h();
            this.f41340d.set(fE, 0.0f, iK + fE, this.f41332a.c());
            fE += iK + this.f41332a.e();
            canvas.drawRoundRect(this.f41340d, this.f41332a.i(), this.f41332a.i(), this.f41333b);
            i11++;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int iD = this.f41332a.d();
        if (iD <= 1) {
            return;
        }
        int i13 = iD - 1;
        setMeasuredDimension((this.f41332a.e() * i13) + (this.f41332a.h() * i13) + this.f41332a.k(), this.f41332a.c());
    }
}
