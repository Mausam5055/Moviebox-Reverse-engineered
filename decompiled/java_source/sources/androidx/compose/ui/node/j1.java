package androidx.compose.ui.node;

import androidx.compose.ui.semantics.SemanticsConfigurationKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class j1 {
    public static final boolean a(androidx.compose.ui.semantics.i iVar) {
        return SemanticsConfigurationKt.a(iVar, androidx.compose.ui.semantics.h.f5976a.j()) != null;
    }

    public static final void b(i1 i1Var) {
        g.m(i1Var).B0();
    }

    public static final y.i c(androidx.compose.ui.f.c cVar, boolean z10) {
        if (cVar.getNode().k1()) {
            return !z10 ? androidx.compose.ui.layout.m.b(g.h(cVar, s0.a(8))) : g.h(cVar, s0.a(8)).K2();
        }
        return y.i.f78475e.a();
    }
}
