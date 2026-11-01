package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s extends NodeCoordinator {
    public static final a V = new a(null);
    private static final m4 W;
    private final l1 T;
    private j0 U;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final class b extends j0 {
        public b() {
            super(s.this);
        }

        @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
        public int J0(androidx.compose.ui.layout.a aVar) {
            Integer num = (Integer) r1().z().get(aVar);
            int iIntValue = num != null ? num.intValue() : Integer.MIN_VALUE;
            t1().put(aVar, Integer.valueOf(iIntValue));
            return iIntValue;
        }

        @Override // androidx.compose.ui.layout.s
        public androidx.compose.ui.layout.g0 P(long j11) {
            F0(j11);
            androidx.compose.runtime.collection.b bVarP0 = a1().p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = ((LayoutNode) objArrM[i11]).U();
                    Intrinsics.e(lookaheadPassDelegateU);
                    lookaheadPassDelegateU.n1(LayoutNode.UsageByParent.NotUsed);
                    i11++;
                } while (i11 < iN);
            }
            C1(a1().Z().c(this, a1().C(), j11));
            return this;
        }

        @Override // androidx.compose.ui.node.j0
        protected void x1() {
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = a1().U();
            Intrinsics.e(lookaheadPassDelegateU);
            lookaheadPassDelegateU.i1();
        }
    }

    static {
        m4 m4VarA = androidx.compose.ui.graphics.t0.a();
        m4VarA.s(u1.f4658b.c());
        m4VarA.setStrokeWidth(1.0f);
        m4VarA.C(n4.f4608a.b());
        W = m4VarA;
    }

    public s(LayoutNode layoutNode) {
        super(layoutNode);
        this.T = new l1();
        Y1().C1(this);
        this.U = layoutNode.V() != null ? new b() : null;
    }

    private final void R2() {
        if (k1()) {
            return;
        }
        s2();
        a1().X().o1();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public int J0(androidx.compose.ui.layout.a aVar) {
        j0 j0VarU1 = U1();
        if (j0VarU1 != null) {
            return j0VarU1.J0(aVar);
        }
        Integer num = (Integer) P1().z().get(aVar);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void K1() {
        if (U1() == null) {
            S2(new b());
        }
    }

    @Override // androidx.compose.ui.layout.s
    public androidx.compose.ui.layout.g0 P(long j11) {
        if (Q1()) {
            j0 j0VarU1 = U1();
            Intrinsics.e(j0VarU1);
            j11 = j0VarU1.u1();
        }
        F0(j11);
        androidx.compose.runtime.collection.b bVarP0 = a1().p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i11 = 0;
            do {
                ((LayoutNode) objArrM[i11]).X().u1(LayoutNode.UsageByParent.NotUsed);
                i11++;
            } while (i11 < iN);
        }
        B2(a1().Z().c(this, a1().D(), j11));
        r2();
        return this;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    /* JADX INFO: renamed from: Q2, reason: merged with bridge method [inline-methods] */
    public l1 Y1() {
        return this.T;
    }

    protected void S2(j0 j0Var) {
        this.U = j0Var;
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public j0 U1() {
        return this.U;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007a  */
    @Override // androidx.compose.ui.node.NodeCoordinator
    public void i2(NodeCoordinator.d dVar, long j11, q qVar, boolean z10, boolean z11) {
        boolean z12;
        boolean z13 = false;
        if (dVar.d(a1())) {
            if (P2(j11)) {
                z12 = z11;
            } else {
                if (z10) {
                    float fG1 = G1(j11, V1());
                    if (!Float.isInfinite(fG1) && !Float.isNaN(fG1)) {
                        z12 = false;
                    }
                }
                z12 = z11;
            }
            z13 = true;
        } else {
            z12 = z11;
        }
        if (z13) {
            int i11 = qVar.f5423c;
            androidx.compose.runtime.collection.b bVarO0 = a1().o0();
            int iN = bVarO0.n();
            if (iN > 0) {
                Object[] objArrM = bVarO0.m();
                int i12 = iN - 1;
                do {
                    LayoutNode layoutNode = (LayoutNode) objArrM[i12];
                    if (layoutNode.n()) {
                        dVar.c(layoutNode, j11, qVar, z10, z12);
                        if (!qVar.p()) {
                            i12--;
                        } else {
                            if (!qVar.n()) {
                                break;
                            }
                            qVar.a();
                            i12--;
                        }
                    } else {
                        i12--;
                    }
                } while (i12 >= 0);
            }
            qVar.f5423c = i11;
        }
    }

    @Override // androidx.compose.ui.node.NodeCoordinator
    public void u2(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        y0 y0VarB = f0.b(a1());
        androidx.compose.runtime.collection.b bVarO0 = a1().o0();
        int iN = bVarO0.n();
        if (iN > 0) {
            Object[] objArrM = bVarO0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                if (layoutNode.n()) {
                    layoutNode.y(m1Var, graphicsLayer);
                }
                i11++;
            } while (i11 < iN);
        }
        if (y0VarB.getShowLayoutBounds()) {
            I1(m1Var, W);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.g0
    public void w0(long j11, float f11, GraphicsLayer graphicsLayer) {
        super.w0(j11, f11, graphicsLayer);
        R2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.NodeCoordinator, androidx.compose.ui.layout.g0
    public void z0(long j11, float f11, Function1 function1) {
        super.z0(j11, f11, function1);
        R2();
    }
}
