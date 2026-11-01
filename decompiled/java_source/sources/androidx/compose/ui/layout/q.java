package androidx.compose.ui.layout;

import androidx.compose.ui.node.NodeCoordinator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.node.j0 f5197a;

    public q(androidx.compose.ui.node.j0 j0Var) {
        this.f5197a = j0Var;
    }

    private final long b() {
        androidx.compose.ui.node.j0 j0VarA = r.a(this.f5197a);
        l lVarX0 = j0VarA.X0();
        y.g.a aVar = y.g.f78470b;
        return y.g.q(C(lVarX0, aVar.c()), a().C(j0VarA.v1(), aVar.c()));
    }

    @Override // androidx.compose.ui.layout.l
    public long B(l lVar, long j11, boolean z10) {
        if (!(lVar instanceof q)) {
            androidx.compose.ui.node.j0 j0VarA = r.a(this.f5197a);
            return y.g.r(B(j0VarA.w1(), j11, z10), j0VarA.v1().X0().B(lVar, y.g.f78470b.c(), z10));
        }
        androidx.compose.ui.node.j0 j0Var = ((q) lVar).f5197a;
        j0Var.v1().n2();
        androidx.compose.ui.node.j0 j0VarU1 = a().L1(j0Var.v1()).U1();
        if (j0VarU1 != null) {
            long jK = o0.p.k(o0.p.l(j0Var.A1(j0VarU1, !z10), o0.q.d(j11)), this.f5197a.A1(j0VarU1, !z10));
            return y.h.a(o0.p.h(jK), o0.p.i(jK));
        }
        androidx.compose.ui.node.j0 j0VarA2 = r.a(j0Var);
        long jL = o0.p.l(o0.p.l(j0Var.A1(j0VarA2, !z10), j0VarA2.e1()), o0.q.d(j11));
        androidx.compose.ui.node.j0 j0VarA3 = r.a(this.f5197a);
        long jK2 = o0.p.k(jL, o0.p.l(this.f5197a.A1(j0VarA3, !z10), j0VarA3.e1()));
        long jA = y.h.a(o0.p.h(jK2), o0.p.i(jK2));
        NodeCoordinator nodeCoordinatorA2 = j0VarA3.v1().a2();
        Intrinsics.e(nodeCoordinatorA2);
        NodeCoordinator nodeCoordinatorA3 = j0VarA2.v1().a2();
        Intrinsics.e(nodeCoordinatorA3);
        return nodeCoordinatorA2.B(nodeCoordinatorA3, jA, z10);
    }

    @Override // androidx.compose.ui.layout.l
    public long C(l lVar, long j11) {
        return B(lVar, j11, true);
    }

    @Override // androidx.compose.ui.layout.l
    public boolean F() {
        return a().F();
    }

    @Override // androidx.compose.ui.layout.l
    public long L(long j11) {
        return a().L(y.g.r(j11, b()));
    }

    @Override // androidx.compose.ui.layout.l
    public y.i O(l lVar, boolean z10) {
        return a().O(lVar, z10);
    }

    @Override // androidx.compose.ui.layout.l
    public l R() {
        androidx.compose.ui.node.j0 j0VarU1;
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        NodeCoordinator nodeCoordinatorA2 = a().a1().f0().a2();
        if (nodeCoordinatorA2 == null || (j0VarU1 = nodeCoordinatorA2.U1()) == null) {
            return null;
        }
        return j0VarU1.X0();
    }

    @Override // androidx.compose.ui.layout.l
    public long Y(long j11) {
        return a().Y(y.g.r(j11, b()));
    }

    public final NodeCoordinator a() {
        return this.f5197a.v1();
    }

    @Override // androidx.compose.ui.layout.l
    public long k() {
        androidx.compose.ui.node.j0 j0Var = this.f5197a;
        return o0.u.a(j0Var.u0(), j0Var.l0());
    }
}
