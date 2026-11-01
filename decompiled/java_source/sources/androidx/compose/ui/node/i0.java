package androidx.compose.ui.node;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends AlignmentLines {
    public i0(a aVar) {
        super(aVar, null);
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected long d(NodeCoordinator nodeCoordinator, long j11) {
        j0 j0VarU1 = nodeCoordinator.U1();
        Intrinsics.e(j0VarU1);
        long jE1 = j0VarU1.e1();
        return y.g.r(y.h.a(o0.p.h(jE1), o0.p.i(jE1)), j11);
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected Map e(NodeCoordinator nodeCoordinator) {
        j0 j0VarU1 = nodeCoordinator.U1();
        Intrinsics.e(j0VarU1);
        return j0VarU1.b1().v();
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected int i(NodeCoordinator nodeCoordinator, androidx.compose.ui.layout.a aVar) {
        j0 j0VarU1 = nodeCoordinator.U1();
        Intrinsics.e(j0VarU1);
        return j0VarU1.T0(aVar);
    }
}
