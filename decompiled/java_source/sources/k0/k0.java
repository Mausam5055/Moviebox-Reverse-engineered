package k0;

import android.graphics.Paint;
import android.graphics.Rect;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes2.dex */
final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k0 f66545a = new k0();

    private k0() {
    }

    @JvmStatic
    public static final void a(Paint paint, CharSequence charSequence, int i11, int i12, Rect rect) {
        paint.getTextBounds(charSequence, i11, i12, rect);
    }
}
