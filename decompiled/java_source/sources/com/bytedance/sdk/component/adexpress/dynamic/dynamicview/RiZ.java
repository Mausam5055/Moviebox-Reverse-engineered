package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public class RiZ extends Drawable {
    private RectF EjP;
    private Paint Sj;
    private int TKC;
    private int sP;

    public RiZ(int i11, int i12) {
        this.TKC = i11;
        this.sP = i12;
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setColor(0);
        this.Sj.setAntiAlias(true);
        this.Sj.setShadowLayer(i12, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
        this.Sj.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        RectF rectF = this.EjP;
        int i11 = this.TKC;
        canvas.drawRoundRect(rectF, i11, i11, this.Sj);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.Sj.setAlpha(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i11, int i12, int i13, int i14) {
        super.setBounds(i11, i12, i13, i14);
        int i15 = this.sP;
        this.EjP = new RectF(i11 + i15, i12 + i15, i13 - i15, i14 - i15);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.Sj.setColorFilter(colorFilter);
    }
}
