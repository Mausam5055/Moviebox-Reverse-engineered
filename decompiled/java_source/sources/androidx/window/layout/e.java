package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f15336a = new e();

    private e() {
    }

    public final Rect a(Activity activity) {
        Intrinsics.h(activity, "activity");
        Rect bounds = activity.getWindowManager().getCurrentWindowMetrics().getBounds();
        Intrinsics.g(bounds, "activity.windowManager.currentWindowMetrics.bounds");
        return bounds;
    }
}
