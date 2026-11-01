package androidx.compose.ui.node;

import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(androidx.compose.runtime.collection.b bVar, androidx.compose.ui.f.c cVar) {
        androidx.compose.runtime.collection.b bVarP0 = m(cVar).p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            int i11 = iN - 1;
            Object[] objArrM = bVarP0.m();
            do {
                bVar.b(((LayoutNode) objArrM[i11]).e0().k());
                i11--;
            } while (i11 >= 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final x d(androidx.compose.ui.f.c cVar) {
        if ((s0.a(2) & cVar.f1()) != 0) {
            if (cVar instanceof x) {
                return (x) cVar;
            }
            if (cVar instanceof i) {
                androidx.compose.ui.f.c cVarE1 = ((i) cVar).E1();
                while (cVarE1 != 0) {
                    if (cVarE1 instanceof x) {
                        return (x) cVarE1;
                    }
                    cVarE1 = (!(cVarE1 instanceof i) || (s0.a(2) & cVarE1.f1()) == 0) ? cVarE1.b1() : ((i) cVarE1).E1();
                }
            }
        }
        return null;
    }

    public static final boolean e(f fVar, int i11) {
        return (fVar.getNode().a1() & i11) != 0;
    }

    public static final boolean f(f fVar) {
        return fVar.getNode() == fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.ui.f.c g(androidx.compose.runtime.collection.b bVar) {
        if (bVar == null || bVar.p()) {
            return null;
        }
        return (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
    }

    public static final NodeCoordinator h(f fVar, int i11) {
        NodeCoordinator nodeCoordinatorC1 = fVar.getNode().c1();
        Intrinsics.e(nodeCoordinatorC1);
        if (nodeCoordinatorC1.Y1() != fVar || !t0.i(i11)) {
            return nodeCoordinatorC1;
        }
        NodeCoordinator nodeCoordinatorZ1 = nodeCoordinatorC1.Z1();
        Intrinsics.e(nodeCoordinatorZ1);
        return nodeCoordinatorZ1;
    }

    public static final o0.e i(f fVar) {
        return m(fVar).H();
    }

    public static final a4 j(f fVar) {
        return n(fVar).getGraphicsContext();
    }

    public static final androidx.compose.ui.layout.l k(f fVar) {
        if (!fVar.getNode().k1()) {
            g0.a.b("Cannot get LayoutCoordinates, Modifier.Node is not attached.");
        }
        androidx.compose.ui.layout.l lVarX0 = h(fVar, s0.a(2)).X0();
        if (!lVarX0.F()) {
            g0.a.b("LayoutCoordinates is not attached.");
        }
        return lVarX0;
    }

    public static final LayoutDirection l(f fVar) {
        return m(fVar).getLayoutDirection();
    }

    public static final LayoutNode m(f fVar) {
        NodeCoordinator nodeCoordinatorC1 = fVar.getNode().c1();
        if (nodeCoordinatorC1 != null) {
            return nodeCoordinatorC1.a1();
        }
        g0.a.c("Cannot obtain node coordinator. Is the Modifier.Node attached?");
        throw new KotlinNothingValueException();
    }

    public static final y0 n(f fVar) {
        y0 y0VarG0 = m(fVar).g0();
        if (y0VarG0 != null) {
            return y0VarG0;
        }
        g0.a.c("This node does not have an owner.");
        throw new KotlinNothingValueException();
    }
}
