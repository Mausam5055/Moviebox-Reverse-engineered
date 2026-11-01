package k0;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes2.dex */
final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f66550a = new w();

    private w() {
    }

    public final boolean a(Canvas canvas, float f11, float f12, float f13, float f14) {
        return canvas.quickReject(f11, f12, f13, f14);
    }

    public final boolean b(Canvas canvas, Path path) {
        return canvas.quickReject(path);
    }

    public final boolean c(Canvas canvas, RectF rectF) {
        return canvas.quickReject(rectF);
    }
}
