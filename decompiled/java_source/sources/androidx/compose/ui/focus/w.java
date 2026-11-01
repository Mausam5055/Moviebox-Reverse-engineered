package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class w {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4256a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f4257b;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f4256a = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            f4257b = iArr2;
        }
    }

    public static final FocusRequester a(FocusTargetNode focusTargetNode, int i11, LayoutDirection layoutDirection) {
        FocusRequester focusRequesterP;
        k kVarI1 = focusTargetNode.I1();
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.e())) {
            return kVarI1.k();
        }
        if (b.l(i11, aVar.f())) {
            return kVarI1.u();
        }
        if (b.l(i11, aVar.h())) {
            return kVarI1.n();
        }
        if (b.l(i11, aVar.a())) {
            return kVarI1.q();
        }
        if (b.l(i11, aVar.d())) {
            int i12 = a.f4256a[layoutDirection.ordinal()];
            if (i12 == 1) {
                focusRequesterP = kVarI1.j();
            } else {
                if (i12 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                focusRequesterP = kVarI1.p();
            }
            if (focusRequesterP == FocusRequester.f4223b.b()) {
                focusRequesterP = null;
            }
            if (focusRequesterP == null) {
                return kVarI1.i();
            }
        } else {
            if (!b.l(i11, aVar.g())) {
                if (b.l(i11, aVar.b())) {
                    return (FocusRequester) kVarI1.s().invoke(b.i(i11));
                }
                if (b.l(i11, aVar.c())) {
                    return (FocusRequester) kVarI1.o().invoke(b.i(i11));
                }
                throw new IllegalStateException("invalid FocusDirection");
            }
            int i13 = a.f4256a[layoutDirection.ordinal()];
            if (i13 == 1) {
                focusRequesterP = kVarI1.p();
            } else {
                if (i13 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                focusRequesterP = kVarI1.j();
            }
            if (focusRequesterP == FocusRequester.f4223b.b()) {
                focusRequesterP = null;
            }
            if (focusRequesterP == null) {
                return kVarI1.m();
            }
        }
        return focusRequesterP;
    }

    public static final FocusTargetNode b(FocusTargetNode focusTargetNode) {
        int i11 = a.f4257b[focusTargetNode.K1().ordinal()];
        if (i11 != 1) {
            if (i11 == 2) {
                int iA = s0.a(1024);
                if (!focusTargetNode.getNode().k1()) {
                    throw new IllegalStateException("visitChildren called on an unattached node");
                }
                androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                androidx.compose.ui.f.c cVarB1 = focusTargetNode.getNode().b1();
                if (cVarB1 == null) {
                    androidx.compose.ui.node.g.c(bVar, focusTargetNode.getNode());
                } else {
                    bVar.b(cVarB1);
                }
                while (bVar.q()) {
                    androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
                    if ((cVarG.a1() & iA) == 0) {
                        androidx.compose.ui.node.g.c(bVar, cVarG);
                    } else {
                        while (cVarG != null) {
                            if ((cVarG.f1() & iA) != 0) {
                                androidx.compose.runtime.collection.b bVar2 = null;
                                while (cVarG != null) {
                                    if (cVarG instanceof FocusTargetNode) {
                                        FocusTargetNode focusTargetNodeB = b((FocusTargetNode) cVarG);
                                        if (focusTargetNodeB != null) {
                                            return focusTargetNodeB;
                                        }
                                    } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                        int i12 = 0;
                                        for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                            if ((cVarE1.f1() & iA) != 0) {
                                                i12++;
                                                if (i12 == 1) {
                                                    cVarG = cVarE1;
                                                } else {
                                                    if (bVar2 == null) {
                                                        bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                    }
                                                    if (cVarG != null) {
                                                        bVar2.b(cVarG);
                                                        cVarG = null;
                                                    }
                                                    bVar2.b(cVarE1);
                                                }
                                            }
                                        }
                                        if (i12 == 1) {
                                        }
                                    }
                                    cVarG = androidx.compose.ui.node.g.g(bVar2);
                                }
                                break;
                            }
                            cVarG = cVarG.b1();
                        }
                    }
                }
                return null;
            }
            if (i11 != 3) {
                if (i11 == 4) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
        }
        return focusTargetNode;
    }

    private static final FocusTargetNode c(FocusTargetNode focusTargetNode) {
        q0 q0VarE0;
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = focusTargetNode.getNode().h1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        androidx.compose.ui.f.c cVarG = cVarH1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (focusTargetNode2.I1().t()) {
                                    return focusTargetNode2;
                                }
                            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
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
                                if (i11 == 1) {
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
        return null;
    }

    public static final y.i d(FocusTargetNode focusTargetNode) {
        y.i iVarO;
        NodeCoordinator nodeCoordinatorC1 = focusTargetNode.c1();
        return (nodeCoordinatorC1 == null || (iVarO = androidx.compose.ui.layout.m.d(nodeCoordinatorC1).O(nodeCoordinatorC1, false)) == null) ? y.i.f78475e.a() : iVarO;
    }

    public static final Boolean e(FocusTargetNode focusTargetNode, int i11, LayoutDirection layoutDirection, y.i iVar, Function1 function1) {
        int iG;
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.e()) ? true : b.l(i11, aVar.f())) {
            return Boolean.valueOf(OneDimensionalFocusSearchKt.f(focusTargetNode, i11, function1));
        }
        if (b.l(i11, aVar.d()) ? true : b.l(i11, aVar.g()) ? true : b.l(i11, aVar.h()) ? true : b.l(i11, aVar.a())) {
            return TwoDimensionalFocusSearchKt.t(focusTargetNode, i11, iVar, function1);
        }
        if (!b.l(i11, aVar.b())) {
            if (b.l(i11, aVar.c())) {
                FocusTargetNode focusTargetNodeB = b(focusTargetNode);
                FocusTargetNode focusTargetNodeC = focusTargetNodeB != null ? c(focusTargetNodeB) : null;
                return Boolean.valueOf((focusTargetNodeC == null || Intrinsics.c(focusTargetNodeC, focusTargetNode)) ? false : ((Boolean) function1.invoke(focusTargetNodeC)).booleanValue());
            }
            throw new IllegalStateException(("Focus search invoked with invalid FocusDirection " + ((Object) b.n(i11))).toString());
        }
        int i12 = a.f4256a[layoutDirection.ordinal()];
        if (i12 == 1) {
            iG = aVar.g();
        } else {
            if (i12 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            iG = aVar.d();
        }
        FocusTargetNode focusTargetNodeB2 = b(focusTargetNode);
        if (focusTargetNodeB2 != null) {
            return TwoDimensionalFocusSearchKt.t(focusTargetNodeB2, iG, iVar, function1);
        }
        return null;
    }

    public static final FocusTargetNode f(FocusTargetNode focusTargetNode) {
        if (!focusTargetNode.getNode().k1()) {
            return null;
        }
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = focusTargetNode.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar, focusTargetNode.getNode());
        } else {
            bVar.b(cVarB1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVarG.a1() & iA) == 0) {
                androidx.compose.ui.node.g.c(bVar, cVarG);
            } else {
                while (cVarG != null) {
                    if ((cVarG.f1() & iA) != 0) {
                        androidx.compose.runtime.collection.b bVar2 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (focusTargetNode2.getNode().k1()) {
                                    int i11 = a.f4257b[focusTargetNode2.K1().ordinal()];
                                    if (i11 == 1 || i11 == 2 || i11 == 3) {
                                        return focusTargetNode2;
                                    }
                                }
                            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i12 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i12++;
                                        if (i12 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar2 == null) {
                                                bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar2.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar2.b(cVarE1);
                                        }
                                    }
                                }
                                if (i12 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar2);
                        }
                        break;
                    }
                    cVarG = cVarG.b1();
                }
            }
        }
        return null;
    }

    public static final boolean g(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNodeA1;
        NodeCoordinator nodeCoordinatorC1;
        LayoutNode layoutNodeA2;
        NodeCoordinator nodeCoordinatorC2 = focusTargetNode.c1();
        return (nodeCoordinatorC2 == null || (layoutNodeA1 = nodeCoordinatorC2.a1()) == null || !layoutNodeA1.n() || (nodeCoordinatorC1 = focusTargetNode.c1()) == null || (layoutNodeA2 = nodeCoordinatorC1.a1()) == null || !layoutNodeA2.D0()) ? false : true;
    }
}
