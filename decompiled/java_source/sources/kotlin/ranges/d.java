package kotlin.ranges;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class d {
    public static final void a(boolean z10, Number step) {
        Intrinsics.h(step, "step");
        if (z10) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }

    public static ClosedFloatingPointRange b(float f11, float f12) {
        return new b(f11, f12);
    }

    public static OpenEndRange c(float f11, float f12) {
        return new c(f11, f12);
    }
}
