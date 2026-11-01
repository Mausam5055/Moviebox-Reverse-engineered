package androidx.window.layout;

import android.graphics.Point;
import android.view.Display;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f15337a = new f();

    private f() {
    }

    public final void a(Display display, Point point) {
        Intrinsics.h(display, "display");
        Intrinsics.h(point, "point");
        display.getRealSize(point);
    }
}
