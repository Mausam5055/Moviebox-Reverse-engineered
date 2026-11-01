package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y extends NodeCoordinator {
    public static final a X = new a(null);
    private static final m4 Y;
    private x T;
    private o0.b U;
    private j0 V;
    private androidx.compose.ui.layout.c W;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final class b extends j0 {
        public b() {
            super(y.this);
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public int J0(androidx.compose.ui.layout.a aVar) {
            int iB = z.b(this, aVar);
            t1().put(aVar, Integer.valueOf(iB));
            return iB;
        }

        @Override // androidx.compose.ui.layout.s
        public androidx.compose.ui.layout.g0 P(long j11) {
            y yVar = y.this;
            F0(j11);
            yVar.V2(o0.b.a(j11));
            x xVarR2 = yVar.R2();
            j0 j0VarU1 = yVar.S2().U1();
            Intrinsics.e(j0VarU1);
            C1(xVarR2.z(this, j0VarU1, j11));
            return this;
        }
    }

    static {
        m4 m4VarA = androidx.compose.ui.graphics.t0.a();
        m4VarA.s(u1.f4658b.b());
        m4VarA.setStrokeWidth(1.0f);
        m4VarA.C(n4.f4608a.b());
        Y = m4VarA;
    }

    public y(LayoutNode layoutNode, x xVar) {
        super(layoutNode);
        this.T = xVar;
        androidx.compose.ui.layout.c cVar = null;
        this.V = layoutNode.V() != null ? new b() : null;
        if ((xVar.getNode().f1() & s0.a(512)) != 0) {
            Intrinsics.f(xVar, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode");
            android.support.v4.media.session.c.a(xVar);
            cVar = new androidx.compose.ui.layout.c(this, null);
        }
        this.W = cVar;
    }

    private final void T2() {
        if (k1()) {
            return;
        }
        s2();
        androidx.compose.ui.layout.c cVar = this.W;
        if (cVar == null) {
            b1().w();
            S2().A2(false);
            return;
        }
        cVar.n();
        d1();
        j0 j0VarU1 = U1();
        Intrinsics.e(j0VarU1);
        j0VarU1.w1();
        throw null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public int J0(androidx.compose.ui.layout.a aVar) {
        j0 j0VarU1 = U1();
        return j0VarU1 != null ? j0VarU1.s1(aVar) : z.b(this, aVar);
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void K1() {
        if (U1() == null) {
            W2(new b());
        }
    }

    @Override // androidx.compose.ui.layout.s
    public androidx.compose.ui.layout.g0 P(long j11) {
        if (Q1()) {
            o0.b bVar = this.U;
            if (bVar == null) {
                throw new IllegalArgumentException("Lookahead constraints cannot be null in approach pass.");
            }
            j11 = bVar.r();
        }
        F0(j11);
        androidx.compose.ui.layout.c cVar = this.W;
        if (cVar == null) {
            B2(R2().z(this, S2(), j11));
            r2();
            return this;
        }
        cVar.n();
        cVar.z();
        throw null;
    }

    public final x R2() {
        return this.T;
    }

    public final NodeCoordinator S2() {
        NodeCoordinator nodeCoordinatorZ1 = Z1();
        Intrinsics.e(nodeCoordinatorZ1);
        return nodeCoordinatorZ1;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public j0 U1() {
        return this.V;
    }

    public final void U2(x xVar) {
        if (!Intrinsics.c(xVar, this.T)) {
            androidx.compose.ui.f.c node = xVar.getNode();
            if ((node.f1() & s0.a(512)) != 0) {
                Intrinsics.f(xVar, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode");
                android.support.v4.media.session.c.a(xVar);
                androidx.compose.ui.layout.c cVar = this.W;
                if (cVar != null) {
                    android.support.v4.media.session.c.a(xVar);
                    cVar.B(null);
                } else {
                    android.support.v4.media.session.c.a(xVar);
                    cVar = new androidx.compose.ui.layout.c(this, null);
                }
                this.W = cVar;
            } else {
                this.W = null;
            }
        }
        this.T = xVar;
    }

    public final void V2(o0.b bVar) {
        this.U = bVar;
    }

    protected void W2(j0 j0Var) {
        this.V = j0Var;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public androidx.compose.ui.f.c Y1() {
        return this.T.getNode();
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void u2(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        S2().H1(m1Var, graphicsLayer);
        if (f0.b(a1()).getShowLayoutBounds()) {
            I1(m1Var, Y);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.g0
    public void w0(long j11, float f11, GraphicsLayer graphicsLayer) {
        super.w0(j11, f11, graphicsLayer);
        T2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.g0
    public void z0(long j11, float f11, Function1 function1) {
        super.z0(j11, f11, function1);
        T2();
    }
}
