package androidx.compose.ui.focus;

import androidx.compose.ui.node.s0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class TwoDimensionalFocusSearchKt {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4236a;

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
            f4236a = iArr;
        }
    }

    private static final FocusTargetNode b(FocusTargetNode focusTargetNode) {
        if (focusTargetNode.K1() != FocusStateImpl.ActiveParent) {
            throw new IllegalStateException("Searching for active node in inactive hierarchy");
        }
        FocusTargetNode focusTargetNodeB = w.b(focusTargetNode);
        if (focusTargetNodeB != null) {
            return focusTargetNodeB;
        }
        throw new IllegalStateException("ActiveParent must have a focusedChild");
    }

    private static final boolean c(y.i iVar, y.i iVar2, y.i iVar3, int i11) {
        if (d(iVar3, i11, iVar) || !d(iVar2, i11, iVar)) {
            return false;
        }
        if (e(iVar3, i11, iVar)) {
            b.a aVar = b.f4237b;
            if (!b.l(i11, aVar.d()) && !b.l(i11, aVar.g()) && f(iVar2, i11, iVar) >= g(iVar3, i11, iVar)) {
                return false;
            }
        }
        return true;
    }

    private static final boolean d(y.i iVar, int i11, y.i iVar2) {
        b.a aVar = b.f4237b;
        if (!(b.l(i11, aVar.d()) ? true : b.l(i11, aVar.g()))) {
            if (!(b.l(i11, aVar.h()) ? true : b.l(i11, aVar.a()))) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            if (iVar.g() > iVar2.f() && iVar.f() < iVar2.g()) {
                return true;
            }
        } else if (iVar.c() > iVar2.i() && iVar.i() < iVar2.c()) {
            return true;
        }
        return false;
    }

    private static final boolean e(y.i iVar, int i11, y.i iVar2) {
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.d())) {
            if (iVar2.f() < iVar.g()) {
                return false;
            }
        } else if (b.l(i11, aVar.g())) {
            if (iVar2.g() > iVar.f()) {
                return false;
            }
        } else if (b.l(i11, aVar.h())) {
            if (iVar2.i() < iVar.c()) {
                return false;
            }
        } else {
            if (!b.l(i11, aVar.a())) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            if (iVar2.c() > iVar.i()) {
                return false;
            }
        }
        return true;
    }

    private static final float f(y.i iVar, int i11, y.i iVar2) {
        float fI;
        float fC;
        float fI2;
        float fC2;
        float f11;
        b.a aVar = b.f4237b;
        if (!b.l(i11, aVar.d())) {
            if (b.l(i11, aVar.g())) {
                fI = iVar.f();
                fC = iVar2.g();
            } else if (b.l(i11, aVar.h())) {
                fI2 = iVar2.i();
                fC2 = iVar.c();
            } else {
                if (!b.l(i11, aVar.a())) {
                    throw new IllegalStateException("This function should only be used for 2-D focus search");
                }
                fI = iVar.i();
                fC = iVar2.c();
            }
            f11 = fI - fC;
            return Math.max(0.0f, f11);
        }
        fI2 = iVar2.f();
        fC2 = iVar.g();
        f11 = fI2 - fC2;
        return Math.max(0.0f, f11);
    }

    private static final float g(y.i iVar, int i11, y.i iVar2) {
        float fC;
        float fC2;
        float fI;
        float fI2;
        float f11;
        b.a aVar = b.f4237b;
        if (!b.l(i11, aVar.d())) {
            if (b.l(i11, aVar.g())) {
                fC = iVar.g();
                fC2 = iVar2.g();
            } else if (b.l(i11, aVar.h())) {
                fI = iVar2.i();
                fI2 = iVar.i();
            } else {
                if (!b.l(i11, aVar.a())) {
                    throw new IllegalStateException("This function should only be used for 2-D focus search");
                }
                fC = iVar.c();
                fC2 = iVar2.c();
            }
            f11 = fC - fC2;
            return Math.max(1.0f, f11);
        }
        fI = iVar2.f();
        fI2 = iVar.f();
        f11 = fI - fI2;
        return Math.max(1.0f, f11);
    }

    private static final y.i h(y.i iVar) {
        return new y.i(iVar.g(), iVar.c(), iVar.g(), iVar.c());
    }

    private static final void i(androidx.compose.ui.node.f fVar, androidx.compose.runtime.collection.b bVar) {
        int iA = s0.a(1024);
        if (!fVar.getNode().k1()) {
            throw new IllegalStateException("visitChildren called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = fVar.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar2, fVar.getNode());
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
                                FocusTargetNode focusTargetNode = (FocusTargetNode) cVarG;
                                if (focusTargetNode.k1() && !androidx.compose.ui.node.g.m(focusTargetNode).E0()) {
                                    if (focusTargetNode.I1().t()) {
                                        bVar.b(focusTargetNode);
                                    } else {
                                        i(focusTargetNode, bVar);
                                    }
                                }
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
    }

    private static final FocusTargetNode j(androidx.compose.runtime.collection.b bVar, y.i iVar, int i11) {
        y.i iVarP;
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.d())) {
            iVarP = iVar.p(iVar.k() + 1, 0.0f);
        } else if (b.l(i11, aVar.g())) {
            iVarP = iVar.p(-(iVar.k() + 1), 0.0f);
        } else if (b.l(i11, aVar.h())) {
            iVarP = iVar.p(0.0f, iVar.e() + 1);
        } else {
            if (!b.l(i11, aVar.a())) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            iVarP = iVar.p(0.0f, -(iVar.e() + 1));
        }
        int iN = bVar.n();
        FocusTargetNode focusTargetNode = null;
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i12 = 0;
            do {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArrM[i12];
                if (w.g(focusTargetNode2)) {
                    y.i iVarD = w.d(focusTargetNode2);
                    if (m(iVarD, iVarP, iVar, i11)) {
                        focusTargetNode = focusTargetNode2;
                        iVarP = iVarD;
                    }
                }
                i12++;
            } while (i12 < iN);
        }
        return focusTargetNode;
    }

    public static final boolean k(FocusTargetNode focusTargetNode, int i11, Function1 function1) {
        y.i iVarH;
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new FocusTargetNode[16], 0);
        i(focusTargetNode, bVar);
        if (bVar.n() <= 1) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) (bVar.p() ? null : bVar.m()[0]);
            if (focusTargetNode2 != null) {
                return ((Boolean) function1.invoke(focusTargetNode2)).booleanValue();
            }
            return false;
        }
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.b())) {
            i11 = aVar.g();
        }
        if (b.l(i11, aVar.g()) ? true : b.l(i11, aVar.a())) {
            iVarH = s(w.d(focusTargetNode));
        } else {
            if (!(b.l(i11, aVar.d()) ? true : b.l(i11, aVar.h()))) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            iVarH = h(w.d(focusTargetNode));
        }
        FocusTargetNode focusTargetNodeJ = j(bVar, iVarH, i11);
        if (focusTargetNodeJ != null) {
            return ((Boolean) function1.invoke(focusTargetNodeJ)).booleanValue();
        }
        return false;
    }

    private static final boolean l(final FocusTargetNode focusTargetNode, final y.i iVar, final int i11, final Function1 function1) {
        if (r(focusTargetNode, iVar, i11, function1)) {
            return true;
        }
        Boolean bool = (Boolean) androidx.compose.ui.focus.a.a(focusTargetNode, i11, new Function1<androidx.compose.ui.layout.d.a, Boolean>() { // from class: androidx.compose.ui.focus.TwoDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(androidx.compose.ui.layout.d.a aVar) {
                boolean zR = TwoDimensionalFocusSearchKt.r(focusTargetNode, iVar, i11, function1);
                Boolean boolValueOf = Boolean.valueOf(zR);
                if (zR || !aVar.a()) {
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

    private static final boolean m(y.i iVar, y.i iVar2, y.i iVar3, int i11) {
        if (n(iVar, i11, iVar3)) {
            return !n(iVar2, i11, iVar3) || c(iVar3, iVar, iVar2, i11) || (!c(iVar3, iVar2, iVar, i11) && q(i11, iVar3, iVar) < q(i11, iVar3, iVar2));
        }
        return false;
    }

    private static final boolean n(y.i iVar, int i11, y.i iVar2) {
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.d())) {
            if ((iVar2.g() <= iVar.g() && iVar2.f() < iVar.g()) || iVar2.f() <= iVar.f()) {
                return false;
            }
        } else if (b.l(i11, aVar.g())) {
            if ((iVar2.f() >= iVar.f() && iVar2.g() > iVar.f()) || iVar2.g() >= iVar.g()) {
                return false;
            }
        } else if (b.l(i11, aVar.h())) {
            if ((iVar2.c() <= iVar.c() && iVar2.i() < iVar.c()) || iVar2.i() <= iVar.i()) {
                return false;
            }
        } else {
            if (!b.l(i11, aVar.a())) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            if ((iVar2.i() >= iVar.i() && iVar2.c() > iVar.i()) || iVar2.c() >= iVar.c()) {
                return false;
            }
        }
        return true;
    }

    private static final float o(y.i iVar, int i11, y.i iVar2) {
        float fI;
        float fC;
        float fI2;
        float fC2;
        float f11;
        b.a aVar = b.f4237b;
        if (!b.l(i11, aVar.d())) {
            if (b.l(i11, aVar.g())) {
                fI = iVar.f();
                fC = iVar2.g();
            } else if (b.l(i11, aVar.h())) {
                fI2 = iVar2.i();
                fC2 = iVar.c();
            } else {
                if (!b.l(i11, aVar.a())) {
                    throw new IllegalStateException("This function should only be used for 2-D focus search");
                }
                fI = iVar.i();
                fC = iVar2.c();
            }
            f11 = fI - fC;
            return Math.max(0.0f, f11);
        }
        fI2 = iVar2.f();
        fC2 = iVar.g();
        f11 = fI2 - fC2;
        return Math.max(0.0f, f11);
    }

    private static final float p(y.i iVar, int i11, y.i iVar2) {
        float f11;
        float f12;
        float f13;
        float fK;
        b.a aVar = b.f4237b;
        if (b.l(i11, aVar.d()) ? true : b.l(i11, aVar.g())) {
            f11 = 2;
            f12 = iVar2.i() + (iVar2.e() / f11);
            f13 = iVar.i();
            fK = iVar.e();
        } else {
            if (!(b.l(i11, aVar.h()) ? true : b.l(i11, aVar.a()))) {
                throw new IllegalStateException("This function should only be used for 2-D focus search");
            }
            f11 = 2;
            f12 = iVar2.f() + (iVar2.k() / f11);
            f13 = iVar.f();
            fK = iVar.k();
        }
        return f12 - (f13 + (fK / f11));
    }

    private static final long q(int i11, y.i iVar, y.i iVar2) {
        long jAbs = (long) Math.abs(o(iVar2, i11, iVar));
        long jAbs2 = (long) Math.abs(p(iVar2, i11, iVar));
        return (((long) 13) * jAbs * jAbs) + (jAbs2 * jAbs2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean r(FocusTargetNode focusTargetNode, y.i iVar, int i11, Function1 function1) {
        FocusTargetNode focusTargetNodeJ;
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
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (focusTargetNode2.k1()) {
                                    bVar.b(focusTargetNode2);
                                }
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
        while (bVar.q() && (focusTargetNodeJ = j(bVar, iVar, i11)) != null) {
            if (focusTargetNodeJ.I1().t()) {
                return ((Boolean) function1.invoke(focusTargetNodeJ)).booleanValue();
            }
            if (l(focusTargetNodeJ, iVar, i11, function1)) {
                return true;
            }
            bVar.t(focusTargetNodeJ);
        }
        return false;
    }

    private static final y.i s(y.i iVar) {
        return new y.i(iVar.f(), iVar.i(), iVar.f(), iVar.i());
    }

    public static final Boolean t(FocusTargetNode focusTargetNode, int i11, y.i iVar, Function1 function1) {
        FocusStateImpl focusStateImplK1 = focusTargetNode.K1();
        int[] iArr = a.f4236a;
        int i12 = iArr[focusStateImplK1.ordinal()];
        if (i12 != 1) {
            if (i12 == 2 || i12 == 3) {
                return Boolean.valueOf(k(focusTargetNode, i11, function1));
            }
            if (i12 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            if (focusTargetNode.I1().t()) {
                return (Boolean) function1.invoke(focusTargetNode);
            }
            return iVar == null ? Boolean.valueOf(k(focusTargetNode, i11, function1)) : Boolean.valueOf(r(focusTargetNode, iVar, i11, function1));
        }
        FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
        if (focusTargetNodeF == null) {
            throw new IllegalStateException("ActiveParent must have a focusedChild");
        }
        int i13 = iArr[focusTargetNodeF.K1().ordinal()];
        if (i13 == 1) {
            Boolean boolT = t(focusTargetNodeF, i11, iVar, function1);
            if (!Intrinsics.c(boolT, Boolean.FALSE)) {
                return boolT;
            }
            if (iVar == null) {
                iVar = w.d(b(focusTargetNodeF));
            }
            return Boolean.valueOf(l(focusTargetNode, iVar, i11, function1));
        }
        if (i13 == 2 || i13 == 3) {
            if (iVar == null) {
                iVar = w.d(focusTargetNodeF);
            }
            return Boolean.valueOf(l(focusTargetNode, iVar, i11, function1));
        }
        if (i13 != 4) {
            throw new NoWhenBranchMatchedException();
        }
        throw new IllegalStateException("ActiveParent must have a focusedChild");
    }
}
