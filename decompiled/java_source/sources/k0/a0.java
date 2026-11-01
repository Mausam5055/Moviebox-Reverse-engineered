package k0;

import android.graphics.Canvas;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.fonts.Font;

/* JADX INFO: loaded from: classes2.dex */
final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a0 f66469a = new a0();

    private a0() {
    }

    public final void a(Canvas canvas, int[] iArr, int i11, float[] fArr, int i12, int i13, Font font, Paint paint) {
        canvas.drawGlyphs(iArr, i11, fArr, i12, i13, font, paint);
    }

    public final void b(Canvas canvas, NinePatch ninePatch, Rect rect, Paint paint) {
        canvas.drawPatch(ninePatch, rect, paint);
    }

    public final void c(Canvas canvas, NinePatch ninePatch, RectF rectF, Paint paint) {
        canvas.drawPatch(ninePatch, rectF, paint);
    }
}
