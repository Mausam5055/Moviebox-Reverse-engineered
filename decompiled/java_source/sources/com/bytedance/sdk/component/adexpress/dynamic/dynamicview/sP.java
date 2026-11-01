package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends GradientDrawable {
    protected Path Sj;
    private final Paint sP;

    public sP() {
        this.Sj = new Path();
        Paint paint = new Paint(1);
        this.sP = paint;
        paint.setColor(-1);
    }

    public sP(GradientDrawable.Orientation orientation, int[] iArr) {
        super(orientation, iArr);
        this.Sj = new Path();
        Paint paint = new Paint(1);
        this.sP = paint;
        paint.setColor(-1);
    }

    public void Sj(int i11, int i12, int i13, int i14) {
        this.Sj.addRect(i11, i12, i13, i14, Path.Direction.CW);
        invalidateSelf();
    }

    protected void Sj(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Path path = this.Sj;
        if (path == null || path.isEmpty()) {
            Sj(canvas);
            return;
        }
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.sP, 31);
        Sj(canvas);
        this.sP.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(this.Sj, this.sP);
        this.sP.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }
}
