package androidx.work;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g0 {
    public static final Object a(f0 f0Var, String label, Function0 block) {
        Intrinsics.h(f0Var, "<this>");
        Intrinsics.h(label, "label");
        Intrinsics.h(block, "block");
        boolean zIsEnabled = f0Var.isEnabled();
        if (zIsEnabled) {
            try {
                f0Var.a(label);
            } finally {
                InlineMarker.b(1);
                if (zIsEnabled) {
                    f0Var.d();
                }
                InlineMarker.a(1);
            }
        }
        return block.invoke();
    }
}
