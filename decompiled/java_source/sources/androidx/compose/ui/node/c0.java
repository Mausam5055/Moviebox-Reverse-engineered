package androidx.compose.ui.node;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c0 extends AlignmentLines {
    public c0(a aVar) {
        super(aVar, null);
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected long d(NodeCoordinator nodeCoordinator, long j11) {
        return NodeCoordinator.J2(nodeCoordinator, j11, false, 2, null);
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected Map e(NodeCoordinator nodeCoordinator) {
        return nodeCoordinator.b1().v();
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    protected int i(NodeCoordinator nodeCoordinator, androidx.compose.ui.layout.a aVar) {
        return nodeCoordinator.T0(aVar);
    }
}
