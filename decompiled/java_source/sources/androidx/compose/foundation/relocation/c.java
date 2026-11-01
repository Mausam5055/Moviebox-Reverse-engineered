package androidx.compose.foundation.relocation;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.n1;
import y.i;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class c {
    public static final a b(androidx.compose.ui.node.f fVar) {
        if (!fVar.getNode().k1()) {
            return null;
        }
        a aVar = (a) n1.a(fVar, BringIntoViewResponderNode.f3159q);
        return aVar == null ? e.b(fVar) : aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i c(l lVar, l lVar2, i iVar) {
        return iVar.q(lVar.O(lVar2, false).j());
    }
}
