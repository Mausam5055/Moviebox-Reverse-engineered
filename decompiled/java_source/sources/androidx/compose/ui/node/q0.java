package androidx.compose.ui.node;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutNode f5433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f5434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NodeCoordinator f5435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.ui.f.c f5436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.compose.ui.f.c f5437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.compose.runtime.collection.b f5438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.compose.runtime.collection.b f5439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f5440h;

    private final class a implements k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.compose.ui.f.c f5441a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f5442b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.compose.runtime.collection.b f5443c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.compose.runtime.collection.b f5444d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f5445e;

        public a(androidx.compose.ui.f.c cVar, int i11, androidx.compose.runtime.collection.b bVar, androidx.compose.runtime.collection.b bVar2, boolean z10) {
            this.f5441a = cVar;
            this.f5442b = i11;
            this.f5443c = bVar;
            this.f5444d = bVar2;
            this.f5445e = z10;
        }

        @Override // androidx.compose.ui.node.k
        public boolean a(int i11, int i12) {
            return NodeChainKt.d((androidx.compose.ui.f.b) this.f5443c.m()[this.f5442b + i11], (androidx.compose.ui.f.b) this.f5444d.m()[this.f5442b + i12]) != 0;
        }

        @Override // androidx.compose.ui.node.k
        public void b(int i11) {
            int i12 = this.f5442b + i11;
            this.f5441a = q0.this.g((androidx.compose.ui.f.b) this.f5444d.m()[i12], this.f5441a);
            q0.d(q0.this);
            if (!this.f5445e) {
                this.f5441a.w1(true);
                return;
            }
            androidx.compose.ui.f.c cVarB1 = this.f5441a.b1();
            Intrinsics.e(cVarB1);
            NodeCoordinator nodeCoordinatorC1 = cVarB1.c1();
            Intrinsics.e(nodeCoordinatorC1);
            x xVarD = g.d(this.f5441a);
            if (xVarD != null) {
                y yVar = new y(q0.this.m(), xVarD);
                this.f5441a.C1(yVar);
                q0.this.v(this.f5441a, yVar);
                yVar.E2(nodeCoordinatorC1.a2());
                yVar.D2(nodeCoordinatorC1);
                nodeCoordinatorC1.E2(yVar);
            } else {
                this.f5441a.C1(nodeCoordinatorC1);
            }
            this.f5441a.l1();
            this.f5441a.r1();
            t0.a(this.f5441a);
        }

        @Override // androidx.compose.ui.node.k
        public void c(int i11, int i12) {
            androidx.compose.ui.f.c cVarB1 = this.f5441a.b1();
            Intrinsics.e(cVarB1);
            this.f5441a = cVarB1;
            androidx.compose.runtime.collection.b bVar = this.f5443c;
            androidx.compose.ui.f.b bVar2 = (androidx.compose.ui.f.b) bVar.m()[this.f5442b + i11];
            androidx.compose.runtime.collection.b bVar3 = this.f5444d;
            androidx.compose.ui.f.b bVar4 = (androidx.compose.ui.f.b) bVar3.m()[this.f5442b + i12];
            if (Intrinsics.c(bVar2, bVar4)) {
                q0.d(q0.this);
            } else {
                q0.this.F(bVar2, bVar4, this.f5441a);
                q0.d(q0.this);
            }
        }

        public final void d(androidx.compose.runtime.collection.b bVar) {
            this.f5444d = bVar;
        }

        @Override // androidx.compose.ui.node.k
        public void e(int i11, int i12) {
            androidx.compose.ui.f.c cVarB1 = this.f5441a.b1();
            Intrinsics.e(cVarB1);
            q0.d(q0.this);
            if ((s0.a(2) & cVarB1.f1()) != 0) {
                NodeCoordinator nodeCoordinatorC1 = cVarB1.c1();
                Intrinsics.e(nodeCoordinatorC1);
                NodeCoordinator nodeCoordinatorA2 = nodeCoordinatorC1.a2();
                NodeCoordinator nodeCoordinatorZ1 = nodeCoordinatorC1.Z1();
                Intrinsics.e(nodeCoordinatorZ1);
                if (nodeCoordinatorA2 != null) {
                    nodeCoordinatorA2.D2(nodeCoordinatorZ1);
                }
                nodeCoordinatorZ1.E2(nodeCoordinatorA2);
                q0.this.v(this.f5441a, nodeCoordinatorZ1);
            }
            this.f5441a = q0.this.h(cVarB1);
        }

        public final void f(androidx.compose.runtime.collection.b bVar) {
            this.f5443c = bVar;
        }

        public final void g(androidx.compose.ui.f.c cVar) {
            this.f5441a = cVar;
        }

        public final void h(int i11) {
            this.f5442b = i11;
        }

        public final void i(boolean z10) {
            this.f5445e = z10;
        }
    }

    public interface b {
    }

    public q0(LayoutNode layoutNode) {
        this.f5433a = layoutNode;
        s sVar = new s(layoutNode);
        this.f5434b = sVar;
        this.f5435c = sVar;
        l1 l1VarQ2 = sVar.Y1();
        this.f5436d = l1VarQ2;
        this.f5437e = l1VarQ2;
    }

    private final void A(int i11, androidx.compose.runtime.collection.b bVar, androidx.compose.runtime.collection.b bVar2, androidx.compose.ui.f.c cVar, boolean z10) {
        o0.e(bVar.n() - i11, bVar2.n() - i11, j(cVar, i11, bVar, bVar2, z10));
        B();
    }

    private final void B() {
        int iF1 = 0;
        for (androidx.compose.ui.f.c cVarH1 = this.f5436d.h1(); cVarH1 != null && cVarH1 != NodeChainKt.f5351a; cVarH1 = cVarH1.h1()) {
            iF1 |= cVarH1.f1();
            cVarH1.t1(iF1);
        }
    }

    private final androidx.compose.ui.f.c D(androidx.compose.ui.f.c cVar) {
        if (!(cVar == NodeChainKt.f5351a)) {
            g0.a.b("trimChain called on already trimmed chain");
        }
        androidx.compose.ui.f.c cVarB1 = NodeChainKt.f5351a.b1();
        if (cVarB1 == null) {
            cVarB1 = this.f5436d;
        }
        cVarB1.z1(null);
        NodeChainKt.f5351a.v1(null);
        NodeChainKt.f5351a.t1(-1);
        NodeChainKt.f5351a.C1(null);
        if (!(cVarB1 != NodeChainKt.f5351a)) {
            g0.a.b("trimChain did not update the head");
        }
        return cVarB1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(androidx.compose.ui.f.b bVar, androidx.compose.ui.f.b bVar2, androidx.compose.ui.f.c cVar) {
        if ((bVar instanceof l0) && (bVar2 instanceof l0)) {
            NodeChainKt.f((l0) bVar2, cVar);
            if (cVar.k1()) {
                t0.e(cVar);
                return;
            } else {
                cVar.A1(true);
                return;
            }
        }
        if (!(cVar instanceof BackwardsCompatNode)) {
            throw new IllegalStateException("Unknown Modifier.Node type");
        }
        ((BackwardsCompatNode) cVar).H1(bVar2);
        if (cVar.k1()) {
            t0.e(cVar);
        } else {
            cVar.A1(true);
        }
    }

    public static final /* synthetic */ b d(q0 q0Var) {
        q0Var.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final androidx.compose.ui.f.c g(androidx.compose.ui.f.b bVar, androidx.compose.ui.f.c cVar) {
        androidx.compose.ui.f.c backwardsCompatNode;
        if (bVar instanceof l0) {
            backwardsCompatNode = ((l0) bVar).a();
            backwardsCompatNode.x1(t0.h(backwardsCompatNode));
        } else {
            backwardsCompatNode = new BackwardsCompatNode(bVar);
        }
        if (backwardsCompatNode.k1()) {
            g0.a.b("A ModifierNodeElement cannot return an already attached node from create() ");
        }
        backwardsCompatNode.w1(true);
        return r(backwardsCompatNode, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final androidx.compose.ui.f.c h(androidx.compose.ui.f.c cVar) {
        if (cVar.k1()) {
            t0.d(cVar);
            cVar.s1();
            cVar.m1();
        }
        return w(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int i() {
        return this.f5437e.a1();
    }

    private final a j(androidx.compose.ui.f.c cVar, int i11, androidx.compose.runtime.collection.b bVar, androidx.compose.runtime.collection.b bVar2, boolean z10) {
        a aVar = this.f5440h;
        if (aVar == null) {
            a aVar2 = new a(cVar, i11, bVar, bVar2, z10);
            this.f5440h = aVar2;
            return aVar2;
        }
        aVar.g(cVar);
        aVar.h(i11);
        aVar.f(bVar);
        aVar.d(bVar2);
        aVar.i(z10);
        return aVar;
    }

    private final androidx.compose.ui.f.c r(androidx.compose.ui.f.c cVar, androidx.compose.ui.f.c cVar2) {
        androidx.compose.ui.f.c cVarB1 = cVar2.b1();
        if (cVarB1 != null) {
            cVarB1.z1(cVar);
            cVar.v1(cVarB1);
        }
        cVar2.v1(cVar);
        cVar.z1(cVar2);
        return cVar;
    }

    private final androidx.compose.ui.f.c u() {
        if (!(this.f5437e != NodeChainKt.f5351a)) {
            g0.a.b("padChain called on already padded chain");
        }
        androidx.compose.ui.f.c cVar = this.f5437e;
        cVar.z1(NodeChainKt.f5351a);
        NodeChainKt.f5351a.v1(cVar);
        return NodeChainKt.f5351a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(androidx.compose.ui.f.c cVar, NodeCoordinator nodeCoordinator) {
        for (androidx.compose.ui.f.c cVarH1 = cVar.h1(); cVarH1 != null; cVarH1 = cVarH1.h1()) {
            if (cVarH1 == NodeChainKt.f5351a) {
                LayoutNode layoutNodeH0 = this.f5433a.h0();
                nodeCoordinator.E2(layoutNodeH0 != null ? layoutNodeH0.M() : null);
                this.f5435c = nodeCoordinator;
                return;
            } else {
                if ((s0.a(2) & cVarH1.f1()) != 0) {
                    return;
                }
                cVarH1.C1(nodeCoordinator);
            }
        }
    }

    private final androidx.compose.ui.f.c w(androidx.compose.ui.f.c cVar) {
        androidx.compose.ui.f.c cVarB1 = cVar.b1();
        androidx.compose.ui.f.c cVarH1 = cVar.h1();
        if (cVarB1 != null) {
            cVarB1.z1(cVarH1);
            cVar.v1(null);
        }
        if (cVarH1 != null) {
            cVarH1.v1(cVarB1);
            cVar.z1(null);
        }
        Intrinsics.e(cVarH1);
        return cVarH1;
    }

    public final void C() {
        NodeCoordinator yVar;
        NodeCoordinator nodeCoordinator = this.f5434b;
        for (androidx.compose.ui.f.c cVarH1 = this.f5436d.h1(); cVarH1 != null; cVarH1 = cVarH1.h1()) {
            x xVarD = g.d(cVarH1);
            if (xVarD != null) {
                if (cVarH1.c1() != null) {
                    NodeCoordinator nodeCoordinatorC1 = cVarH1.c1();
                    Intrinsics.f(nodeCoordinatorC1, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator");
                    yVar = (y) nodeCoordinatorC1;
                    x xVarR2 = yVar.R2();
                    yVar.U2(xVarD);
                    if (xVarR2 != cVarH1) {
                        yVar.o2();
                    }
                } else {
                    yVar = new y(this.f5433a, xVarD);
                    cVarH1.C1(yVar);
                }
                nodeCoordinator.E2(yVar);
                yVar.D2(nodeCoordinator);
                nodeCoordinator = yVar;
            } else {
                cVarH1.C1(nodeCoordinator);
            }
        }
        LayoutNode layoutNodeH0 = this.f5433a.h0();
        nodeCoordinator.E2(layoutNodeH0 != null ? layoutNodeH0.M() : null);
        this.f5435c = nodeCoordinator;
    }

    public final void E(androidx.compose.ui.f fVar) {
        androidx.compose.ui.f.c cVarU = u();
        androidx.compose.runtime.collection.b bVar = this.f5438f;
        int i11 = 0;
        int iN = bVar != null ? bVar.n() : 0;
        androidx.compose.runtime.collection.b bVar2 = this.f5439g;
        if (bVar2 == null) {
            bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.b[16], 0);
        }
        androidx.compose.runtime.collection.b bVarE = NodeChainKt.e(fVar, bVar2);
        androidx.compose.runtime.collection.b bVar3 = null;
        if (bVarE.n() == iN) {
            androidx.compose.ui.f.c cVarB1 = cVarU.b1();
            int i12 = 0;
            while (cVarB1 != null && i12 < iN) {
                if (bVar == null) {
                    g0.a.c("expected prior modifier list to be non-empty");
                    throw new KotlinNothingValueException();
                }
                androidx.compose.ui.f.b bVar4 = (androidx.compose.ui.f.b) bVar.m()[i12];
                androidx.compose.ui.f.b bVar5 = (androidx.compose.ui.f.b) bVarE.m()[i12];
                int iD = NodeChainKt.d(bVar4, bVar5);
                if (iD == 0) {
                    cVarB1 = cVarB1.h1();
                    break;
                }
                if (iD == 1) {
                    F(bVar4, bVar5, cVarB1);
                }
                cVarB1 = cVarB1.b1();
                i12++;
            }
            androidx.compose.ui.f.c cVar = cVarB1;
            if (i12 < iN) {
                if (bVar == null) {
                    g0.a.c("expected prior modifier list to be non-empty");
                    throw new KotlinNothingValueException();
                }
                if (cVar == null) {
                    g0.a.c("structuralUpdate requires a non-null tail");
                    throw new KotlinNothingValueException();
                }
                A(i12, bVar, bVarE, cVar, !this.f5433a.A());
                i11 = 1;
            }
        } else {
            if (this.f5433a.A() && iN == 0) {
                androidx.compose.ui.f.c cVarG = cVarU;
                while (i11 < bVarE.n()) {
                    cVarG = g((androidx.compose.ui.f.b) bVarE.m()[i11], cVarG);
                    i11++;
                }
                B();
            } else if (bVarE.n() != 0) {
                if (bVar == null) {
                    bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.b[16], 0);
                }
                A(0, bVar, bVarE, cVarU, !this.f5433a.A());
            } else {
                if (bVar == null) {
                    g0.a.c("expected prior modifier list to be non-empty");
                    throw new KotlinNothingValueException();
                }
                androidx.compose.ui.f.c cVarB2 = cVarU.b1();
                for (int i13 = 0; cVarB2 != null && i13 < bVar.n(); i13++) {
                    cVarB2 = h(cVarB2).b1();
                }
                s sVar = this.f5434b;
                LayoutNode layoutNodeH0 = this.f5433a.h0();
                sVar.E2(layoutNodeH0 != null ? layoutNodeH0.M() : null);
                this.f5435c = this.f5434b;
            }
            i11 = 1;
        }
        this.f5438f = bVarE;
        if (bVar != null) {
            bVar.h();
            bVar3 = bVar;
        }
        this.f5439g = bVar3;
        this.f5437e = D(cVarU);
        if (i11 != 0) {
            C();
        }
    }

    public final androidx.compose.ui.f.c k() {
        return this.f5437e;
    }

    public final s l() {
        return this.f5434b;
    }

    public final LayoutNode m() {
        return this.f5433a;
    }

    public final NodeCoordinator n() {
        return this.f5435c;
    }

    public final androidx.compose.ui.f.c o() {
        return this.f5436d;
    }

    public final boolean p(int i11) {
        return (i11 & i()) != 0;
    }

    public final boolean q(int i11) {
        return (i11 & i()) != 0;
    }

    public final void s() {
        for (androidx.compose.ui.f.c cVarK = k(); cVarK != null; cVarK = cVarK.b1()) {
            cVarK.l1();
        }
    }

    public final void t() {
        for (androidx.compose.ui.f.c cVarO = o(); cVarO != null; cVarO = cVarO.h1()) {
            if (cVarO.k1()) {
                cVarO.m1();
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        if (this.f5437e == this.f5436d) {
            sb2.append("]");
        } else {
            for (androidx.compose.ui.f.c cVarK = k(); cVarK != null && cVarK != o(); cVarK = cVarK.b1()) {
                sb2.append(String.valueOf(cVarK));
                if (cVarK.b1() == this.f5436d) {
                    sb2.append("]");
                    break;
                }
                sb2.append(",");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final void x() {
        for (androidx.compose.ui.f.c cVarO = o(); cVarO != null; cVarO = cVarO.h1()) {
            if (cVarO.k1()) {
                cVarO.q1();
            }
        }
        z();
        t();
    }

    public final void y() {
        for (androidx.compose.ui.f.c cVarK = k(); cVarK != null; cVarK = cVarK.b1()) {
            cVarK.r1();
            if (cVarK.e1()) {
                t0.a(cVarK);
            }
            if (cVarK.j1()) {
                t0.e(cVarK);
            }
            cVarK.w1(false);
            cVarK.A1(false);
        }
    }

    public final void z() {
        for (androidx.compose.ui.f.c cVarO = o(); cVarO != null; cVarO = cVarO.h1()) {
            if (cVarO.k1()) {
                cVarO.s1();
            }
        }
    }
}
