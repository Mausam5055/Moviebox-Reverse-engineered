package androidx.compose.ui.node;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends androidx.compose.ui.f.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f5390n = t0.g(this);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private androidx.compose.ui.f.c f5391o;

    private final void H1(int i11, boolean z10) {
        androidx.compose.ui.f.c cVarB1;
        int iF1 = f1();
        x1(i11);
        if (iF1 != i11) {
            if (g.f(this)) {
                t1(i11);
            }
            if (k1()) {
                androidx.compose.ui.f.c node = getNode();
                androidx.compose.ui.f.c cVarH1 = this;
                while (cVarH1 != null) {
                    i11 |= cVarH1.f1();
                    cVarH1.x1(i11);
                    if (cVarH1 == node) {
                        break;
                    } else {
                        cVarH1 = cVarH1.h1();
                    }
                }
                if (z10 && cVarH1 == node) {
                    i11 = t0.h(node);
                    node.x1(i11);
                }
                int iA1 = i11 | ((cVarH1 == null || (cVarB1 = cVarH1.b1()) == null) ? 0 : cVarB1.a1());
                while (cVarH1 != null) {
                    iA1 |= cVarH1.f1();
                    cVarH1.t1(iA1);
                    cVarH1 = cVarH1.h1();
                }
            }
        }
    }

    private final void I1(int i11, androidx.compose.ui.f.c cVar) {
        int iF1 = f1();
        if ((i11 & s0.a(2)) == 0 || (s0.a(2) & iF1) == 0 || (this instanceof x)) {
            return;
        }
        g0.a.b("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + cVar);
    }

    @Override // androidx.compose.ui.f.c
    public void C1(NodeCoordinator nodeCoordinator) {
        super.C1(nodeCoordinator);
        for (androidx.compose.ui.f.c cVarE1 = E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
            cVarE1.C1(nodeCoordinator);
        }
    }

    protected final f D1(f fVar) {
        androidx.compose.ui.f.c node = fVar.getNode();
        if (node != fVar) {
            androidx.compose.ui.f.c cVar = fVar instanceof androidx.compose.ui.f.c ? (androidx.compose.ui.f.c) fVar : null;
            androidx.compose.ui.f.c cVarH1 = cVar != null ? cVar.h1() : null;
            if (node == getNode() && Intrinsics.c(cVarH1, this)) {
                return fVar;
            }
            throw new IllegalStateException("Cannot delegate to an already delegated node");
        }
        if (node.k1()) {
            g0.a.b("Cannot delegate to an already attached node");
        }
        node.u1(getNode());
        int iF1 = f1();
        int iH = t0.h(node);
        node.x1(iH);
        I1(iH, node);
        node.v1(this.f5391o);
        this.f5391o = node;
        node.z1(this);
        H1(f1() | iH, false);
        if (k1()) {
            if ((iH & s0.a(2)) == 0 || (iF1 & s0.a(2)) != 0) {
                C1(c1());
            } else {
                q0 q0VarE0 = g.m(this).e0();
                getNode().C1(null);
                q0VarE0.C();
            }
            node.l1();
            node.r1();
            t0.a(node);
        }
        return fVar;
    }

    public final androidx.compose.ui.f.c E1() {
        return this.f5391o;
    }

    public final int F1() {
        return this.f5390n;
    }

    protected final void G1(f fVar) {
        androidx.compose.ui.f.c cVar = null;
        for (androidx.compose.ui.f.c cVarB1 = this.f5391o; cVarB1 != null; cVarB1 = cVarB1.b1()) {
            if (cVarB1 == fVar) {
                if (cVarB1.k1()) {
                    t0.d(cVarB1);
                    cVarB1.s1();
                    cVarB1.m1();
                }
                cVarB1.u1(cVarB1);
                cVarB1.t1(0);
                if (cVar == null) {
                    this.f5391o = cVarB1.b1();
                } else {
                    cVar.v1(cVarB1.b1());
                }
                cVarB1.v1(null);
                cVarB1.z1(null);
                int iF1 = f1();
                int iH = t0.h(this);
                H1(iH, true);
                if (k1() && (iF1 & s0.a(2)) != 0 && (s0.a(2) & iH) == 0) {
                    q0 q0VarE0 = g.m(this).e0();
                    getNode().C1(null);
                    q0VarE0.C();
                    return;
                }
                return;
            }
            cVar = cVarB1;
        }
        throw new IllegalStateException(("Could not find delegate: " + fVar).toString());
    }

    @Override // androidx.compose.ui.f.c
    public void l1() {
        super.l1();
        for (androidx.compose.ui.f.c cVarE1 = E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
            cVarE1.C1(c1());
            if (!cVarE1.k1()) {
                cVarE1.l1();
            }
        }
    }

    @Override // androidx.compose.ui.f.c
    public void m1() {
        for (androidx.compose.ui.f.c cVarE1 = E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
            cVarE1.m1();
        }
        super.m1();
    }

    @Override // androidx.compose.ui.f.c
    public void q1() {
        super.q1();
        for (androidx.compose.ui.f.c cVarE1 = E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
            cVarE1.q1();
        }
    }

    @Override // androidx.compose.ui.f.c
    public void r1() {
        for (androidx.compose.ui.f.c cVarE1 = E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
            cVarE1.r1();
        }
        super.r1();
    }

    @Override // androidx.compose.ui.f.c
    public void s1() {
        super.s1();
        for (androidx.compose.ui.f.c cVarE1 = E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
            cVarE1.s1();
        }
    }

    @Override // androidx.compose.ui.f.c
    public void u1(androidx.compose.ui.f.c cVar) {
        super.u1(cVar);
        for (androidx.compose.ui.f.c cVarE1 = E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
            cVarE1.u1(cVar);
        }
    }
}
