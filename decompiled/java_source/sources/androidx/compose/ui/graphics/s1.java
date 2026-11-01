package androidx.compose.ui.graphics;

import android.graphics.Canvas;

/* JADX INFO: loaded from: classes.dex */
final class s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s1 f4636a = new s1();

    private s1() {
    }

    public final void a(Canvas canvas, boolean z10) {
        if (z10) {
            canvas.enableZ();
        } else {
            canvas.disableZ();
        }
    }
}
