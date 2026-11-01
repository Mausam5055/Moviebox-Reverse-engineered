package com.cloud.tmc.miniapp.widget.pulldownrefresh.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o extends OooO0o {
    public int OooO0O0 = 0;
    public int OooO0OO = 0;
    public Path OooO0Oo = new Path();

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (this.OooO0O0 != iWidth || this.OooO0OO != iHeight) {
            this.OooO0Oo.reset();
            float f11 = (iWidth * 30) / 225;
            float f12 = f11 * 0.70710677f;
            float f13 = f11 / 0.70710677f;
            float f14 = iWidth;
            float f15 = f14 / 2.0f;
            float f16 = iHeight;
            this.OooO0Oo.moveTo(f15, f16);
            float f17 = f16 / 2.0f;
            this.OooO0Oo.lineTo(0.0f, f17);
            float f18 = f17 - f12;
            this.OooO0Oo.lineTo(f12, f18);
            float f19 = f11 / 2.0f;
            float f20 = f15 - f19;
            float f21 = (f16 - f13) - f19;
            this.OooO0Oo.lineTo(f20, f21);
            this.OooO0Oo.lineTo(f20, 0.0f);
            float f22 = f15 + f19;
            this.OooO0Oo.lineTo(f22, 0.0f);
            this.OooO0Oo.lineTo(f22, f21);
            this.OooO0Oo.lineTo(f14 - f12, f18);
            this.OooO0Oo.lineTo(f14, f17);
            this.OooO0Oo.close();
            this.OooO0O0 = iWidth;
            this.OooO0OO = iHeight;
        }
        canvas.drawPath(this.OooO0Oo, this.OooO00o);
    }
}
