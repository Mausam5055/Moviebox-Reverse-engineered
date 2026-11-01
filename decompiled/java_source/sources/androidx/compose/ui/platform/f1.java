package androidx.compose.ui.platform;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
final class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f1 f5780a = new f1();

    private f1() {
    }

    public final boolean a(MotionEvent motionEvent, int i11) {
        float rawX = motionEvent.getRawX(i11);
        if (!Float.isInfinite(rawX) && !Float.isNaN(rawX)) {
            float rawY = motionEvent.getRawY(i11);
            if (!Float.isInfinite(rawY) && !Float.isNaN(rawY)) {
                return true;
            }
        }
        return false;
    }
}
