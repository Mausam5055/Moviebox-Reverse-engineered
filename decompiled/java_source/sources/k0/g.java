package k0;

import android.graphics.Canvas;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes2.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f66537a = new g();

    private g() {
    }

    public final void a(Canvas canvas, CharSequence charSequence, int i11, int i12, int i13, int i14, float f11, float f12, boolean z10, Paint paint) {
        canvas.drawTextRun(charSequence, i11, i12, i13, i14, f11, f12, z10, paint);
    }

    public final void b(Canvas canvas, char[] cArr, int i11, int i12, int i13, int i14, float f11, float f12, boolean z10, Paint paint) {
        canvas.drawTextRun(cArr, i11, i12, i13, i14, f11, f12, z10, paint);
    }
}
