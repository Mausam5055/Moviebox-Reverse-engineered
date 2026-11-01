package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.y0;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {
    /* JADX INFO: Access modifiers changed from: private */
    public static final v b(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNodeA1;
        y0 y0VarG0;
        i focusOwner;
        NodeCoordinator nodeCoordinatorC1 = focusTargetNode.getNode().c1();
        if (nodeCoordinatorC1 == null || (layoutNodeA1 = nodeCoordinatorC1.a1()) == null || (y0VarG0 = layoutNodeA1.g0()) == null || (focusOwner = y0VarG0.getFocusOwner()) == null) {
            return null;
        }
        return focusOwner.c();
    }

    public static final void c(FocusTargetNode focusTargetNode) {
        androidx.compose.ui.node.g.n(focusTargetNode).getFocusOwner().g(focusTargetNode);
    }

    public static final v d(FocusTargetNode focusTargetNode) {
        return androidx.compose.ui.node.g.n(focusTargetNode).getFocusOwner().c();
    }
}
