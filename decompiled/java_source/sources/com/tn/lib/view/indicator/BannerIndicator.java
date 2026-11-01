package com.tn.lib.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.blankj.utilcode.util.a0;

/* JADX INFO: loaded from: classes4.dex */
public class BannerIndicator extends BaseIndicator {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f41331d;

    public BannerIndicator(Context context) {
        this(context, null);
    }

    public BannerIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BannerIndicator(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41331d = a0.a(16.0f);
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
            if (z10) {
                float fH = this.f41332a.h();
                float f11 = this.f41331d;
                canvas.drawRoundRect(fE, 0.0f, fE + iK, fH, f11, f11, this.f41333b);
            } else {
                float fH2 = this.f41332a.h() / 2;
                canvas.drawCircle(fE + fH2, fH2, fH2, this.f41333b);
            }
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
        int i13 = iD - 1;
        setMeasuredDimension((this.f41332a.e() * i13) + this.f41332a.k() + (this.f41332a.h() * i13), this.f41332a.h());
    }
}
