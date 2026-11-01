package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f5004a = new k();

    private k() {
    }

    public final long a(MotionEvent motionEvent, int i11) {
        return y.h.a(motionEvent.getRawX(i11), motionEvent.getRawY(i11));
    }
}
