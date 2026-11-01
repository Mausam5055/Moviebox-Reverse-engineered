package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends sP {
    private final Bitmap TKC;
    private final Rect sP = new Rect();
    private final Paint EjP = new Paint(1);

    public Sj(Bitmap bitmap, sP sPVar) {
        this.TKC = bitmap;
        if (sPVar != null) {
            this.Sj = sPVar.Sj;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.sP
    protected void Sj(Canvas canvas) {
        canvas.drawBitmap(this.TKC, this.sP, getBounds(), this.EjP);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int iHeight = rect.height();
        int iWidth = rect.width();
        int width = this.TKC.getWidth();
        int height = this.TKC.getHeight();
        this.sP.set(0, 0, width, height);
        if (height >= iHeight && width >= iWidth) {
            if (width > iWidth) {
                Rect rect2 = this.sP;
                int i11 = (width - iWidth) / 2;
                rect2.left = i11;
                rect2.right = i11 + iWidth;
            }
            if (height > iHeight) {
                Rect rect3 = this.sP;
                int i12 = (height - iHeight) / 2;
                rect3.top = i12;
                rect3.bottom = i12 + iHeight;
                return;
            }
            return;
        }
        float f11 = iHeight;
        float f12 = f11 * 1.0f;
        float f13 = height;
        float f14 = f12 / f13;
        float f15 = iWidth;
        float f16 = 1.0f * f15;
        float f17 = width;
        if (Math.max(f14, f16 / f17) > f14) {
            int i13 = (int) ((f12 / f15) * f17);
            Rect rect4 = this.sP;
            int i14 = (height - i13) / 2;
            rect4.top = i14;
            rect4.bottom = i14 + i13;
            return;
        }
        int i15 = (int) ((f16 / f11) * f13);
        Rect rect5 = this.sP;
        int i16 = (width - i15) / 2;
        rect5.left = i16;
        rect5.right = i16 + i15;
    }
}
