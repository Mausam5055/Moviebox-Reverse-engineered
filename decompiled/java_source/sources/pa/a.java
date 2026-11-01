package pa;

import android.graphics.Canvas;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: pa.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes4.dex */
    public interface InterfaceC0882a {
        void a(Canvas canvas);
    }

    public static int a(Canvas canvas, float f11, float f12, float f13, float f14, int i11) {
        return canvas.saveLayerAlpha(f11, f12, f13, f14, i11);
    }
}
