package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {
    public static final androidx.compose.ui.node.j0 a(androidx.compose.ui.node.j0 j0Var) {
        LayoutNode layoutNodeA1 = j0Var.a1();
        while (true) {
            LayoutNode layoutNodeH0 = layoutNodeA1.h0();
            if ((layoutNodeH0 != null ? layoutNodeH0.V() : null) == null) {
                androidx.compose.ui.node.j0 j0VarU1 = layoutNodeA1.f0().U1();
                Intrinsics.e(j0VarU1);
                return j0VarU1;
            }
            LayoutNode layoutNodeH1 = layoutNodeA1.h0();
            LayoutNode layoutNodeV = layoutNodeH1 != null ? layoutNodeH1.V() : null;
            Intrinsics.e(layoutNodeV);
            if (layoutNodeV.H0()) {
                layoutNodeA1 = layoutNodeA1.h0();
                Intrinsics.e(layoutNodeA1);
            } else {
                LayoutNode layoutNodeH2 = layoutNodeA1.h0();
                Intrinsics.e(layoutNodeH2);
                layoutNodeA1 = layoutNodeH2.V();
                Intrinsics.e(layoutNodeA1);
            }
        }
    }
}
