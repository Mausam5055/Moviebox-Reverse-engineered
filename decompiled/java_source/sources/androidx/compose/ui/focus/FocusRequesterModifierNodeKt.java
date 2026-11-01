package androidx.compose.ui.focus;

import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class FocusRequesterModifierNodeKt {
    public static final boolean a(q qVar) {
        int iA = s0.a(1024);
        androidx.compose.ui.f.c node = qVar.getNode();
        androidx.compose.runtime.collection.b bVar = null;
        while (node != null) {
            if (node instanceof FocusTargetNode) {
                FocusTargetNode focusTargetNode = (FocusTargetNode) node;
                return focusTargetNode.I1().t() ? FocusTransactionsKt.j(focusTargetNode) : TwoDimensionalFocusSearchKt.k(focusTargetNode, b.f4237b.b(), new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusRequesterModifierNodeKt$requestFocus$1$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(FocusTargetNode focusTargetNode2) {
                        return Boolean.valueOf(FocusTransactionsKt.j(focusTargetNode2));
                    }
                });
            }
            if ((node.f1() & iA) != 0 && (node instanceof androidx.compose.ui.node.i)) {
                int i11 = 0;
                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) node).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                    if ((cVarE1.f1() & iA) != 0) {
                        i11++;
                        if (i11 == 1) {
                            node = cVarE1;
                        } else {
                            if (bVar == null) {
                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                            }
                            if (node != null) {
                                bVar.b(node);
                                node = null;
                            }
                            bVar.b(cVarE1);
                        }
                    }
                }
                if (i11 == 1) {
                }
            }
            node = androidx.compose.ui.node.g.g(bVar);
        }
        if (!qVar.getNode().k1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = qVar.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar2, qVar.getNode());
        } else {
            bVar2.b(cVarB1);
        }
        while (bVar2.q()) {
            androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar2.v(bVar2.n() - 1);
            if ((cVarG.a1() & iA) == 0) {
                androidx.compose.ui.node.g.c(bVar2, cVarG);
            } else {
                while (cVarG != null) {
                    if ((cVarG.f1() & iA) != 0) {
                        androidx.compose.runtime.collection.b bVar3 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                return focusTargetNode2.I1().t() ? FocusTransactionsKt.j(focusTargetNode2) : TwoDimensionalFocusSearchKt.k(focusTargetNode2, b.f4237b.b(), new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusRequesterModifierNodeKt$requestFocus$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Boolean invoke(FocusTargetNode focusTargetNode3) {
                                        return Boolean.valueOf(FocusTransactionsKt.j(focusTargetNode3));
                                    }
                                });
                            }
                            if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i12 = 0;
                                for (androidx.compose.ui.f.c cVarE2 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE2 != null; cVarE2 = cVarE2.b1()) {
                                    if ((cVarE2.f1() & iA) != 0) {
                                        i12++;
                                        if (i12 == 1) {
                                            cVarG = cVarE2;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarE2);
                                        }
                                    }
                                }
                                if (i12 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar3);
                        }
                        break;
                    }
                    cVarG = cVarG.b1();
                }
            }
        }
        return false;
    }
}
