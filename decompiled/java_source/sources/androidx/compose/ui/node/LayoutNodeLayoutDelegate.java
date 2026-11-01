package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutNodeLayoutDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutNode f5267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5268b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5273g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5274h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f5275i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f5276j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f5277k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f5278l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f5279m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f5280n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f5281o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f5282p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f5283q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LookaheadPassDelegate f5285s;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutNode.LayoutState f5269c = LayoutNode.LayoutState.Idle;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final MeasurePassDelegate f5284r = new MeasurePassDelegate();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f5286t = o0.c.b(0, 0, 0, 0, 15, null);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Function0 f5287u = new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$performMeasureBlock$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            m130invoke();
            return Unit.f67061a;
        }

        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public final void m130invoke() {
            this.this$0.K().P(this.this$0.f5286t);
        }
    };

    public final class LookaheadPassDelegate extends androidx.compose.ui.layout.g0 implements androidx.compose.ui.layout.s, androidx.compose.ui.node.a, m0 {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f5288f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f5292j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f5293k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f5294l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private o0.b f5295m;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private float f5297o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private Function1 f5298p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private GraphicsLayer f5299q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private boolean f5300r;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private boolean f5304v;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private boolean f5307y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private boolean f5308z;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f5289g = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f5290h = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private LayoutNode.UsageByParent f5291i = LayoutNode.UsageByParent.NotUsed;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private long f5296n = o0.p.f70615b.a();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final AlignmentLines f5301s = new i0(this);

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final androidx.compose.runtime.collection.b f5302t = new androidx.compose.runtime.collection.b(new LookaheadPassDelegate[16], 0);

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f5303u = true;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private boolean f5305w = true;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private Object f5306x = X0().G();

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f5309a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final /* synthetic */ int[] f5310b;

            static {
                int[] iArr = new int[LayoutNode.LayoutState.values().length];
                try {
                    iArr[LayoutNode.LayoutState.LookaheadMeasuring.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                f5309a = iArr;
                int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
                try {
                    iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
                } catch (NoSuchFieldError unused6) {
                }
                f5310b = iArr2;
            }
        }

        public LookaheadPassDelegate() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void P0() {
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LookaheadPassDelegate lookaheadPassDelegateH = ((LayoutNode) objArrM[i11]).P().H();
                    Intrinsics.e(lookaheadPassDelegateH);
                    int i12 = lookaheadPassDelegateH.f5289g;
                    int i13 = lookaheadPassDelegateH.f5290h;
                    if (i12 != i13 && i13 == Integer.MAX_VALUE) {
                        lookaheadPassDelegateH.e1();
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void R0() {
            int i11 = 0;
            LayoutNodeLayoutDelegate.this.f5276j = 0;
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                do {
                    LookaheadPassDelegate lookaheadPassDelegateH = ((LayoutNode) objArrM[i11]).P().H();
                    Intrinsics.e(lookaheadPassDelegateH);
                    lookaheadPassDelegateH.f5289g = lookaheadPassDelegateH.f5290h;
                    lookaheadPassDelegateH.f5290h = Integer.MAX_VALUE;
                    if (lookaheadPassDelegateH.f5291i == LayoutNode.UsageByParent.InLayoutBlock) {
                        lookaheadPassDelegateH.f5291i = LayoutNode.UsageByParent.NotUsed;
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        private final void d1() {
            boolean zN = n();
            p1(true);
            if (!zN && LayoutNodeLayoutDelegate.this.G()) {
                LayoutNode.d1(LayoutNodeLayoutDelegate.this.f5267a, true, false, false, 6, null);
            }
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                    LookaheadPassDelegate lookaheadPassDelegateU = layoutNode.U();
                    if (lookaheadPassDelegateU == null) {
                        throw new IllegalArgumentException("Error: Child node's lookahead pass delegate cannot be null when in a lookahead scope.");
                    }
                    if (lookaheadPassDelegateU.f5290h != Integer.MAX_VALUE) {
                        lookaheadPassDelegateU.d1();
                        layoutNode.i1(layoutNode);
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        private final void e1() {
            if (n()) {
                int i11 = 0;
                p1(false);
                androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
                int iN = bVarP0.n();
                if (iN > 0) {
                    Object[] objArrM = bVarP0.m();
                    do {
                        LookaheadPassDelegate lookaheadPassDelegateH = ((LayoutNode) objArrM[i11]).P().H();
                        Intrinsics.e(lookaheadPassDelegateH);
                        lookaheadPassDelegateH.e1();
                        i11++;
                    } while (i11 < iN);
                }
            }
        }

        private final void g1() {
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i11];
                    if (layoutNode2.T() && layoutNode2.b0() == LayoutNode.UsageByParent.InMeasureBlock) {
                        LookaheadPassDelegate lookaheadPassDelegateH = layoutNode2.P().H();
                        Intrinsics.e(lookaheadPassDelegateH);
                        o0.b bVarZ = layoutNode2.P().z();
                        Intrinsics.e(bVarZ);
                        if (lookaheadPassDelegateH.k1(bVarZ.r())) {
                            LayoutNode.d1(layoutNodeLayoutDelegate.f5267a, false, false, false, 7, null);
                        }
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        private final void j1(final long j11, float f11, Function1 function1, GraphicsLayer graphicsLayer) {
            if (LayoutNodeLayoutDelegate.this.f5267a.E0()) {
                g0.a.a("place is called on a deactivated node");
            }
            LayoutNodeLayoutDelegate.this.f5269c = LayoutNode.LayoutState.LookaheadLayingOut;
            this.f5293k = true;
            this.f5308z = false;
            if (!o0.p.g(j11, this.f5296n)) {
                if (LayoutNodeLayoutDelegate.this.D() || LayoutNodeLayoutDelegate.this.E()) {
                    LayoutNodeLayoutDelegate.this.f5274h = true;
                }
                f1();
            }
            final y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f5267a);
            if (LayoutNodeLayoutDelegate.this.F() || !n()) {
                LayoutNodeLayoutDelegate.this.a0(false);
                v().r(false);
                OwnerSnapshotObserver snapshotObserver = y0VarB.getSnapshotObserver();
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
                final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
                OwnerSnapshotObserver.d(snapshotObserver, layoutNode, false, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$LookaheadPassDelegate$placeSelf$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m126invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m126invoke() {
                        j0 j0VarU1;
                        androidx.compose.ui.layout.g0.a aVarD1 = null;
                        if (g0.a(layoutNodeLayoutDelegate.f5267a)) {
                            NodeCoordinator nodeCoordinatorA2 = layoutNodeLayoutDelegate.K().a2();
                            if (nodeCoordinatorA2 != null) {
                                aVarD1 = nodeCoordinatorA2.d1();
                            }
                        } else {
                            NodeCoordinator nodeCoordinatorA3 = layoutNodeLayoutDelegate.K().a2();
                            if (nodeCoordinatorA3 != null && (j0VarU1 = nodeCoordinatorA3.U1()) != null) {
                                aVarD1 = j0VarU1.d1();
                            }
                        }
                        if (aVarD1 == null) {
                            aVarD1 = y0VarB.getPlacementScope();
                        }
                        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = layoutNodeLayoutDelegate;
                        long j12 = j11;
                        j0 j0VarU2 = layoutNodeLayoutDelegate2.K().U1();
                        Intrinsics.e(j0VarU2);
                        androidx.compose.ui.layout.g0.a.j(aVarD1, j0VarU2, j12, 0.0f, 2, null);
                    }
                }, 2, null);
            } else {
                j0 j0VarU1 = LayoutNodeLayoutDelegate.this.K().U1();
                Intrinsics.e(j0VarU1);
                j0VarU1.z1(j11);
                i1();
            }
            this.f5296n = j11;
            this.f5297o = f11;
            this.f5298p = function1;
            this.f5299q = graphicsLayer;
            LayoutNodeLayoutDelegate.this.f5269c = LayoutNode.LayoutState.Idle;
        }

        private final void q1(LayoutNode layoutNode) {
            LayoutNode.UsageByParent usageByParent;
            LayoutNode layoutNodeH0 = layoutNode.h0();
            if (layoutNodeH0 == null) {
                this.f5291i = LayoutNode.UsageByParent.NotUsed;
                return;
            }
            if (!(this.f5291i == LayoutNode.UsageByParent.NotUsed || layoutNode.B())) {
                g0.a.b("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int i11 = a.f5309a[layoutNodeH0.R().ordinal()];
            if (i11 == 1 || i11 == 2) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (i11 != 3 && i11 != 4) {
                    throw new IllegalStateException("Measurable could be only measured from the parent's measure or layout block. Parents state is " + layoutNodeH0.R());
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.f5291i = usageByParent;
        }

        @Override // androidx.compose.ui.node.a
        public androidx.compose.ui.node.a D() {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            if (layoutNodeH0 == null || (layoutNodeLayoutDelegateP = layoutNodeH0.P()) == null) {
                return null;
            }
            return layoutNodeLayoutDelegateP.C();
        }

        @Override // androidx.compose.ui.layout.g0, androidx.compose.ui.layout.i
        public Object G() {
            return this.f5306x;
        }

        @Override // androidx.compose.ui.node.a
        public void I() {
            this.f5304v = true;
            v().o();
            if (LayoutNodeLayoutDelegate.this.F()) {
                g1();
            }
            final j0 j0VarU1 = M().U1();
            Intrinsics.e(j0VarU1);
            if (LayoutNodeLayoutDelegate.this.f5275i || (!this.f5292j && !j0VarU1.j1() && LayoutNodeLayoutDelegate.this.F())) {
                LayoutNodeLayoutDelegate.this.f5274h = false;
                LayoutNode.LayoutState layoutStateB = LayoutNodeLayoutDelegate.this.B();
                LayoutNodeLayoutDelegate.this.f5269c = LayoutNode.LayoutState.LookaheadLayingOut;
                y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f5267a);
                LayoutNodeLayoutDelegate.this.b0(false);
                OwnerSnapshotObserver snapshotObserver = y0VarB.getSnapshotObserver();
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
                final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
                OwnerSnapshotObserver.f(snapshotObserver, layoutNode, false, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$LookaheadPassDelegate$layoutChildren$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m125invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m125invoke() {
                        this.this$0.R0();
                        this.this$0.U(new Function1<a, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$LookaheadPassDelegate$layoutChildren$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(a aVar) {
                                aVar.v().t(false);
                            }
                        });
                        j0 j0VarU2 = this.this$0.M().U1();
                        if (j0VarU2 != null) {
                            boolean zJ1 = j0VarU2.j1();
                            List listE = layoutNodeLayoutDelegate.f5267a.E();
                            int size = listE.size();
                            for (int i11 = 0; i11 < size; i11++) {
                                j0 j0VarU3 = ((LayoutNode) listE.get(i11)).f0().U1();
                                if (j0VarU3 != null) {
                                    j0VarU3.n1(zJ1);
                                }
                            }
                        }
                        j0VarU1.b1().w();
                        j0 j0VarU4 = this.this$0.M().U1();
                        if (j0VarU4 != null) {
                            j0VarU4.j1();
                            List listE2 = layoutNodeLayoutDelegate.f5267a.E();
                            int size2 = listE2.size();
                            for (int i12 = 0; i12 < size2; i12++) {
                                j0 j0VarU5 = ((LayoutNode) listE2.get(i12)).f0().U1();
                                if (j0VarU5 != null) {
                                    j0VarU5.n1(false);
                                }
                            }
                        }
                        this.this$0.P0();
                        this.this$0.U(new Function1<a, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$LookaheadPassDelegate$layoutChildren$1.4
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(a aVar) {
                                aVar.v().q(aVar.v().l());
                            }
                        });
                    }
                }, 2, null);
                LayoutNodeLayoutDelegate.this.f5269c = layoutStateB;
                if (LayoutNodeLayoutDelegate.this.E() && j0VarU1.j1()) {
                    requestLayout();
                }
                LayoutNodeLayoutDelegate.this.f5275i = false;
            }
            if (v().l()) {
                v().q(true);
            }
            if (v().g() && v().k()) {
                v().n();
            }
            this.f5304v = false;
        }

        @Override // androidx.compose.ui.node.a
        public NodeCoordinator M() {
            return LayoutNodeLayoutDelegate.this.f5267a.M();
        }

        /* JADX WARN: Code duplicated, block: B:13:0x002b  */
        @Override // androidx.compose.ui.layout.s
        public androidx.compose.ui.layout.g0 P(long j11) {
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            if ((layoutNodeH0 != null ? layoutNodeH0.R() : null) == LayoutNode.LayoutState.LookaheadMeasuring) {
                LayoutNodeLayoutDelegate.this.f5268b = false;
            } else {
                LayoutNode layoutNodeH1 = LayoutNodeLayoutDelegate.this.f5267a.h0();
                if ((layoutNodeH1 != null ? layoutNodeH1.R() : null) == LayoutNode.LayoutState.LookaheadLayingOut) {
                    LayoutNodeLayoutDelegate.this.f5268b = false;
                }
            }
            q1(LayoutNodeLayoutDelegate.this.f5267a);
            if (LayoutNodeLayoutDelegate.this.f5267a.O() == LayoutNode.UsageByParent.NotUsed) {
                LayoutNodeLayoutDelegate.this.f5267a.s();
            }
            k1(j11);
            return this;
        }

        public final List S0() {
            LayoutNodeLayoutDelegate.this.f5267a.E();
            if (!this.f5303u) {
                return this.f5302t.g();
            }
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
            androidx.compose.runtime.collection.b bVar = this.f5302t;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i11];
                    if (bVar.n() <= i11) {
                        LookaheadPassDelegate lookaheadPassDelegateH = layoutNode2.P().H();
                        Intrinsics.e(lookaheadPassDelegateH);
                        bVar.b(lookaheadPassDelegateH);
                    } else {
                        LookaheadPassDelegate lookaheadPassDelegateH2 = layoutNode2.P().H();
                        Intrinsics.e(lookaheadPassDelegateH2);
                        bVar.y(i11, lookaheadPassDelegateH2);
                    }
                    i11++;
                } while (i11 < iN);
            }
            bVar.w(layoutNode.E().size(), bVar.n());
            this.f5303u = false;
            return this.f5302t.g();
        }

        public final o0.b T0() {
            return this.f5295m;
        }

        @Override // androidx.compose.ui.node.a
        public void U(Function1 function1) {
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    androidx.compose.ui.node.a aVarC = ((LayoutNode) objArrM[i11]).P().C();
                    Intrinsics.e(aVarC);
                    function1.invoke(aVarC);
                    i11++;
                } while (i11 < iN);
            }
        }

        @Override // androidx.compose.ui.node.m0
        public void V(boolean z10) {
            j0 j0VarU1;
            j0 j0VarU2 = LayoutNodeLayoutDelegate.this.K().U1();
            if (!Intrinsics.c(Boolean.valueOf(z10), j0VarU2 != null ? Boolean.valueOf(j0VarU2.i1()) : null) && (j0VarU1 = LayoutNodeLayoutDelegate.this.K().U1()) != null) {
                j0VarU1.V(z10);
            }
            this.f5307y = z10;
        }

        public final boolean W0() {
            return this.f5304v;
        }

        public final MeasurePassDelegate X0() {
            return LayoutNodeLayoutDelegate.this.I();
        }

        @Override // androidx.compose.ui.node.a
        public void Z() {
            LayoutNode.d1(LayoutNodeLayoutDelegate.this.f5267a, false, false, false, 7, null);
        }

        public final LayoutNode.UsageByParent Z0() {
            return this.f5291i;
        }

        public final boolean a1() {
            return this.f5293k;
        }

        public final void b1(boolean z10) {
            LayoutNode layoutNode;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            LayoutNode.UsageByParent usageByParentO = LayoutNodeLayoutDelegate.this.f5267a.O();
            if (layoutNodeH0 == null || usageByParentO == LayoutNode.UsageByParent.NotUsed) {
                return;
            }
            do {
                layoutNode = layoutNodeH0;
                if (layoutNode.O() != usageByParentO) {
                    break;
                } else {
                    layoutNodeH0 = layoutNode.h0();
                }
            } while (layoutNodeH0 != null);
            int i11 = a.f5310b[usageByParentO.ordinal()];
            if (i11 == 1) {
                if (layoutNode.V() != null) {
                    LayoutNode.d1(layoutNode, z10, false, false, 6, null);
                    return;
                } else {
                    LayoutNode.h1(layoutNode, z10, false, false, 6, null);
                    return;
                }
            }
            if (i11 != 2) {
                throw new IllegalStateException("Intrinsics isn't used by the parent");
            }
            if (layoutNode.V() != null) {
                layoutNode.a1(z10);
            } else {
                layoutNode.e1(z10);
            }
        }

        public final void c1() {
            this.f5305w = true;
        }

        public final void f1() {
            androidx.compose.runtime.collection.b bVarP0;
            int iN;
            if (LayoutNodeLayoutDelegate.this.t() <= 0 || (iN = (bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0()).n()) <= 0) {
                return;
            }
            Object[] objArrM = bVarP0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNode.P();
                if ((layoutNodeLayoutDelegateP.E() || layoutNodeLayoutDelegateP.D()) && !layoutNodeLayoutDelegateP.F()) {
                    LayoutNode.b1(layoutNode, false, 1, null);
                }
                LookaheadPassDelegate lookaheadPassDelegateH = layoutNodeLayoutDelegateP.H();
                if (lookaheadPassDelegateH != null) {
                    lookaheadPassDelegateH.f1();
                }
                i11++;
            } while (i11 < iN);
        }

        public final void h1() {
            this.f5290h = Integer.MAX_VALUE;
            this.f5289g = Integer.MAX_VALUE;
            p1(false);
        }

        public final void i1() {
            this.f5308z = true;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            if (!n()) {
                d1();
                if (this.f5288f && layoutNodeH0 != null) {
                    LayoutNode.b1(layoutNodeH0, false, 1, null);
                }
            }
            if (layoutNodeH0 == null) {
                this.f5290h = 0;
            } else if (!this.f5288f && (layoutNodeH0.R() == LayoutNode.LayoutState.LayingOut || layoutNodeH0.R() == LayoutNode.LayoutState.LookaheadLayingOut)) {
                if (!(this.f5290h == Integer.MAX_VALUE)) {
                    g0.a.b("Place was called on a node which was placed already");
                }
                this.f5290h = layoutNodeH0.P().f5276j;
                layoutNodeH0.P().f5276j++;
            }
            I();
        }

        public final boolean k1(long j11) {
            if (LayoutNodeLayoutDelegate.this.f5267a.E0()) {
                g0.a.a("measure is called on a deactivated node");
            }
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            LayoutNodeLayoutDelegate.this.f5267a.l1(LayoutNodeLayoutDelegate.this.f5267a.B() || (layoutNodeH0 != null && layoutNodeH0.B()));
            if (!LayoutNodeLayoutDelegate.this.f5267a.T()) {
                o0.b bVar = this.f5295m;
                if (bVar == null ? false : o0.b.f(bVar.r(), j11)) {
                    y0 y0VarG0 = LayoutNodeLayoutDelegate.this.f5267a.g0();
                    if (y0VarG0 != null) {
                        y0VarG0.forceMeasureTheSubtree(LayoutNodeLayoutDelegate.this.f5267a, true);
                    }
                    LayoutNodeLayoutDelegate.this.f5267a.k1();
                    return false;
                }
            }
            this.f5295m = o0.b.a(j11);
            F0(j11);
            v().s(false);
            U(new Function1<androidx.compose.ui.node.a, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$LookaheadPassDelegate$remeasure$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(a aVar) {
                    aVar.v().u(false);
                }
            });
            long jR0 = this.f5294l ? r0() : o0.u.a(Integer.MIN_VALUE, Integer.MIN_VALUE);
            this.f5294l = true;
            j0 j0VarU1 = LayoutNodeLayoutDelegate.this.K().U1();
            if (!(j0VarU1 != null)) {
                g0.a.b("Lookahead result from lookaheadRemeasure cannot be null");
            }
            LayoutNodeLayoutDelegate.this.T(j11);
            B0(o0.u.a(j0VarU1.u0(), j0VarU1.l0()));
            return (o0.t.g(jR0) == j0VarU1.u0() && o0.t.f(jR0) == j0VarU1.l0()) ? false : true;
        }

        public final void l1() {
            LayoutNode layoutNodeH0;
            try {
                this.f5288f = true;
                if (!this.f5293k) {
                    g0.a.b("replace() called on item that was not placed");
                }
                this.f5308z = false;
                boolean zN = n();
                j1(this.f5296n, 0.0f, this.f5298p, this.f5299q);
                if (zN && !this.f5308z && (layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0()) != null) {
                    LayoutNode.b1(layoutNodeH0, false, 1, null);
                }
            } finally {
                this.f5288f = false;
            }
        }

        public final void m1(boolean z10) {
            this.f5303u = z10;
        }

        @Override // androidx.compose.ui.node.a
        public boolean n() {
            return this.f5300r;
        }

        public final void n1(LayoutNode.UsageByParent usageByParent) {
            this.f5291i = usageByParent;
        }

        public final void o1(int i11) {
            this.f5290h = i11;
        }

        public void p1(boolean z10) {
            this.f5300r = z10;
        }

        public final boolean r1() {
            if (G() == null) {
                j0 j0VarU1 = LayoutNodeLayoutDelegate.this.K().U1();
                Intrinsics.e(j0VarU1);
                if (j0VarU1.G() == null) {
                    return false;
                }
            }
            if (!this.f5305w) {
                return false;
            }
            this.f5305w = false;
            j0 j0VarU2 = LayoutNodeLayoutDelegate.this.K().U1();
            Intrinsics.e(j0VarU2);
            this.f5306x = j0VarU2.G();
            return true;
        }

        @Override // androidx.compose.ui.node.a
        public void requestLayout() {
            LayoutNode.b1(LayoutNodeLayoutDelegate.this.f5267a, false, 1, null);
        }

        @Override // androidx.compose.ui.node.a
        public AlignmentLines v() {
            return this.f5301s;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.compose.ui.layout.g0
        public void w0(long j11, float f11, GraphicsLayer graphicsLayer) {
            j1(j11, f11, null, graphicsLayer);
        }

        @Override // androidx.compose.ui.node.a
        public Map z() {
            if (!this.f5292j) {
                if (LayoutNodeLayoutDelegate.this.B() == LayoutNode.LayoutState.LookaheadMeasuring) {
                    v().s(true);
                    if (v().g()) {
                        LayoutNodeLayoutDelegate.this.P();
                    }
                } else {
                    v().r(true);
                }
            }
            j0 j0VarU1 = M().U1();
            if (j0VarU1 != null) {
                j0VarU1.n1(true);
            }
            I();
            j0 j0VarU2 = M().U1();
            if (j0VarU2 != null) {
                j0VarU2.n1(false);
            }
            return v().h();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.compose.ui.layout.g0
        public void z0(long j11, float f11, Function1 function1) {
            j1(j11, f11, function1, null);
        }
    }

    public final class MeasurePassDelegate extends androidx.compose.ui.layout.g0 implements androidx.compose.ui.layout.s, androidx.compose.ui.node.a, m0 {
        private boolean A;
        private Function1 B;
        private GraphicsLayer C;
        private long D;
        private float E;
        private final Function0 F;
        private boolean G;
        private boolean H;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f5311f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f5314i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f5315j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f5317l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private long f5318m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private Function1 f5319n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private GraphicsLayer f5320o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private float f5321p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f5322q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private Object f5323r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f5324s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f5325t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final AlignmentLines f5326u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final androidx.compose.runtime.collection.b f5327v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private boolean f5328w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private boolean f5329x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final Function0 f5330y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private float f5331z;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f5312g = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f5313h = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private LayoutNode.UsageByParent f5316k = LayoutNode.UsageByParent.NotUsed;

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f5332a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final /* synthetic */ int[] f5333b;

            static {
                int[] iArr = new int[LayoutNode.LayoutState.values().length];
                try {
                    iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f5332a = iArr;
                int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
                try {
                    iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
                } catch (NoSuchFieldError unused4) {
                }
                f5333b = iArr2;
            }
        }

        public MeasurePassDelegate() {
            o0.p.a aVar = o0.p.f70615b;
            this.f5318m = aVar.a();
            this.f5322q = true;
            this.f5326u = new c0(this);
            this.f5327v = new androidx.compose.runtime.collection.b(new MeasurePassDelegate[16], 0);
            this.f5328w = true;
            this.f5330y = new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$MeasurePassDelegate$layoutChildrenBlock$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m127invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m127invoke() {
                    this.this$0.X0();
                    this.this$0.U(new Function1<a, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$MeasurePassDelegate$layoutChildrenBlock$1.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((a) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(a aVar2) {
                            aVar2.v().t(false);
                        }
                    });
                    this.this$0.M().b1().w();
                    this.this$0.W0();
                    this.this$0.U(new Function1<a, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$MeasurePassDelegate$layoutChildrenBlock$1.2
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((a) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(a aVar2) {
                            aVar2.v().q(aVar2.v().l());
                        }
                    });
                }
            };
            this.D = aVar.a();
            this.F = new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$MeasurePassDelegate$placeOuterCoordinatorBlock$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m128invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m128invoke() {
                    androidx.compose.ui.layout.g0.a placementScope;
                    NodeCoordinator nodeCoordinatorA2 = layoutNodeLayoutDelegate.K().a2();
                    if (nodeCoordinatorA2 == null || (placementScope = nodeCoordinatorA2.d1()) == null) {
                        placementScope = f0.b(layoutNodeLayoutDelegate.f5267a).getPlacementScope();
                    }
                    androidx.compose.ui.layout.g0.a aVar2 = placementScope;
                    LayoutNodeLayoutDelegate.MeasurePassDelegate measurePassDelegate = this;
                    LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNodeLayoutDelegate;
                    Function1 function1 = measurePassDelegate.B;
                    GraphicsLayer graphicsLayer = measurePassDelegate.C;
                    if (graphicsLayer != null) {
                        aVar2.v(layoutNodeLayoutDelegate.K(), measurePassDelegate.D, graphicsLayer, measurePassDelegate.E);
                    } else if (function1 == null) {
                        aVar2.i(layoutNodeLayoutDelegate.K(), measurePassDelegate.D, measurePassDelegate.E);
                    } else {
                        aVar2.u(layoutNodeLayoutDelegate.K(), measurePassDelegate.D, measurePassDelegate.E, function1);
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void W0() {
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i11];
                    if (layoutNode2.X().f5312g != layoutNode2.i0()) {
                        layoutNode.S0();
                        layoutNode.w0();
                        if (layoutNode2.i0() == Integer.MAX_VALUE) {
                            layoutNode2.X().k1();
                        }
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void X0() {
            LayoutNodeLayoutDelegate.this.f5277k = 0;
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    MeasurePassDelegate measurePassDelegateX = ((LayoutNode) objArrM[i11]).X();
                    measurePassDelegateX.f5312g = measurePassDelegateX.f5313h;
                    measurePassDelegateX.f5313h = Integer.MAX_VALUE;
                    measurePassDelegateX.f5325t = false;
                    if (measurePassDelegateX.f5316k == LayoutNode.UsageByParent.InLayoutBlock) {
                        measurePassDelegateX.f5316k = LayoutNode.UsageByParent.NotUsed;
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        private final void j1() {
            boolean zN = n();
            v1(true);
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
            if (!zN) {
                if (layoutNode.Y()) {
                    LayoutNode.h1(layoutNode, true, false, false, 6, null);
                } else if (layoutNode.T()) {
                    LayoutNode.d1(layoutNode, true, false, false, 6, null);
                }
            }
            NodeCoordinator nodeCoordinatorZ1 = layoutNode.M().Z1();
            for (NodeCoordinator nodeCoordinatorF0 = layoutNode.f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorZ1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Z1()) {
                if (nodeCoordinatorF0.R1()) {
                    nodeCoordinatorF0.j2();
                }
            }
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i11];
                    if (layoutNode2.i0() != Integer.MAX_VALUE) {
                        layoutNode2.X().j1();
                        layoutNode.i1(layoutNode2);
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        private final void k1() {
            if (n()) {
                int i11 = 0;
                v1(false);
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
                NodeCoordinator nodeCoordinatorZ1 = layoutNode.M().Z1();
                for (NodeCoordinator nodeCoordinatorF0 = layoutNode.f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorZ1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Z1()) {
                    nodeCoordinatorF0.z2();
                }
                androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
                int iN = bVarP0.n();
                if (iN > 0) {
                    Object[] objArrM = bVarP0.m();
                    do {
                        ((LayoutNode) objArrM[i11]).X().k1();
                        i11++;
                    } while (i11 < iN);
                }
            }
        }

        private final void m1() {
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i11];
                    if (layoutNode2.Y() && layoutNode2.a0() == LayoutNode.UsageByParent.InMeasureBlock && LayoutNode.W0(layoutNode2, null, 1, null)) {
                        LayoutNode.h1(layoutNodeLayoutDelegate.f5267a, false, false, false, 7, null);
                    }
                    i11++;
                } while (i11 < iN);
            }
        }

        private final void p1(long j11, float f11, Function1 function1, GraphicsLayer graphicsLayer) {
            if (LayoutNodeLayoutDelegate.this.f5267a.E0()) {
                g0.a.a("place is called on a deactivated node");
            }
            LayoutNodeLayoutDelegate.this.f5269c = LayoutNode.LayoutState.LayingOut;
            this.f5318m = j11;
            this.f5321p = f11;
            this.f5319n = function1;
            this.f5320o = graphicsLayer;
            this.f5315j = true;
            this.A = false;
            y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f5267a);
            if (LayoutNodeLayoutDelegate.this.A() || !n()) {
                v().r(false);
                LayoutNodeLayoutDelegate.this.Y(false);
                this.B = function1;
                this.D = j11;
                this.E = f11;
                this.C = graphicsLayer;
                y0VarB.getSnapshotObserver().c(LayoutNodeLayoutDelegate.this.f5267a, false, this.F);
            } else {
                LayoutNodeLayoutDelegate.this.K().w2(j11, f11, function1, graphicsLayer);
                o1();
            }
            LayoutNodeLayoutDelegate.this.f5269c = LayoutNode.LayoutState.Idle;
        }

        private final void q1(long j11, float f11, Function1 function1, GraphicsLayer graphicsLayer) {
            androidx.compose.ui.layout.g0.a placementScope;
            this.f5325t = true;
            if (!o0.p.g(j11, this.f5318m) || this.G) {
                if (LayoutNodeLayoutDelegate.this.u() || LayoutNodeLayoutDelegate.this.v() || this.G) {
                    LayoutNodeLayoutDelegate.this.f5271e = true;
                    this.G = false;
                }
                l1();
            }
            if (g0.a(LayoutNodeLayoutDelegate.this.f5267a)) {
                NodeCoordinator nodeCoordinatorA2 = LayoutNodeLayoutDelegate.this.K().a2();
                if (nodeCoordinatorA2 == null || (placementScope = nodeCoordinatorA2.d1()) == null) {
                    placementScope = f0.b(LayoutNodeLayoutDelegate.this.f5267a).getPlacementScope();
                }
                androidx.compose.ui.layout.g0.a aVar = placementScope;
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = LayoutNodeLayoutDelegate.this;
                LookaheadPassDelegate lookaheadPassDelegateH = layoutNodeLayoutDelegate.H();
                Intrinsics.e(lookaheadPassDelegateH);
                LayoutNode layoutNodeH0 = layoutNodeLayoutDelegate.f5267a.h0();
                if (layoutNodeH0 != null) {
                    layoutNodeH0.P().f5276j = 0;
                }
                lookaheadPassDelegateH.o1(Integer.MAX_VALUE);
                androidx.compose.ui.layout.g0.a.h(aVar, lookaheadPassDelegateH, o0.p.h(j11), o0.p.i(j11), 0.0f, 4, null);
            }
            LookaheadPassDelegate lookaheadPassDelegateH2 = LayoutNodeLayoutDelegate.this.H();
            if ((lookaheadPassDelegateH2 == null || lookaheadPassDelegateH2.a1()) ? false : true) {
                g0.a.b("Error: Placement happened before lookahead.");
            }
            p1(j11, f11, function1, graphicsLayer);
        }

        private final void w1(LayoutNode layoutNode) {
            LayoutNode.UsageByParent usageByParent;
            LayoutNode layoutNodeH0 = layoutNode.h0();
            if (layoutNodeH0 == null) {
                this.f5316k = LayoutNode.UsageByParent.NotUsed;
                return;
            }
            if (!(this.f5316k == LayoutNode.UsageByParent.NotUsed || layoutNode.B())) {
                g0.a.b("measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()");
            }
            int i11 = a.f5332a[layoutNodeH0.R().ordinal()];
            if (i11 == 1) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("Measurable could be only measured from the parent's measure or layout block. Parents state is " + layoutNodeH0.R());
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            this.f5316k = usageByParent;
        }

        @Override // androidx.compose.ui.node.a
        public androidx.compose.ui.node.a D() {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            if (layoutNodeH0 == null || (layoutNodeLayoutDelegateP = layoutNodeH0.P()) == null) {
                return null;
            }
            return layoutNodeLayoutDelegateP.r();
        }

        @Override // androidx.compose.ui.layout.g0, androidx.compose.ui.layout.i
        public Object G() {
            return this.f5323r;
        }

        @Override // androidx.compose.ui.node.a
        public void I() {
            this.f5329x = true;
            v().o();
            if (LayoutNodeLayoutDelegate.this.A()) {
                m1();
            }
            if (LayoutNodeLayoutDelegate.this.f5272f || (!this.f5317l && !M().j1() && LayoutNodeLayoutDelegate.this.A())) {
                LayoutNodeLayoutDelegate.this.f5271e = false;
                LayoutNode.LayoutState layoutStateB = LayoutNodeLayoutDelegate.this.B();
                LayoutNodeLayoutDelegate.this.f5269c = LayoutNode.LayoutState.LayingOut;
                LayoutNodeLayoutDelegate.this.Z(false);
                LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
                f0.b(layoutNode).getSnapshotObserver().e(layoutNode, false, this.f5330y);
                LayoutNodeLayoutDelegate.this.f5269c = layoutStateB;
                if (M().j1() && LayoutNodeLayoutDelegate.this.v()) {
                    requestLayout();
                }
                LayoutNodeLayoutDelegate.this.f5272f = false;
            }
            if (v().l()) {
                v().q(true);
            }
            if (v().g() && v().k()) {
                v().n();
            }
            this.f5329x = false;
        }

        @Override // androidx.compose.ui.node.a
        public NodeCoordinator M() {
            return LayoutNodeLayoutDelegate.this.f5267a.M();
        }

        @Override // androidx.compose.ui.layout.s
        public androidx.compose.ui.layout.g0 P(long j11) {
            LayoutNode.UsageByParent usageByParentO = LayoutNodeLayoutDelegate.this.f5267a.O();
            LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
            if (usageByParentO == usageByParent) {
                LayoutNodeLayoutDelegate.this.f5267a.s();
            }
            if (g0.a(LayoutNodeLayoutDelegate.this.f5267a)) {
                LookaheadPassDelegate lookaheadPassDelegateH = LayoutNodeLayoutDelegate.this.H();
                Intrinsics.e(lookaheadPassDelegateH);
                lookaheadPassDelegateH.n1(usageByParent);
                lookaheadPassDelegateH.P(j11);
            }
            w1(LayoutNodeLayoutDelegate.this.f5267a);
            r1(j11);
            return this;
        }

        @Override // androidx.compose.ui.node.a
        public void U(Function1 function1) {
            androidx.compose.runtime.collection.b bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    function1.invoke(((LayoutNode) objArrM[i11]).P().r());
                    i11++;
                } while (i11 < iN);
            }
        }

        @Override // androidx.compose.ui.node.m0
        public void V(boolean z10) {
            boolean zI1 = LayoutNodeLayoutDelegate.this.K().i1();
            if (z10 != zI1) {
                LayoutNodeLayoutDelegate.this.K().V(zI1);
                this.G = true;
            }
            this.H = z10;
        }

        @Override // androidx.compose.ui.node.a
        public void Z() {
            LayoutNode.h1(LayoutNodeLayoutDelegate.this.f5267a, false, false, false, 7, null);
        }

        public final List Z0() {
            LayoutNodeLayoutDelegate.this.f5267a.u1();
            if (!this.f5328w) {
                return this.f5327v.g();
            }
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
            androidx.compose.runtime.collection.b bVar = this.f5327v;
            androidx.compose.runtime.collection.b bVarP0 = layoutNode.p0();
            int iN = bVarP0.n();
            if (iN > 0) {
                Object[] objArrM = bVarP0.m();
                int i11 = 0;
                do {
                    LayoutNode layoutNode2 = (LayoutNode) objArrM[i11];
                    if (bVar.n() <= i11) {
                        bVar.b(layoutNode2.P().I());
                    } else {
                        bVar.y(i11, layoutNode2.P().I());
                    }
                    i11++;
                } while (i11 < iN);
            }
            bVar.w(layoutNode.E().size(), bVar.n());
            this.f5328w = false;
            return this.f5327v.g();
        }

        public final o0.b a1() {
            if (this.f5314i) {
                return o0.b.a(t0());
            }
            return null;
        }

        public final boolean b1() {
            return this.f5329x;
        }

        public final LayoutNode.UsageByParent c1() {
            return this.f5316k;
        }

        public final int d1() {
            return this.f5313h;
        }

        public final float e1() {
            return this.f5331z;
        }

        public final void f1(boolean z10) {
            LayoutNode layoutNode;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            LayoutNode.UsageByParent usageByParentO = LayoutNodeLayoutDelegate.this.f5267a.O();
            if (layoutNodeH0 == null || usageByParentO == LayoutNode.UsageByParent.NotUsed) {
                return;
            }
            do {
                layoutNode = layoutNodeH0;
                if (layoutNode.O() != usageByParentO) {
                    break;
                } else {
                    layoutNodeH0 = layoutNode.h0();
                }
            } while (layoutNodeH0 != null);
            int i11 = a.f5333b[usageByParentO.ordinal()];
            if (i11 == 1) {
                LayoutNode.h1(layoutNode, z10, false, false, 6, null);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("Intrinsics isn't used by the parent");
                }
                layoutNode.e1(z10);
            }
        }

        public final void g1() {
            this.f5322q = true;
        }

        public final boolean h1() {
            return this.f5325t;
        }

        public final void i1() {
            LayoutNodeLayoutDelegate.this.f5268b = true;
        }

        public final void l1() {
            androidx.compose.runtime.collection.b bVarP0;
            int iN;
            if (LayoutNodeLayoutDelegate.this.s() <= 0 || (iN = (bVarP0 = LayoutNodeLayoutDelegate.this.f5267a.p0()).n()) <= 0) {
                return;
            }
            Object[] objArrM = bVarP0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNode.P();
                if ((layoutNodeLayoutDelegateP.v() || layoutNodeLayoutDelegateP.u()) && !layoutNodeLayoutDelegateP.A()) {
                    LayoutNode.f1(layoutNode, false, 1, null);
                }
                layoutNodeLayoutDelegateP.I().l1();
                i11++;
            } while (i11 < iN);
        }

        @Override // androidx.compose.ui.node.a
        public boolean n() {
            return this.f5324s;
        }

        public final void n1() {
            this.f5313h = Integer.MAX_VALUE;
            this.f5312g = Integer.MAX_VALUE;
            v1(false);
        }

        public final void o1() {
            this.A = true;
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            float fB2 = M().b2();
            LayoutNode layoutNode = LayoutNodeLayoutDelegate.this.f5267a;
            NodeCoordinator nodeCoordinatorF0 = layoutNode.f0();
            NodeCoordinator nodeCoordinatorM = layoutNode.M();
            while (nodeCoordinatorF0 != nodeCoordinatorM) {
                Intrinsics.f(nodeCoordinatorF0, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator");
                y yVar = (y) nodeCoordinatorF0;
                fB2 += yVar.b2();
                nodeCoordinatorF0 = yVar.Z1();
            }
            if (fB2 != this.f5331z) {
                this.f5331z = fB2;
                if (layoutNodeH0 != null) {
                    layoutNodeH0.S0();
                }
                if (layoutNodeH0 != null) {
                    layoutNodeH0.w0();
                }
            }
            if (!n()) {
                if (layoutNodeH0 != null) {
                    layoutNodeH0.w0();
                }
                j1();
                if (this.f5311f && layoutNodeH0 != null) {
                    LayoutNode.f1(layoutNodeH0, false, 1, null);
                }
            }
            if (layoutNodeH0 == null) {
                this.f5313h = 0;
            } else if (!this.f5311f && layoutNodeH0.R() == LayoutNode.LayoutState.LayingOut) {
                if (!(this.f5313h == Integer.MAX_VALUE)) {
                    g0.a.b("Place was called on a node which was placed already");
                }
                this.f5313h = layoutNodeH0.P().f5277k;
                layoutNodeH0.P().f5277k++;
            }
            I();
        }

        public final boolean r1(long j11) {
            if (LayoutNodeLayoutDelegate.this.f5267a.E0()) {
                g0.a.a("measure is called on a deactivated node");
            }
            y0 y0VarB = f0.b(LayoutNodeLayoutDelegate.this.f5267a);
            LayoutNode layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0();
            boolean z10 = true;
            LayoutNodeLayoutDelegate.this.f5267a.l1(LayoutNodeLayoutDelegate.this.f5267a.B() || (layoutNodeH0 != null && layoutNodeH0.B()));
            if (!LayoutNodeLayoutDelegate.this.f5267a.Y() && o0.b.f(t0(), j11)) {
                x0.b(y0VarB, LayoutNodeLayoutDelegate.this.f5267a, false, 2, null);
                LayoutNodeLayoutDelegate.this.f5267a.k1();
                return false;
            }
            v().s(false);
            U(new Function1<androidx.compose.ui.node.a, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$MeasurePassDelegate$remeasure$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(a aVar) {
                    aVar.v().u(false);
                }
            });
            this.f5314i = true;
            long jK = LayoutNodeLayoutDelegate.this.K().k();
            F0(j11);
            LayoutNodeLayoutDelegate.this.U(j11);
            if (o0.t.e(LayoutNodeLayoutDelegate.this.K().k(), jK) && LayoutNodeLayoutDelegate.this.K().u0() == u0() && LayoutNodeLayoutDelegate.this.K().l0() == l0()) {
                z10 = false;
            }
            B0(o0.u.a(LayoutNodeLayoutDelegate.this.K().u0(), LayoutNodeLayoutDelegate.this.K().l0()));
            return z10;
        }

        @Override // androidx.compose.ui.node.a
        public void requestLayout() {
            LayoutNode.f1(LayoutNodeLayoutDelegate.this.f5267a, false, 1, null);
        }

        public final void s1() {
            LayoutNode layoutNodeH0;
            try {
                this.f5311f = true;
                if (!this.f5315j) {
                    g0.a.b("replace called on unplaced item");
                }
                boolean zN = n();
                p1(this.f5318m, this.f5321p, this.f5319n, this.f5320o);
                if (zN && !this.A && (layoutNodeH0 = LayoutNodeLayoutDelegate.this.f5267a.h0()) != null) {
                    LayoutNode.f1(layoutNodeH0, false, 1, null);
                }
            } finally {
                this.f5311f = false;
            }
        }

        public final void t1(boolean z10) {
            this.f5328w = z10;
        }

        public final void u1(LayoutNode.UsageByParent usageByParent) {
            this.f5316k = usageByParent;
        }

        @Override // androidx.compose.ui.node.a
        public AlignmentLines v() {
            return this.f5326u;
        }

        public void v1(boolean z10) {
            this.f5324s = z10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.compose.ui.layout.g0
        public void w0(long j11, float f11, GraphicsLayer graphicsLayer) {
            q1(j11, f11, null, graphicsLayer);
        }

        public final boolean x1() {
            if ((G() == null && LayoutNodeLayoutDelegate.this.K().G() == null) || !this.f5322q) {
                return false;
            }
            this.f5322q = false;
            this.f5323r = LayoutNodeLayoutDelegate.this.K().G();
            return true;
        }

        @Override // androidx.compose.ui.node.a
        public Map z() {
            if (!this.f5317l) {
                if (LayoutNodeLayoutDelegate.this.B() == LayoutNode.LayoutState.Measuring) {
                    v().s(true);
                    if (v().g()) {
                        LayoutNodeLayoutDelegate.this.O();
                    }
                } else {
                    v().r(true);
                }
            }
            M().n1(true);
            I();
            M().n1(false);
            return v().h();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.compose.ui.layout.g0
        public void z0(long j11, float f11, Function1 function1) {
            q1(j11, f11, function1, null);
        }
    }

    public LayoutNodeLayoutDelegate(LayoutNode layoutNode) {
        this.f5267a = layoutNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(final long j11) {
        this.f5269c = LayoutNode.LayoutState.LookaheadMeasuring;
        this.f5273g = false;
        OwnerSnapshotObserver.h(f0.b(this.f5267a).getSnapshotObserver(), this.f5267a, false, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeLayoutDelegate$performLookaheadMeasure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m129invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m129invoke() {
                j0 j0VarU1 = this.this$0.K().U1();
                Intrinsics.e(j0VarU1);
                j0VarU1.P(j11);
            }
        }, 2, null);
        P();
        if (g0.a(this.f5267a)) {
            O();
        } else {
            R();
        }
        this.f5269c = LayoutNode.LayoutState.Idle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(long j11) {
        LayoutNode.LayoutState layoutState = this.f5269c;
        LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Idle;
        if (!(layoutState == layoutState2)) {
            g0.a.b("layout state is not idle before measure starts");
        }
        LayoutNode.LayoutState layoutState3 = LayoutNode.LayoutState.Measuring;
        this.f5269c = layoutState3;
        this.f5270d = false;
        this.f5286t = j11;
        f0.b(this.f5267a).getSnapshotObserver().g(this.f5267a, false, this.f5287u);
        if (this.f5269c == layoutState3) {
            O();
            this.f5269c = layoutState2;
        }
    }

    public final boolean A() {
        return this.f5271e;
    }

    public final LayoutNode.LayoutState B() {
        return this.f5269c;
    }

    public final a C() {
        return this.f5285s;
    }

    public final boolean D() {
        return this.f5282p;
    }

    public final boolean E() {
        return this.f5281o;
    }

    public final boolean F() {
        return this.f5274h;
    }

    public final boolean G() {
        return this.f5273g;
    }

    public final LookaheadPassDelegate H() {
        return this.f5285s;
    }

    public final MeasurePassDelegate I() {
        return this.f5284r;
    }

    public final boolean J() {
        return this.f5270d;
    }

    public final NodeCoordinator K() {
        return this.f5267a.e0().n();
    }

    public final int L() {
        return this.f5284r.u0();
    }

    public final void M() {
        this.f5284r.g1();
        LookaheadPassDelegate lookaheadPassDelegate = this.f5285s;
        if (lookaheadPassDelegate != null) {
            lookaheadPassDelegate.c1();
        }
    }

    public final void N() {
        this.f5284r.t1(true);
        LookaheadPassDelegate lookaheadPassDelegate = this.f5285s;
        if (lookaheadPassDelegate != null) {
            lookaheadPassDelegate.m1(true);
        }
    }

    public final void O() {
        this.f5271e = true;
        this.f5272f = true;
    }

    public final void P() {
        this.f5274h = true;
        this.f5275i = true;
    }

    public final void Q() {
        this.f5273g = true;
    }

    public final void R() {
        this.f5270d = true;
    }

    public final void S() {
        LayoutNode.LayoutState layoutStateR = this.f5267a.R();
        if (layoutStateR == LayoutNode.LayoutState.LayingOut || layoutStateR == LayoutNode.LayoutState.LookaheadLayingOut) {
            if (this.f5284r.b1()) {
                Z(true);
            } else {
                Y(true);
            }
        }
        if (layoutStateR == LayoutNode.LayoutState.LookaheadLayingOut) {
            LookaheadPassDelegate lookaheadPassDelegate = this.f5285s;
            if (lookaheadPassDelegate == null || !lookaheadPassDelegate.W0()) {
                a0(true);
            } else {
                b0(true);
            }
        }
    }

    public final void V() {
        AlignmentLines alignmentLinesV;
        this.f5284r.v().p();
        LookaheadPassDelegate lookaheadPassDelegate = this.f5285s;
        if (lookaheadPassDelegate == null || (alignmentLinesV = lookaheadPassDelegate.v()) == null) {
            return;
        }
        alignmentLinesV.p();
    }

    public final void W(int i11) {
        int i12 = this.f5280n;
        this.f5280n = i11;
        if ((i12 == 0) != (i11 == 0)) {
            LayoutNode layoutNodeH0 = this.f5267a.h0();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNodeH0 != null ? layoutNodeH0.P() : null;
            if (layoutNodeLayoutDelegateP != null) {
                if (i11 == 0) {
                    layoutNodeLayoutDelegateP.W(layoutNodeLayoutDelegateP.f5280n - 1);
                } else {
                    layoutNodeLayoutDelegateP.W(layoutNodeLayoutDelegateP.f5280n + 1);
                }
            }
        }
    }

    public final void X(int i11) {
        int i12 = this.f5283q;
        this.f5283q = i11;
        if ((i12 == 0) != (i11 == 0)) {
            LayoutNode layoutNodeH0 = this.f5267a.h0();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegateP = layoutNodeH0 != null ? layoutNodeH0.P() : null;
            if (layoutNodeLayoutDelegateP != null) {
                if (i11 == 0) {
                    layoutNodeLayoutDelegateP.X(layoutNodeLayoutDelegateP.f5283q - 1);
                } else {
                    layoutNodeLayoutDelegateP.X(layoutNodeLayoutDelegateP.f5283q + 1);
                }
            }
        }
    }

    public final void Y(boolean z10) {
        if (this.f5279m != z10) {
            this.f5279m = z10;
            if (z10 && !this.f5278l) {
                W(this.f5280n + 1);
            } else {
                if (z10 || this.f5278l) {
                    return;
                }
                W(this.f5280n - 1);
            }
        }
    }

    public final void Z(boolean z10) {
        if (this.f5278l != z10) {
            this.f5278l = z10;
            if (z10 && !this.f5279m) {
                W(this.f5280n + 1);
            } else {
                if (z10 || this.f5279m) {
                    return;
                }
                W(this.f5280n - 1);
            }
        }
    }

    public final void a0(boolean z10) {
        if (this.f5282p != z10) {
            this.f5282p = z10;
            if (z10 && !this.f5281o) {
                X(this.f5283q + 1);
            } else {
                if (z10 || this.f5281o) {
                    return;
                }
                X(this.f5283q - 1);
            }
        }
    }

    public final void b0(boolean z10) {
        if (this.f5281o != z10) {
            this.f5281o = z10;
            if (z10 && !this.f5282p) {
                X(this.f5283q + 1);
            } else {
                if (z10 || this.f5282p) {
                    return;
                }
                X(this.f5283q - 1);
            }
        }
    }

    public final void c0() {
        LayoutNode layoutNodeH0;
        if (this.f5284r.x1() && (layoutNodeH0 = this.f5267a.h0()) != null) {
            LayoutNode.h1(layoutNodeH0, false, false, false, 7, null);
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.f5285s;
        if (lookaheadPassDelegate == null || !lookaheadPassDelegate.r1()) {
            return;
        }
        if (g0.a(this.f5267a)) {
            LayoutNode layoutNodeH1 = this.f5267a.h0();
            if (layoutNodeH1 != null) {
                LayoutNode.h1(layoutNodeH1, false, false, false, 7, null);
                return;
            }
            return;
        }
        LayoutNode layoutNodeH2 = this.f5267a.h0();
        if (layoutNodeH2 != null) {
            LayoutNode.d1(layoutNodeH2, false, false, false, 7, null);
        }
    }

    public final void q() {
        if (this.f5285s == null) {
            this.f5285s = new LookaheadPassDelegate();
        }
    }

    public final a r() {
        return this.f5284r;
    }

    public final int s() {
        return this.f5280n;
    }

    public final int t() {
        return this.f5283q;
    }

    public final boolean u() {
        return this.f5279m;
    }

    public final boolean v() {
        return this.f5278l;
    }

    public final boolean w() {
        return this.f5268b;
    }

    public final int x() {
        return this.f5284r.l0();
    }

    public final o0.b y() {
        return this.f5284r.a1();
    }

    public final o0.b z() {
        LookaheadPassDelegate lookaheadPassDelegate = this.f5285s;
        if (lookaheadPassDelegate != null) {
            return lookaheadPassDelegate.T0();
        }
        return null;
    }
}
