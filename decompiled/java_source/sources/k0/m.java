package k0;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f66546a = new m();

    private m() {
    }

    public final boolean a(Canvas canvas, Path path) {
        return canvas.clipOutPath(path);
    }

    public final boolean b(Canvas canvas, float f11, float f12, float f13, float f14) {
        return canvas.clipOutRect(f11, f12, f13, f14);
    }

    public final boolean c(Canvas canvas, int i11, int i12, int i13, int i14) {
        return canvas.clipOutRect(i11, i12, i13, i14);
    }

    public final boolean d(Canvas canvas, Rect rect) {
        return canvas.clipOutRect(rect);
    }

    public final boolean e(Canvas canvas, RectF rectF) {
        return canvas.clipOutRect(rectF);
    }
}
