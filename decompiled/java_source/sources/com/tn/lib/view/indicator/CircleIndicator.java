package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes4.dex */
public class CircleIndicator extends BaseIndicator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f41335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f41336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f41337f;

    public CircleIndicator(Context context) {
        this(context, null);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41335d = this.f41332a.h() / 2;
        this.f41336e = this.f41332a.k() / 2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iD = this.f41332a.d();
        if (iD <= 1) {
            return;
        }
        float fE = 0.0f;
        int i11 = 0;
        while (i11 < iD) {
            boolean z10 = this.f41332a.a() == i11;
            Paint paint = this.f41333b;
            a aVar = this.f41332a;
            paint.setColor(z10 ? aVar.j() : aVar.g());
            a aVar2 = this.f41332a;
            int iK = z10 ? aVar2.k() : aVar2.h();
            float f11 = z10 ? this.f41336e : this.f41335d;
            canvas.drawCircle(fE + f11, this.f41337f, f11, this.f41333b);
            fE += iK + this.f41332a.e();
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
        this.f41335d = this.f41332a.h() / 2;
        int iK = this.f41332a.k() / 2;
        this.f41336e = iK;
        this.f41337f = Math.max(iK, this.f41335d);
        int i13 = iD - 1;
        setMeasuredDimension((this.f41332a.e() * i13) + this.f41332a.k() + (this.f41332a.h() * i13), Math.max(this.f41332a.h(), this.f41332a.k()));
    }
}
