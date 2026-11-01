package k0;

import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.text.MeasuredText;

/* JADX INFO: loaded from: classes2.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f66549a = new s();

    private s() {
    }

    public final void a(Canvas canvas) {
        canvas.disableZ();
    }

    public final void b(Canvas canvas, int i11, BlendMode blendMode) {
        canvas.drawColor(i11, blendMode);
    }

    public final void c(Canvas canvas, long j11) {
        canvas.drawColor(j11);
    }

    public final void d(Canvas canvas, long j11, BlendMode blendMode) {
        canvas.drawColor(j11, blendMode);
    }

    public final void e(Canvas canvas, RectF rectF, float f11, float f12, RectF rectF2, float f13, float f14, Paint paint) {
        canvas.drawDoubleRoundRect(rectF, f11, f12, rectF2, f13, f14, paint);
    }

    public final void f(Canvas canvas, RectF rectF, float[] fArr, RectF rectF2, float[] fArr2, Paint paint) {
        canvas.drawDoubleRoundRect(rectF, fArr, rectF2, fArr2, paint);
    }

    public final void g(Canvas canvas, RenderNode renderNode) {
        canvas.drawRenderNode(renderNode);
    }

    public final void h(Canvas canvas, MeasuredText measuredText, int i11, int i12, int i13, int i14, float f11, float f12, boolean z10, Paint paint) {
        canvas.drawTextRun(measuredText, i11, i12, i13, i14, f11, f12, z10, paint);
    }

    public final void i(Canvas canvas) {
        canvas.enableZ();
    }
}
