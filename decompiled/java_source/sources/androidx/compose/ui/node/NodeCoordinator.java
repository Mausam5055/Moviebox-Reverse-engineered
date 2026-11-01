package androidx.compose.ui.node;

import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.x4;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements androidx.compose.ui.layout.s, androidx.compose.ui.layout.l, z0 {
    public static final c L = new c(null);
    private static final Function1 M = new Function1<NodeCoordinator, Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$onCommitAffectingLayerParams$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((NodeCoordinator) obj);
            return Unit.f67061a;
        }

        public final void invoke(NodeCoordinator nodeCoordinator) {
            if (nodeCoordinator.isValidOwnerScope()) {
                u uVar = nodeCoordinator.F;
                if (uVar == null) {
                    NodeCoordinator.O2(nodeCoordinator, false, 1, null);
                    return;
                }
                NodeCoordinator.P.b(uVar);
                NodeCoordinator.O2(nodeCoordinator, false, 1, null);
                if (NodeCoordinator.P.c(uVar)) {
                    return;
                }
                LayoutNode layoutNodeA1 = nodeCoordinator.a1();
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNodeA1.P();
                if (layoutNodeLayoutDelegateP.s() > 0) {
                    if (layoutNodeLayoutDelegateP.u() || layoutNodeLayoutDelegateP.v()) {
                        LayoutNode.f1(layoutNodeA1, false, 1, null);
                    }
                    layoutNodeLayoutDelegateP.I().l1();
                }
                y0 y0VarG0 = layoutNodeA1.g0();
                if (y0VarG0 != null) {
                    y0VarG0.requestOnPositionedCallback(layoutNodeA1);
                }
            }
        }
    };
    private static final Function1 N = new Function1<NodeCoordinator, Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$onCommitAffectingLayer$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((NodeCoordinator) obj);
            return Unit.f67061a;
        }

        public final void invoke(NodeCoordinator nodeCoordinator) {
            w0 w0VarT1 = nodeCoordinator.T1();
            if (w0VarT1 != null) {
                w0VarT1.invalidate();
            }
        }
    };
    private static final x4 O = new x4();
    private static final u P = new u();
    private static final float[] Q = i4.c(null, 1, null);
    private static final d R = new a();
    private static final d S = new b();
    private androidx.compose.ui.layout.v A;
    private Map B;
    private float D;
    private y.e E;
    private u F;
    private boolean I;
    private w0 J;
    private GraphicsLayer K;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final LayoutNode f5352p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f5353q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f5354r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private NodeCoordinator f5355s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private NodeCoordinator f5356t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f5357u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f5358v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Function1 f5359w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private o0.e f5360x = a1().H();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private LayoutDirection f5361y = a1().getLayoutDirection();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f5362z = 0.8f;
    private long C = o0.p.f70615b.a();
    private final Function2 G = new Function2<androidx.compose.ui.graphics.m1, GraphicsLayer, Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((androidx.compose.ui.graphics.m1) obj, (GraphicsLayer) obj2);
            return Unit.f67061a;
        }

        public final void invoke(final androidx.compose.ui.graphics.m1 m1Var, final GraphicsLayer graphicsLayer) {
            if (!this.this$0.a1().n()) {
                this.this$0.I = true;
                return;
            }
            OwnerSnapshotObserver ownerSnapshotObserverX1 = this.this$0.X1();
            NodeCoordinator nodeCoordinator = this.this$0;
            Function1 function1 = NodeCoordinator.N;
            final NodeCoordinator nodeCoordinator2 = this.this$0;
            ownerSnapshotObserverX1.i(nodeCoordinator, function1, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$drawBlock$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m132invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m132invoke() {
                    nodeCoordinator2.J1(m1Var, graphicsLayer);
                }
            });
            this.this$0.I = false;
        }
    };
    private final Function0 H = new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$invalidateParentLayer$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            m135invoke();
            return Unit.f67061a;
        }

        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public final void m135invoke() {
            NodeCoordinator nodeCoordinatorA2 = this.this$0.a2();
            if (nodeCoordinatorA2 != null) {
                nodeCoordinatorA2.j2();
            }
        }
    };

    public static final class a implements d {
        a() {
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public int a() {
            return s0.a(16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.ui.f$c] */
        /* JADX WARN: Type inference failed for: r10v1, types: [androidx.compose.ui.f$c] */
        /* JADX WARN: Type inference failed for: r10v10 */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v12 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5, types: [androidx.compose.ui.f$c] */
        /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r10v8 */
        /* JADX WARN: Type inference failed for: r10v9 */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.b] */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.b] */
        /* JADX WARN: Type inference failed for: r3v8 */
        /* JADX WARN: Type inference failed for: r3v9 */
        /* JADX WARN: Type inference failed for: r5v4 */
        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public boolean b(androidx.compose.ui.f.c cVar) {
            int iA = s0.a(16);
            ?? bVar = 0;
            while (cVar != 0) {
                if (cVar instanceof e1) {
                    if (((e1) cVar).R()) {
                        return true;
                    }
                } else if ((cVar.f1() & iA) != 0 && (cVar instanceof i)) {
                    androidx.compose.ui.f.c cVarE1 = ((i) cVar).E1();
                    int i11 = 0;
                    while (cVarE1 != null) {
                        if ((cVarE1.f1() & iA) != 0) {
                            i11++;
                            if (i11 == 1) {
                                bVar = bVar;
                                cVar = cVar;
                                bVar = bVar;
                                cVar = cVarE1;
                            } else {
                                if (bVar == 0) {
                                    bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                }
                                if (cVar != 0) {
                                    bVar.b(cVar);
                                    cVar = 0;
                                }
                                bVar.b(cVarE1);
                            }
                        } else {
                            bVar = bVar;
                            cVar = cVar;
                        }
                        cVarE1 = cVarE1.b1();
                        bVar = bVar;
                        cVar = cVar;
                    }
                    if (i11 == 1) {
                        bVar = bVar;
                        cVar = cVar;
                    } else {
                        bVar = bVar;
                        cVar = cVar;
                    }
                }
                cVar = g.g(bVar);
            }
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public void c(LayoutNode layoutNode, long j11, q qVar, boolean z10, boolean z11) {
            layoutNode.q0(j11, qVar, z10, z11);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public boolean d(LayoutNode layoutNode) {
            return true;
        }
    }

    public static final class b implements d {
        b() {
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public int a() {
            return s0.a(8);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public boolean b(androidx.compose.ui.f.c cVar) {
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public void c(LayoutNode layoutNode, long j11, q qVar, boolean z10, boolean z11) {
            layoutNode.s0(j11, qVar, z10, z11);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.d
        public boolean d(LayoutNode layoutNode) {
            androidx.compose.ui.semantics.i iVarF = layoutNode.F();
            boolean z10 = false;
            if (iVarF != null && iVarF.n()) {
                z10 = true;
            }
            return !z10;
        }
    }

    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return NodeCoordinator.R;
        }

        public final d b() {
            return NodeCoordinator.S;
        }
    }

    public interface d {
        int a();

        boolean b(androidx.compose.ui.f.c cVar);

        void c(LayoutNode layoutNode, long j11, q qVar, boolean z10, boolean z11);

        boolean d(LayoutNode layoutNode);
    }

    public NodeCoordinator(LayoutNode layoutNode) {
        this.f5352p = layoutNode;
    }

    private final void D1(NodeCoordinator nodeCoordinator, y.e eVar, boolean z10) {
        if (nodeCoordinator == this) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.f5356t;
        if (nodeCoordinator2 != null) {
            nodeCoordinator2.D1(nodeCoordinator, eVar, z10);
        }
        O1(eVar, z10);
    }

    private final long E1(NodeCoordinator nodeCoordinator, long j11, boolean z10) {
        if (nodeCoordinator == this) {
            return j11;
        }
        NodeCoordinator nodeCoordinator2 = this.f5356t;
        return (nodeCoordinator2 == null || Intrinsics.c(nodeCoordinator, nodeCoordinator2)) ? M1(j11, z10) : M1(nodeCoordinator2.E1(nodeCoordinator, j11, z10), z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G2(final androidx.compose.ui.f.c cVar, final d dVar, final long j11, final q qVar, final boolean z10, final boolean z11, final float f11) {
        if (cVar == null) {
            i2(dVar, j11, qVar, z10, z11);
        } else if (dVar.b(cVar)) {
            qVar.w(cVar, f11, z11, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$speculativeHit$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m136invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m136invoke() {
                    this.this$0.G2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j11, qVar, z10, z11, f11);
                }
            });
        } else {
            G2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j11, qVar, z10, z11, f11);
        }
    }

    private final NodeCoordinator H2(androidx.compose.ui.layout.l lVar) {
        NodeCoordinator nodeCoordinatorA;
        androidx.compose.ui.layout.q qVar = lVar instanceof androidx.compose.ui.layout.q ? (androidx.compose.ui.layout.q) lVar : null;
        if (qVar != null && (nodeCoordinatorA = qVar.a()) != null) {
            return nodeCoordinatorA;
        }
        Intrinsics.f(lVar, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator");
        return (NodeCoordinator) lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J1(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        androidx.compose.ui.f.c cVarD2 = d2(s0.a(4));
        if (cVarD2 == null) {
            u2(m1Var, graphicsLayer);
        } else {
            a1().W().n(m1Var, o0.u.d(k()), this, cVarD2, graphicsLayer);
        }
    }

    public static /* synthetic */ long J2(NodeCoordinator nodeCoordinator, long j11, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toParentPosition-8S9VItk");
        }
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return nodeCoordinator.I2(j11, z10);
    }

    public static /* synthetic */ void M2(NodeCoordinator nodeCoordinator, Function1 function1, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerBlock");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        nodeCoordinator.L2(function1, z10);
    }

    public static /* synthetic */ long N1(NodeCoordinator nodeCoordinator, long j11, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fromParentPosition-8S9VItk");
        }
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return nodeCoordinator.M1(j11, z10);
    }

    private final void N2(boolean z10) {
        y0 y0VarG0;
        if (this.K != null) {
            return;
        }
        w0 w0Var = this.J;
        if (w0Var == null) {
            if (this.f5359w == null) {
                return;
            }
            g0.a.b("null layer with a non-null layerBlock");
            return;
        }
        final Function1 function1 = this.f5359w;
        if (function1 == null) {
            g0.a.c("updateLayerParameters requires a non-null layerBlock");
            throw new KotlinNothingValueException();
        }
        x4 x4Var = O;
        x4Var.P();
        x4Var.R(a1().H());
        x4Var.U(a1().getLayoutDirection());
        x4Var.V(o0.u.d(k()));
        X1().i(this, M, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$updateLayerParameters$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m137invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m137invoke() {
                function1.invoke(NodeCoordinator.O);
                NodeCoordinator.O.Y();
            }
        });
        u uVar = this.F;
        if (uVar == null) {
            uVar = new u();
            this.F = uVar;
        }
        uVar.a(x4Var);
        w0Var.updateLayerProperties(x4Var);
        this.f5358v = x4Var.z();
        this.f5362z = x4Var.n();
        if (!z10 || (y0VarG0 = a1().g0()) == null) {
            return;
        }
        y0VarG0.onLayoutChange(a1());
    }

    private final void O1(y.e eVar, boolean z10) {
        float fH = o0.p.h(e1());
        eVar.i(eVar.b() - fH);
        eVar.j(eVar.c() - fH);
        float fI = o0.p.i(e1());
        eVar.k(eVar.d() - fI);
        eVar.h(eVar.a() - fI);
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.mapBounds(eVar, true);
            if (this.f5358v && z10) {
                eVar.e(0.0f, 0.0f, o0.t.g(k()), o0.t.f(k()));
                eVar.f();
            }
        }
    }

    static /* synthetic */ void O2(NodeCoordinator nodeCoordinator, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateLayerParameters");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        nodeCoordinator.N2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver X1() {
        return f0.b(a1()).getSnapshotObserver();
    }

    private final boolean c2(int i11) {
        androidx.compose.ui.f.c cVarE2 = e2(t0.i(i11));
        return cVarE2 != null && g.e(cVarE2, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final androidx.compose.ui.f.c e2(boolean z10) {
        androidx.compose.ui.f.c cVarY1;
        if (a1().f0() == this) {
            return a1().e0().k();
        }
        if (z10) {
            NodeCoordinator nodeCoordinator = this.f5356t;
            if (nodeCoordinator != null && (cVarY1 = nodeCoordinator.Y1()) != null) {
                return cVarY1.b1();
            }
        } else {
            NodeCoordinator nodeCoordinator2 = this.f5356t;
            if (nodeCoordinator2 != null) {
                return nodeCoordinator2.Y1();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f2(final androidx.compose.ui.f.c cVar, final d dVar, final long j11, final q qVar, final boolean z10, final boolean z11) {
        if (cVar == null) {
            i2(dVar, j11, qVar, z10, z11);
        } else {
            qVar.q(cVar, z11, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$hit$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m133invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m133invoke() {
                    this.this$0.f2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j11, qVar, z10, z11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g2(final androidx.compose.ui.f.c cVar, final d dVar, final long j11, final q qVar, final boolean z10, final boolean z11, final float f11) {
        if (cVar == null) {
            i2(dVar, j11, qVar, z10, z11);
        } else {
            qVar.r(cVar, f11, z11, new Function0<Unit>() { // from class: androidx.compose.ui.node.NodeCoordinator$hitNear$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m134invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m134invoke() {
                    this.this$0.g2(r0.b(cVar, dVar.a(), s0.a(2)), dVar, j11, qVar, z10, z11, f11);
                }
            });
        }
    }

    private final long m2(long j11) {
        float fM = y.g.m(j11);
        float fMax = Math.max(0.0f, fM < 0.0f ? -fM : fM - s0());
        float fN = y.g.n(j11);
        return y.h.a(fMax, Math.max(0.0f, fN < 0.0f ? -fN : fN - o0()));
    }

    private final void v2(long j11, float f11, Function1 function1, GraphicsLayer graphicsLayer) {
        if (graphicsLayer != null) {
            if (!(function1 == null)) {
                g0.a.a("both ways to create layers shouldn't be used together");
            }
            if (this.K != graphicsLayer) {
                this.K = null;
                M2(this, null, false, 2, null);
                this.K = graphicsLayer;
            }
            if (this.J == null) {
                w0 w0VarCreateLayer = f0.b(a1()).createLayer(this.G, this.H, graphicsLayer);
                w0VarCreateLayer.mo141resizeozmzZPI(r0());
                w0VarCreateLayer.mo140movegyyYBs(j11);
                this.J = w0VarCreateLayer;
                a1().m1(true);
                this.H.invoke();
            }
        } else {
            if (this.K != null) {
                this.K = null;
                M2(this, null, false, 2, null);
            }
            M2(this, function1, false, 2, null);
        }
        if (!o0.p.g(e1(), j11)) {
            C2(j11);
            a1().P().I().l1();
            w0 w0Var = this.J;
            if (w0Var != null) {
                w0Var.mo140movegyyYBs(j11);
            } else {
                NodeCoordinator nodeCoordinator = this.f5356t;
                if (nodeCoordinator != null) {
                    nodeCoordinator.j2();
                }
            }
            g1(this);
            y0 y0VarG0 = a1().g0();
            if (y0VarG0 != null) {
                y0VarG0.onLayoutChange(a1());
            }
        }
        this.D = f11;
        if (j1()) {
            return;
        }
        R0(b1());
    }

    public static /* synthetic */ void y2(NodeCoordinator nodeCoordinator, y.e eVar, boolean z10, boolean z11, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rectInParent");
        }
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        nodeCoordinator.x2(eVar, z10, z11);
    }

    public final void A2(boolean z10) {
        this.f5353q = z10;
    }

    @Override // androidx.compose.ui.layout.l
    public long B(androidx.compose.ui.layout.l lVar, long j11, boolean z10) {
        if (lVar instanceof androidx.compose.ui.layout.q) {
            ((androidx.compose.ui.layout.q) lVar).a().n2();
            return y.g.u(lVar.B(this, y.g.u(j11), z10));
        }
        NodeCoordinator nodeCoordinatorH2 = H2(lVar);
        nodeCoordinatorH2.n2();
        NodeCoordinator nodeCoordinatorL1 = L1(nodeCoordinatorH2);
        while (nodeCoordinatorH2 != nodeCoordinatorL1) {
            j11 = nodeCoordinatorH2.I2(j11, z10);
            nodeCoordinatorH2 = nodeCoordinatorH2.f5356t;
            Intrinsics.e(nodeCoordinatorH2);
        }
        return E1(nodeCoordinatorL1, j11, z10);
    }

    public void B2(androidx.compose.ui.layout.v vVar) {
        androidx.compose.ui.layout.v vVar2 = this.A;
        if (vVar != vVar2) {
            this.A = vVar;
            if (vVar2 == null || vVar.getWidth() != vVar2.getWidth() || vVar.getHeight() != vVar2.getHeight()) {
                q2(vVar.getWidth(), vVar.getHeight());
            }
            Map map = this.B;
            if (((map == null || map.isEmpty()) && vVar.v().isEmpty()) || Intrinsics.c(vVar.v(), this.B)) {
                return;
            }
            P1().v().m();
            Map linkedHashMap = this.B;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                this.B = linkedHashMap;
            }
            linkedHashMap.clear();
            linkedHashMap.putAll(vVar.v());
        }
    }

    @Override // androidx.compose.ui.layout.l
    public long C(androidx.compose.ui.layout.l lVar, long j11) {
        return B(lVar, j11, true);
    }

    @Override // o0.n
    public float C0() {
        return a1().H().C0();
    }

    protected void C2(long j11) {
        this.C = j11;
    }

    public final void D2(NodeCoordinator nodeCoordinator) {
        this.f5355s = nodeCoordinator;
    }

    public final void E2(NodeCoordinator nodeCoordinator) {
        this.f5356t = nodeCoordinator;
    }

    @Override // androidx.compose.ui.layout.l
    public boolean F() {
        return Y1().k1();
    }

    protected final long F1(long j11) {
        return y.n.a(Math.max(0.0f, (y.m.i(j11) - s0()) / 2.0f), Math.max(0.0f, (y.m.g(j11) - o0()) / 2.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public final boolean F2() {
        androidx.compose.ui.f.c cVarE2 = e2(t0.i(s0.a(16)));
        if (cVarE2 != null && cVarE2.k1()) {
            int iA = s0.a(16);
            if (!cVarE2.getNode().k1()) {
                g0.a.b("visitLocalDescendants called on an unattached node");
            }
            androidx.compose.ui.f.c node = cVarE2.getNode();
            if ((node.a1() & iA) != 0) {
                while (node != null) {
                    if ((node.f1() & iA) != 0) {
                        ?? G = node;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof e1) {
                                if (((e1) G).P0()) {
                                    return true;
                                }
                            } else if ((G.f1() & iA) != 0 && (G instanceof i)) {
                                androidx.compose.ui.f.c cVarE1 = ((i) G).E1();
                                int i11 = 0;
                                while (cVarE1 != null) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            G = G;
                                            bVar = bVar;
                                            bVar = bVar;
                                            G = cVarE1;
                                        } else {
                                            if (bVar == 0) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (G != 0) {
                                                bVar.b(G);
                                                G = 0;
                                            }
                                            bVar.b(cVarE1);
                                        }
                                    } else {
                                        G = G;
                                        bVar = bVar;
                                    }
                                    cVarE1 = cVarE1.b1();
                                    G = G;
                                    bVar = bVar;
                                }
                                if (i11 == 1) {
                                    G = G;
                                    bVar = bVar;
                                } else {
                                    G = G;
                                    bVar = bVar;
                                }
                            }
                            G = g.g(bVar);
                        }
                    }
                    node = node.b1();
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v6 */
    @Override // androidx.compose.ui.layout.g0, androidx.compose.ui.layout.i
    public Object G() {
        if (!a1().e0().q(s0.a(64))) {
            return null;
        }
        Y1();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        for (androidx.compose.ui.f.c cVarO = a1().e0().o(); cVarO != null; cVarO = cVarO.h1()) {
            if ((s0.a(64) & cVarO.f1()) != 0) {
                int iA = s0.a(64);
                ?? bVar = 0;
                ?? G = cVarO;
                while (G != 0) {
                    if (G instanceof a1) {
                        objectRef.element = ((a1) G).v0(a1().H(), objectRef.element);
                    } else if ((G.f1() & iA) != 0 && (G instanceof i)) {
                        androidx.compose.ui.f.c cVarE1 = ((i) G).E1();
                        int i11 = 0;
                        G = G;
                        bVar = bVar;
                        while (cVarE1 != null) {
                            if ((cVarE1.f1() & iA) != 0) {
                                i11++;
                                if (i11 == 1) {
                                    bVar = bVar;
                                    G = cVarE1;
                                } else {
                                    if (bVar == 0) {
                                        bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                    }
                                    if (G != 0) {
                                        bVar.b(G);
                                        G = 0;
                                    }
                                    bVar.b(cVarE1);
                                }
                            }
                            cVarE1 = cVarE1.b1();
                            G = G;
                            bVar = bVar;
                        }
                        if (i11 == 1) {
                        }
                    }
                    G = g.g(bVar);
                }
            }
        }
        return objectRef.element;
    }

    protected final float G1(long j11, long j12) {
        if (s0() >= y.m.i(j12) && o0() >= y.m.g(j12)) {
            return Float.POSITIVE_INFINITY;
        }
        long jF1 = F1(j12);
        float fI = y.m.i(jF1);
        float fG = y.m.g(jF1);
        long jM2 = m2(j11);
        if ((fI > 0.0f || fG > 0.0f) && y.g.m(jM2) <= fI && y.g.n(jM2) <= fG) {
            return y.g.l(jM2);
        }
        return Float.POSITIVE_INFINITY;
    }

    public final void H1(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.drawLayer(m1Var, graphicsLayer);
            return;
        }
        float fH = o0.p.h(e1());
        float fI = o0.p.i(e1());
        m1Var.c(fH, fI);
        J1(m1Var, graphicsLayer);
        m1Var.c(-fH, -fI);
    }

    protected final void I1(androidx.compose.ui.graphics.m1 m1Var, m4 m4Var) {
        m1Var.i(new y.i(0.5f, 0.5f, o0.t.g(r0()) - 0.5f, o0.t.f(r0()) - 0.5f), m4Var);
    }

    public long I2(long j11, boolean z10) {
        w0 w0Var = this.J;
        if (w0Var != null) {
            j11 = w0Var.mo139mapOffset8S9VItk(j11, false);
        }
        return (z10 || !i1()) ? o0.q.c(j11, e1()) : j11;
    }

    public abstract void K1();

    public final y.i K2() {
        if (!F()) {
            return y.i.f78475e.a();
        }
        androidx.compose.ui.layout.l lVarD = androidx.compose.ui.layout.m.d(this);
        y.e eVarW1 = W1();
        long jF1 = F1(V1());
        eVarW1.i(-y.m.i(jF1));
        eVarW1.k(-y.m.g(jF1));
        eVarW1.j(s0() + y.m.i(jF1));
        eVarW1.h(o0() + y.m.g(jF1));
        NodeCoordinator nodeCoordinator = this;
        while (nodeCoordinator != lVarD) {
            nodeCoordinator.x2(eVarW1, false, true);
            if (eVarW1.f()) {
                return y.i.f78475e.a();
            }
            nodeCoordinator = nodeCoordinator.f5356t;
            Intrinsics.e(nodeCoordinator);
        }
        return y.f.a(eVarW1);
    }

    @Override // androidx.compose.ui.layout.l
    public long L(long j11) {
        return f0.b(a1()).mo142calculatePositionInWindowMKHz9U(Y(j11));
    }

    public final NodeCoordinator L1(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNodeA1 = nodeCoordinator.a1();
        LayoutNode layoutNodeA2 = a1();
        if (layoutNodeA1 == layoutNodeA2) {
            androidx.compose.ui.f.c cVarY1 = nodeCoordinator.Y1();
            androidx.compose.ui.f.c cVarY2 = Y1();
            int iA = s0.a(2);
            if (!cVarY2.getNode().k1()) {
                g0.a.b("visitLocalAncestors called on an unattached node");
            }
            for (androidx.compose.ui.f.c cVarH1 = cVarY2.getNode().h1(); cVarH1 != null; cVarH1 = cVarH1.h1()) {
                if ((cVarH1.f1() & iA) != 0 && cVarH1 == cVarY1) {
                    return nodeCoordinator;
                }
            }
            return this;
        }
        while (layoutNodeA1.I() > layoutNodeA2.I()) {
            layoutNodeA1 = layoutNodeA1.h0();
            Intrinsics.e(layoutNodeA1);
        }
        while (layoutNodeA2.I() > layoutNodeA1.I()) {
            layoutNodeA2 = layoutNodeA2.h0();
            Intrinsics.e(layoutNodeA2);
        }
        while (layoutNodeA1 != layoutNodeA2) {
            layoutNodeA1 = layoutNodeA1.h0();
            layoutNodeA2 = layoutNodeA2.h0();
            if (layoutNodeA1 == null || layoutNodeA2 == null) {
                throw new IllegalArgumentException("layouts are not part of the same hierarchy");
            }
        }
        if (layoutNodeA2 == a1()) {
            return this;
        }
        return layoutNodeA1 == nodeCoordinator.a1() ? nodeCoordinator : layoutNodeA1.M();
    }

    public final void L2(Function1 function1, boolean z10) {
        y0 y0VarG0;
        if (!(function1 == null || this.K == null)) {
            g0.a.a("layerBlock can't be provided when explicitLayer is provided");
        }
        LayoutNode layoutNodeA1 = a1();
        boolean z11 = (!z10 && this.f5359w == function1 && Intrinsics.c(this.f5360x, layoutNodeA1.H()) && this.f5361y == layoutNodeA1.getLayoutDirection()) ? false : true;
        this.f5360x = layoutNodeA1.H();
        this.f5361y = layoutNodeA1.getLayoutDirection();
        if (!layoutNodeA1.D0() || function1 == null) {
            this.f5359w = null;
            w0 w0Var = this.J;
            if (w0Var != null) {
                w0Var.destroy();
                layoutNodeA1.m1(true);
                this.H.invoke();
                if (F() && (y0VarG0 = layoutNodeA1.g0()) != null) {
                    y0VarG0.onLayoutChange(layoutNodeA1);
                }
            }
            this.J = null;
            this.I = false;
            return;
        }
        this.f5359w = function1;
        if (this.J != null) {
            if (z11) {
                O2(this, false, 1, null);
                return;
            }
            return;
        }
        w0 w0VarA = x0.a(f0.b(layoutNodeA1), this.G, this.H, null, 4, null);
        w0VarA.mo141resizeozmzZPI(r0());
        w0VarA.mo140movegyyYBs(e1());
        this.J = w0VarA;
        O2(this, false, 1, null);
        layoutNodeA1.m1(true);
        this.H.invoke();
    }

    public long M1(long j11, boolean z10) {
        if (z10 || !i1()) {
            j11 = o0.q.b(j11, e1());
        }
        w0 w0Var = this.J;
        return w0Var != null ? w0Var.mo139mapOffset8S9VItk(j11, true) : j11;
    }

    @Override // androidx.compose.ui.layout.l
    public y.i O(androidx.compose.ui.layout.l lVar, boolean z10) {
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        if (!lVar.F()) {
            g0.a.b("LayoutCoordinates " + lVar + " is not attached!");
        }
        NodeCoordinator nodeCoordinatorH2 = H2(lVar);
        nodeCoordinatorH2.n2();
        NodeCoordinator nodeCoordinatorL1 = L1(nodeCoordinatorH2);
        y.e eVarW1 = W1();
        eVarW1.i(0.0f);
        eVarW1.k(0.0f);
        eVarW1.j(o0.t.g(lVar.k()));
        eVarW1.h(o0.t.f(lVar.k()));
        while (nodeCoordinatorH2 != nodeCoordinatorL1) {
            y2(nodeCoordinatorH2, eVarW1, z10, false, 4, null);
            if (eVarW1.f()) {
                return y.i.f78475e.a();
            }
            nodeCoordinatorH2 = nodeCoordinatorH2.f5356t;
            Intrinsics.e(nodeCoordinatorH2);
        }
        D1(nodeCoordinatorL1, eVarW1, z10);
        return y.f.a(eVarW1);
    }

    public androidx.compose.ui.node.a P1() {
        return a1().P().r();
    }

    protected final boolean P2(long j11) {
        if (!y.h.b(j11)) {
            return false;
        }
        w0 w0Var = this.J;
        return w0Var == null || !this.f5358v || w0Var.mo138isInLayerk4lQ0M(j11);
    }

    public final boolean Q1() {
        return this.f5354r;
    }

    @Override // androidx.compose.ui.layout.l
    public final androidx.compose.ui.layout.l R() {
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        n2();
        return a1().f0().f5356t;
    }

    public final boolean R1() {
        return this.I;
    }

    public final long S1() {
        return t0();
    }

    public final w0 T1() {
        return this.J;
    }

    public abstract j0 U1();

    public final long V1() {
        return this.f5360x.Q0(a1().l0().d());
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable W0() {
        return this.f5355s;
    }

    protected final y.e W1() {
        y.e eVar = this.E;
        if (eVar != null) {
            return eVar;
        }
        y.e eVar2 = new y.e(0.0f, 0.0f, 0.0f, 0.0f);
        this.E = eVar2;
        return eVar2;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public androidx.compose.ui.layout.l X0() {
        return this;
    }

    @Override // androidx.compose.ui.layout.l
    public long Y(long j11) {
        if (!F()) {
            g0.a.b("LayoutCoordinate operations are only valid when isAttached is true");
        }
        n2();
        long jJ2 = j11;
        for (NodeCoordinator nodeCoordinator = this; nodeCoordinator != null; nodeCoordinator = nodeCoordinator.f5356t) {
            jJ2 = J2(nodeCoordinator, jJ2, false, 2, null);
        }
        return jJ2;
    }

    public abstract androidx.compose.ui.f.c Y1();

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public boolean Z0() {
        return this.A != null;
    }

    public final NodeCoordinator Z1() {
        return this.f5355s;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutNode a1() {
        return this.f5352p;
    }

    public final NodeCoordinator a2() {
        return this.f5356t;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public androidx.compose.ui.layout.v b1() {
        androidx.compose.ui.layout.v vVar = this.A;
        if (vVar != null) {
            return vVar;
        }
        throw new IllegalStateException("Asking for measurement result of unmeasured layout modifier");
    }

    public final float b2() {
        return this.D;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable c1() {
        return this.f5356t;
    }

    public final androidx.compose.ui.f.c d2(int i11) {
        boolean zI = t0.i(i11);
        androidx.compose.ui.f.c cVarY1 = Y1();
        if (!zI && (cVarY1 = cVarY1.h1()) == null) {
            return null;
        }
        for (androidx.compose.ui.f.c cVarE2 = e2(zI); cVarE2 != null && (cVarE2.a1() & i11) != 0; cVarE2 = cVarE2.b1()) {
            if ((cVarE2.f1() & i11) != 0) {
                return cVarE2;
            }
            if (cVarE2 == cVarY1) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public long e1() {
        return this.C;
    }

    @Override // o0.e
    public float getDensity() {
        return a1().H().getDensity();
    }

    @Override // androidx.compose.ui.layout.j
    public LayoutDirection getLayoutDirection() {
        return a1().getLayoutDirection();
    }

    public final void h2(d dVar, long j11, q qVar, boolean z10, boolean z11) {
        androidx.compose.ui.f.c cVarD2 = d2(dVar.a());
        if (!P2(j11)) {
            if (z10) {
                float fG1 = G1(j11, V1());
                if (Float.isInfinite(fG1) || Float.isNaN(fG1) || !qVar.t(fG1, false)) {
                    return;
                }
                g2(cVarD2, dVar, j11, qVar, z10, false, fG1);
                return;
            }
            return;
        }
        if (cVarD2 == null) {
            i2(dVar, j11, qVar, z10, z11);
            return;
        }
        if (k2(j11)) {
            f2(cVarD2, dVar, j11, qVar, z10, z11);
            return;
        }
        float fG2 = !z10 ? Float.POSITIVE_INFINITY : G1(j11, V1());
        if (!Float.isInfinite(fG2) && !Float.isNaN(fG2)) {
            if (qVar.t(fG2, z11)) {
                g2(cVarD2, dVar, j11, qVar, z10, z11, fG2);
                return;
            }
        }
        G2(cVarD2, dVar, j11, qVar, z10, z11, fG2);
    }

    public void i2(d dVar, long j11, q qVar, boolean z10, boolean z11) {
        NodeCoordinator nodeCoordinator = this.f5355s;
        if (nodeCoordinator != null) {
            nodeCoordinator.h2(dVar, N1(nodeCoordinator, j11, false, 2, null), qVar, z10, z11);
        }
    }

    @Override // androidx.compose.ui.node.z0
    public boolean isValidOwnerScope() {
        return (this.J == null || this.f5357u || !a1().D0()) ? false : true;
    }

    public void j2() {
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.invalidate();
            return;
        }
        NodeCoordinator nodeCoordinator = this.f5356t;
        if (nodeCoordinator != null) {
            nodeCoordinator.j2();
        }
    }

    @Override // androidx.compose.ui.layout.l
    public final long k() {
        return r0();
    }

    protected final boolean k2(long j11) {
        float fM = y.g.m(j11);
        float fN = y.g.n(j11);
        return fM >= 0.0f && fN >= 0.0f && fM < ((float) s0()) && fN < ((float) o0());
    }

    public final boolean l2() {
        if (this.J != null && this.f5362z <= 0.0f) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.f5356t;
        if (nodeCoordinator != null) {
            return nodeCoordinator.l2();
        }
        return false;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public void m1() {
        GraphicsLayer graphicsLayer = this.K;
        if (graphicsLayer != null) {
            w0(e1(), this.D, graphicsLayer);
        } else {
            z0(e1(), this.D, this.f5359w);
        }
    }

    public final void n2() {
        a1().P().S();
    }

    public void o2() {
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.invalidate();
        }
    }

    public final void p2() {
        L2(this.f5359w, true);
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v4 */
    protected void q2(int i11, int i12) {
        NodeCoordinator nodeCoordinator;
        w0 w0Var = this.J;
        if (w0Var != null) {
            w0Var.mo141resizeozmzZPI(o0.u.a(i11, i12));
        } else if (a1().n() && (nodeCoordinator = this.f5356t) != null) {
            nodeCoordinator.j2();
        }
        B0(o0.u.a(i11, i12));
        if (this.f5359w != null) {
            N2(false);
        }
        int iA = s0.a(4);
        boolean zI = t0.i(iA);
        androidx.compose.ui.f.c cVarY1 = Y1();
        if (zI || (cVarY1 = cVarY1.h1()) != null) {
            for (androidx.compose.ui.f.c cVarE2 = e2(zI); cVarE2 != null && (cVarE2.a1() & iA) != 0; cVarE2 = cVarE2.b1()) {
                if ((cVarE2.f1() & iA) != 0) {
                    ?? G = cVarE2;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof n) {
                            ((n) G).w0();
                        } else if ((G.f1() & iA) != 0 && (G instanceof i)) {
                            androidx.compose.ui.f.c cVarE1 = ((i) G).E1();
                            int i13 = 0;
                            G = G;
                            bVar = bVar;
                            while (cVarE1 != null) {
                                if ((cVarE1.f1() & iA) != 0) {
                                    i13++;
                                    if (i13 == 1) {
                                        bVar = bVar;
                                        G = cVarE1;
                                    } else {
                                        if (bVar == 0) {
                                            bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                        }
                                        if (G != 0) {
                                            bVar.b(G);
                                            G = 0;
                                        }
                                        bVar.b(cVarE1);
                                    }
                                }
                                cVarE1 = cVarE1.b1();
                                G = G;
                                bVar = bVar;
                            }
                            if (i13 == 1) {
                            }
                        }
                        G = g.g(bVar);
                    }
                }
                if (cVarE2 == cVarY1) {
                    break;
                }
            }
        }
        y0 y0VarG0 = a1().g0();
        if (y0VarG0 != null) {
            y0VarG0.onLayoutChange(a1());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v2, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.lang.Object] */
    public final void r2() {
        androidx.compose.ui.f.c cVarH1;
        if (c2(s0.a(128))) {
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            try {
                int iA = s0.a(128);
                boolean zI = t0.i(iA);
                if (!zI) {
                    cVarH1 = Y1().h1();
                    if (cVarH1 == null) {
                    }
                    Unit unit = Unit.f67061a;
                }
                cVarH1 = Y1();
                for (androidx.compose.ui.f.c cVarE2 = e2(zI); cVarE2 != null && (cVarE2.a1() & iA) != 0; cVarE2 = cVarE2.b1()) {
                    if ((cVarE2.f1() & iA) != 0) {
                        ?? bVar = 0;
                        ?? G = cVarE2;
                        while (G != 0) {
                            if (G instanceof w) {
                                ((w) G).F(r0());
                            } else if ((G.f1() & iA) != 0 && (G instanceof i)) {
                                androidx.compose.ui.f.c cVarE1 = ((i) G).E1();
                                int i11 = 0;
                                while (cVarE1 != null) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            G = G;
                                            bVar = bVar;
                                            bVar = bVar;
                                            G = cVarE1;
                                        } else {
                                            if (bVar == 0) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (G != 0) {
                                                bVar.b(G);
                                                G = 0;
                                            }
                                            bVar.b(cVarE1);
                                        }
                                    } else {
                                        G = G;
                                        bVar = bVar;
                                    }
                                    cVarE1 = cVarE1.b1();
                                    G = G;
                                    bVar = bVar;
                                }
                                if (i11 == 1) {
                                    G = G;
                                    bVar = bVar;
                                } else {
                                    G = G;
                                    bVar = bVar;
                                }
                            }
                            G = g.g(bVar);
                        }
                    }
                    if (cVarE2 == cVarH1) {
                        break;
                    }
                }
                Unit unit2 = Unit.f67061a;
            } finally {
                aVar.m(jVarD, jVarF, function1H);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r6v4 */
    public final void s2() {
        int iA = s0.a(128);
        boolean zI = t0.i(iA);
        androidx.compose.ui.f.c cVarY1 = Y1();
        if (!zI && (cVarY1 = cVarY1.h1()) == null) {
            return;
        }
        for (androidx.compose.ui.f.c cVarE2 = e2(zI); cVarE2 != null && (cVarE2.a1() & iA) != 0; cVarE2 = cVarE2.b1()) {
            if ((cVarE2.f1() & iA) != 0) {
                ?? G = cVarE2;
                ?? bVar = 0;
                while (G != 0) {
                    if (G instanceof w) {
                        ((w) G).I(this);
                    } else if ((G.f1() & iA) != 0 && (G instanceof i)) {
                        androidx.compose.ui.f.c cVarE1 = ((i) G).E1();
                        int i11 = 0;
                        G = G;
                        bVar = bVar;
                        while (cVarE1 != null) {
                            if ((cVarE1.f1() & iA) != 0) {
                                i11++;
                                if (i11 == 1) {
                                    bVar = bVar;
                                    G = cVarE1;
                                } else {
                                    if (bVar == 0) {
                                        bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                    }
                                    if (G != 0) {
                                        bVar.b(G);
                                        G = 0;
                                    }
                                    bVar.b(cVarE1);
                                }
                            }
                            cVarE1 = cVarE1.b1();
                            G = G;
                            bVar = bVar;
                        }
                        if (i11 == 1) {
                        }
                    }
                    G = g.g(bVar);
                }
            }
            if (cVarE2 == cVarY1) {
                return;
            }
        }
    }

    public final void t2() {
        this.f5357u = true;
        this.H.invoke();
        z2();
    }

    public abstract void u2(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.g0
    public void w0(long j11, float f11, GraphicsLayer graphicsLayer) {
        if (!this.f5353q) {
            v2(j11, f11, null, graphicsLayer);
            return;
        }
        j0 j0VarU1 = U1();
        Intrinsics.e(j0VarU1);
        v2(j0VarU1.e1(), f11, null, graphicsLayer);
    }

    public final void w2(long j11, float f11, Function1 function1, GraphicsLayer graphicsLayer) {
        v2(o0.p.l(j11, k0()), f11, function1, graphicsLayer);
    }

    public final void x2(y.e eVar, boolean z10, boolean z11) {
        w0 w0Var = this.J;
        if (w0Var != null) {
            if (this.f5358v) {
                if (z11) {
                    long jV1 = V1();
                    float fI = y.m.i(jV1) / 2.0f;
                    float fG = y.m.g(jV1) / 2.0f;
                    eVar.e(-fI, -fG, o0.t.g(k()) + fI, o0.t.f(k()) + fG);
                } else if (z10) {
                    eVar.e(0.0f, 0.0f, o0.t.g(k()), o0.t.f(k()));
                }
                if (eVar.f()) {
                    return;
                }
            }
            w0Var.mapBounds(eVar, false);
        }
        float fH = o0.p.h(e1());
        eVar.i(eVar.b() + fH);
        eVar.j(eVar.c() + fH);
        float fI2 = o0.p.i(e1());
        eVar.k(eVar.d() + fI2);
        eVar.h(eVar.a() + fI2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.g0
    public void z0(long j11, float f11, Function1 function1) {
        if (!this.f5353q) {
            v2(j11, f11, function1, null);
            return;
        }
        j0 j0VarU1 = U1();
        Intrinsics.e(j0VarU1);
        v2(j0VarU1.e1(), f11, function1, null);
    }

    public final void z2() {
        if (this.J != null) {
            if (this.K != null) {
                this.K = null;
            }
            M2(this, null, false, 2, null);
            LayoutNode.f1(a1(), false, 1, null);
        }
    }
}
