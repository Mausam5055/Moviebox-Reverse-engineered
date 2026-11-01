package k0;

import android.text.Layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c1 f66498a = new c1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Layout.Alignment f66499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Layout.Alignment f66500c;

    static {
        Layout.Alignment[] alignmentArrValues = Layout.Alignment.values();
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Layout.Alignment alignment2 = alignment;
        for (Layout.Alignment alignment3 : alignmentArrValues) {
            if (Intrinsics.c(alignment3.name(), "ALIGN_LEFT")) {
                alignment = alignment3;
            } else if (Intrinsics.c(alignment3.name(), "ALIGN_RIGHT")) {
                alignment2 = alignment3;
            }
        }
        f66499b = alignment;
        f66500c = alignment2;
    }

    private c1() {
    }

    public final Layout.Alignment a(int i11) {
        if (i11 == 0) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (i11 == 1) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (i11 == 2) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (i11 != 3) {
            return i11 != 4 ? Layout.Alignment.ALIGN_NORMAL : f66500c;
        }
        return f66499b;
    }
}
