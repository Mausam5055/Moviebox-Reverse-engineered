package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public abstract class OneDimensionalFocusSearchKt {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4235a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f4235a = iArr;
        }
    }

    private static final boolean b(FocusTargetNode focusTargetNode, Function1 function1) {
        FocusStateImpl focusStateImplK1 = focusTargetNode.K1();
        int[] iArr = a.f4235a;
        int i11 = iArr[focusStateImplK1.ordinal()];
        if (i11 == 1) {
            FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
            if (focusTargetNodeF == null) {
                throw new IllegalStateException("ActiveParent must have a focusedChild");
            }
            int i12 = iArr[focusTargetNodeF.K1().ordinal()];
            if (i12 != 1) {
                if (i12 == 2 || i12 == 3) {
                    return d(focusTargetNode, focusTargetNodeF, b.f4237b.f(), function1);
                }
                if (i12 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                throw new IllegalStateException("ActiveParent must have a focusedChild");
            }
            if (!b(focusTargetNodeF, function1) && !d(focusTargetNode, focusTargetNodeF, b.f4237b.f(), function1) && (!focusTargetNodeF.I1().t() || !((Boolean) function1.invoke(focusTargetNodeF)).booleanValue())) {
                return false;
            }
        } else {
            if (i11 == 2 || i11 == 3) {
                return g(focusTargetNode, function1);
            }
            if (i11 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            if (!g(focusTargetNode, function1)) {
                if (!(focusTargetNode.I1().t() ? ((Boolean) function1.invoke(focusTargetNode)).booleanValue() : false)) {
                    return false;
                }
            }
        }
        return true;
    }

    private static final boolean c(FocusTargetNode focusTargetNode, Function1 function1) {
        int i11 = a.f4235a[focusTargetNode.K1().ordinal()];
        if (i11 == 1) {
            FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
            if (focusTargetNodeF != null) {
                return c(focusTargetNodeF, function1) || d(focusTargetNode, focusTargetNodeF, b.f4237b.e(), function1);
            }
            throw new IllegalStateException("ActiveParent must have a focusedChild");
        }
        if (i11 == 2 || i11 == 3) {
            return h(focusTargetNode, function1);
        }
        if (i11 == 4) {
            return focusTargetNode.I1().t() ? ((Boolean) function1.invoke(focusTargetNode)).booleanValue() : h(focusTargetNode, function1);
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final boolean d(final FocusTargetNode focusTargetNode, final FocusTargetNode focusTargetNode2, final int i11, final Function1 function1) {
        if (i(focusTargetNode, focusTargetNode2, i11, function1)) {
            return true;
        }
        Boolean bool = (Boolean) androidx.compose.ui.focus.a.a(focusTargetNode, i11, new Function1<androidx.compose.ui.layout.d.a, Boolean>() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(androidx.compose.ui.layout.d.a aVar) {
                boolean zI = OneDimensionalFocusSearchKt.i(focusTargetNode, focusTargetNode2, i11, function1);
                Boolean boolValueOf = Boolean.valueOf(zI);
                if (zI || !aVar.a()) {
                    return boolValueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static final boolean e(FocusTargetNode focusTargetNode) {
        androidx.compose.ui.f.c cVar;
        q0 q0VarE0;
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = focusTargetNode.getNode().h1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        loop0: while (true) {
            cVar = null;
            if (layoutNodeM == null) {
                break;
            }
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        androidx.compose.ui.f.c cVarG = cVarH1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                cVar = cVarG;
                                break loop0;
                            }
                            if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
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
        return cVar == null;
    }

    public static final boolean f(FocusTargetNode focusTargetNode, int i11, Function1 function1) {
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.e())) {
            return c(focusTargetNode, function1);
        }
        if (b.l(i11, aVar.f())) {
            return b(focusTargetNode, function1);
        }
        throw new IllegalStateException("This function should only be used for 1-D focus search");
    }

    private static final boolean g(FocusTargetNode focusTargetNode, Function1 function1) {
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = focusTargetNode.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar2, focusTargetNode.getNode());
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
                                bVar.b((FocusTargetNode) cVarG);
                            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarE1);
                                        }
                                    }
                                }
                                if (i11 == 1) {
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
        bVar.A(FocusableChildrenComparator.INSTANCE);
        int iN = bVar.n();
        if (iN > 0) {
            int i12 = iN - 1;
            Object[] objArrM = bVar.m();
            do {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArrM[i12];
                if (w.g(focusTargetNode2) && b(focusTargetNode2, function1)) {
                    return true;
                }
                i12--;
            } while (i12 >= 0);
        }
        return false;
    }

    private static final boolean h(FocusTargetNode focusTargetNode, Function1 function1) {
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = focusTargetNode.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar2, focusTargetNode.getNode());
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
                                bVar.b((FocusTargetNode) cVarG);
                            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarE1);
                                        }
                                    }
                                }
                                if (i11 == 1) {
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
        bVar.A(FocusableChildrenComparator.INSTANCE);
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i12 = 0;
        do {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArrM[i12];
            if (w.g(focusTargetNode2) && c(focusTargetNode2, function1)) {
                return true;
            }
            i12++;
        } while (i12 < iN);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean i(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i11, Function1 function1) {
        if (focusTargetNode.K1() != FocusStateImpl.ActiveParent) {
            throw new IllegalStateException("This function should only be used within a parent that has focus.");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = focusTargetNode.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar2, focusTargetNode.getNode());
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
                                bVar.b((FocusTargetNode) cVarG);
                            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i12 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i12++;
                                        if (i12 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar3 == null) {
                                                bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar3.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar3.b(cVarE1);
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
        bVar.A(FocusableChildrenComparator.INSTANCE);
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.e())) {
            IntRange intRange = new IntRange(0, bVar.n() - 1);
            int first = intRange.getFirst();
            int last = intRange.getLast();
            if (first <= last) {
                boolean z10 = false;
                while (true) {
                    if (z10) {
                        FocusTargetNode focusTargetNode3 = (FocusTargetNode) bVar.m()[first];
                        if (w.g(focusTargetNode3) && c(focusTargetNode3, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.c(bVar.m()[first], focusTargetNode2)) {
                        z10 = true;
                    }
                    if (first == last) {
                        break;
                    }
                    first++;
                }
            }
        } else {
            if (!b.l(i11, aVar.f())) {
                throw new IllegalStateException("This function should only be used for 1-D focus search");
            }
            IntRange intRange2 = new IntRange(0, bVar.n() - 1);
            int first2 = intRange2.getFirst();
            int last2 = intRange2.getLast();
            if (first2 <= last2) {
                boolean z11 = false;
                while (true) {
                    if (z11) {
                        FocusTargetNode focusTargetNode4 = (FocusTargetNode) bVar.m()[last2];
                        if (w.g(focusTargetNode4) && b(focusTargetNode4, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.c(bVar.m()[last2], focusTargetNode2)) {
                        z11 = true;
                    }
                    if (last2 == first2) {
                        break;
                    }
                    last2--;
                }
            }
        }
        if (b.l(i11, b.f4237b.e()) || !focusTargetNode.I1().t() || e(focusTargetNode)) {
            return false;
        }
        return ((Boolean) function1.invoke(focusTargetNode)).booleanValue();
    }
}
