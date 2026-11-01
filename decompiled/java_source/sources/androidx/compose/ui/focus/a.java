package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final Object a(FocusTargetNode focusTargetNode, int i11, Function1 function1) {
        androidx.compose.ui.f.c cVarG;
        androidx.compose.ui.layout.d dVarJ1;
        int iC;
        q0 q0VarE0;
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = focusTargetNode.getNode().h1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        loop0: while (true) {
            if (layoutNodeM == null) {
                cVarG = null;
                break;
            }
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        cVarG = cVarH1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i12 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i12++;
                                        if (i12 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar == null) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar.b(cVarE1);
                                        }
                                    }
                                }
                                if (i12 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar);
                        }
                    }
                    cVarH1 = cVarH1.h1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarH1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
        if ((focusTargetNode2 != null && Intrinsics.c(focusTargetNode2.J1(), focusTargetNode.J1())) || (dVarJ1 = focusTargetNode.J1()) == null) {
            return null;
        }
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.h())) {
            iC = androidx.compose.ui.layout.d.b.f5168a.a();
        } else if (b.l(i11, aVar.a())) {
            iC = androidx.compose.ui.layout.d.b.f5168a.d();
        } else if (b.l(i11, aVar.d())) {
            iC = androidx.compose.ui.layout.d.b.f5168a.e();
        } else if (b.l(i11, aVar.g())) {
            iC = androidx.compose.ui.layout.d.b.f5168a.f();
        } else if (b.l(i11, aVar.e())) {
            iC = androidx.compose.ui.layout.d.b.f5168a.b();
        } else {
            if (!b.l(i11, aVar.f())) {
                throw new IllegalStateException("Unsupported direction for beyond bounds layout");
            }
            iC = androidx.compose.ui.layout.d.b.f5168a.c();
        }
        return dVarJ1.a(iC, function1);
    }
}
