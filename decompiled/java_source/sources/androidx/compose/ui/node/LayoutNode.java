package androidx.compose.ui.node;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.n2;
import androidx.compose.ui.platform.o2;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Comparator;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutNode implements androidx.compose.runtime.h, androidx.compose.ui.layout.h0, z0, androidx.compose.ui.layout.n, ComposeUiNode, y0.b {
    public static final c K = new c(null);
    public static final int L = 8;
    private static final d M = new b();
    private static final Function0 N = new Function0<LayoutNode>() { // from class: androidx.compose.ui.node.LayoutNode$Companion$Constructor$1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        public final LayoutNode invoke() {
            return new LayoutNode(false, 0 == true ? 1 : 0, 3, null);
        }
    };
    private static final o2 O = new a();
    private static final Comparator P = new Comparator() { // from class: androidx.compose.ui.node.b0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return LayoutNode.k((LayoutNode) obj, (LayoutNode) obj2);
        }
    };
    private final LayoutNodeLayoutDelegate A;
    private LayoutNodeSubcompositionsState B;
    private NodeCoordinator C;
    private boolean D;
    private androidx.compose.ui.f E;
    private androidx.compose.ui.f F;
    private Function1 G;
    private Function1 H;
    private boolean I;
    private boolean J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LayoutNode f5243e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5244f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n0 f5245g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.compose.runtime.collection.b f5246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f5247i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LayoutNode f5248j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private y0 f5249k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AndroidViewHolder f5250l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f5251m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f5252n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private androidx.compose.ui.semantics.i f5253o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5254p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f5255q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.compose.ui.layout.t f5256r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private o0.e f5257s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private LayoutDirection f5258t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private o2 f5259u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private androidx.compose.runtime.s f5260v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private UsageByParent f5261w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private UsageByParent f5262x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f5263y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final q0 f5264z;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$LayoutState;", "", "(Ljava/lang/String;I)V", "Measuring", "LookaheadMeasuring", "LayingOut", "LookaheadLayingOut", "Idle", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum LayoutState {
        Measuring,
        LookaheadMeasuring,
        LayingOut,
        LookaheadLayingOut,
        Idle
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$UsageByParent;", "", "(Ljava/lang/String;I)V", "InMeasureBlock", "InLayoutBlock", "NotUsed", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum UsageByParent {
        InMeasureBlock,
        InLayoutBlock,
        NotUsed
    }

    public static final class a implements o2 {
        a() {
        }

        @Override // androidx.compose.ui.platform.o2
        public long a() {
            return 300L;
        }

        @Override // androidx.compose.ui.platform.o2
        public long b() {
            return 40L;
        }

        @Override // androidx.compose.ui.platform.o2
        public long c() {
            return 400L;
        }

        @Override // androidx.compose.ui.platform.o2
        public long d() {
            return o0.l.f70612a.a();
        }

        @Override // androidx.compose.ui.platform.o2
        public /* synthetic */ float e() {
            return n2.a(this);
        }

        @Override // androidx.compose.ui.platform.o2
        public float f() {
            return 16.0f;
        }
    }

    public static final class b extends d {
        b() {
            super("Undefined intrinsics block and it is required");
        }

        public Void a(androidx.compose.ui.layout.x xVar, List list, long j11) {
            throw new IllegalStateException("Undefined measure and it is required");
        }

        @Override // androidx.compose.ui.layout.t
        public /* bridge */ /* synthetic */ androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
            return (androidx.compose.ui.layout.v) a(xVar, list, j11);
        }
    }

    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Function0 a() {
            return LayoutNode.N;
        }

        public final Comparator b() {
            return LayoutNode.P;
        }
    }

    public static abstract class d implements androidx.compose.ui.layout.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5265a;

        public d(String str) {
            this.f5265a = str;
        }
    }

    public /* synthetic */ class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5266a;

        static {
            int[] iArr = new int[LayoutState.values().length];
            try {
                iArr[LayoutState.Idle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f5266a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LayoutNode() {
        this(false, 0 == true ? 1 : 0, 3, null);
    }

    public LayoutNode(boolean z10, int i11) {
        this.f5239a = z10;
        this.f5240b = i11;
        this.f5245g = new n0(new androidx.compose.runtime.collection.b(new LayoutNode[16], 0), new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNode$_foldedChildren$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m123invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m123invoke() {
                this.this$0.P().N();
            }
        });
        this.f5254p = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);
        this.f5255q = true;
        this.f5256r = M;
        this.f5257s = f0.f5386a;
        this.f5258t = LayoutDirection.Ltr;
        this.f5259u = O;
        this.f5260v = androidx.compose.runtime.s.Y0.a();
        UsageByParent usageByParent = UsageByParent.NotUsed;
        this.f5261w = usageByParent;
        this.f5262x = usageByParent;
        this.f5264z = new q0(this);
        this.A = new LayoutNodeLayoutDelegate(this);
        this.D = true;
        this.E = androidx.compose.ui.f.f4178a;
    }

    public /* synthetic */ LayoutNode(boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? false : z10, (i12 & 2) != 0 ? androidx.compose.ui.semantics.k.a() : i11);
    }

    private final void C0() {
        LayoutNode layoutNode;
        if (this.f5244f > 0) {
            this.f5247i = true;
        }
        if (!this.f5239a || (layoutNode = this.f5248j) == null) {
            return;
        }
        layoutNode.C0();
    }

    public static /* synthetic */ boolean J0(LayoutNode layoutNode, o0.b bVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bVar = layoutNode.A.z();
        }
        return layoutNode.I0(bVar);
    }

    private final NodeCoordinator N() {
        if (this.D) {
            NodeCoordinator nodeCoordinatorM = M();
            NodeCoordinator nodeCoordinatorA2 = f0().a2();
            this.C = null;
            while (!Intrinsics.c(nodeCoordinatorM, nodeCoordinatorA2)) {
                if ((nodeCoordinatorM != null ? nodeCoordinatorM.T1() : null) != null) {
                    this.C = nodeCoordinatorM;
                    break;
                }
                nodeCoordinatorM = nodeCoordinatorM != null ? nodeCoordinatorM.a2() : null;
            }
        }
        NodeCoordinator nodeCoordinator = this.C;
        if (nodeCoordinator == null || nodeCoordinator.T1() != null) {
            return nodeCoordinator;
        }
        g0.a.c("layer was not set");
        throw new KotlinNothingValueException();
    }

    private final void Q0(LayoutNode layoutNode) {
        if (layoutNode.A.s() > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.A;
            layoutNodeLayoutDelegate.W(layoutNodeLayoutDelegate.s() - 1);
        }
        if (this.f5249k != null) {
            layoutNode.w();
        }
        layoutNode.f5248j = null;
        layoutNode.f0().E2(null);
        if (layoutNode.f5239a) {
            this.f5244f--;
            androidx.compose.runtime.collection.b bVarF = layoutNode.f5245g.f();
            int iN = bVarF.n();
            if (iN > 0) {
                Object[] objArrM = bVarF.m();
                int i11 = 0;
                do {
                    ((LayoutNode) objArrM[i11]).f0().E2(null);
                    i11++;
                } while (i11 < iN);
            }
        }
        C0();
        S0();
    }

    private final void R0() {
        y0();
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 != null) {
            layoutNodeH0.w0();
        }
        x0();
    }

    private final void U0() {
        if (this.f5247i) {
            int i11 = 0;
            this.f5247i = false;
            androidx.compose.runtime.collection.b bVar = this.f5246h;
            if (bVar == null) {
                bVar = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);
                this.f5246h = bVar;
            }
            bVar.h();
            androidx.compose.runtime.collection.b bVarF = this.f5245g.f();
            int iN = bVarF.n();
            if (iN > 0) {
                Object[] objArrM = bVarF.m();
                do {
                    LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                    if (layoutNode.f5239a) {
                        bVar.c(bVar.n(), layoutNode.p0());
                    } else {
                        bVar.b(layoutNode);
                    }
                    i11++;
                } while (i11 < iN);
            }
            this.A.N();
        }
    }

    public static /* synthetic */ boolean W0(LayoutNode layoutNode, o0.b bVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bVar = layoutNode.A.y();
        }
        return layoutNode.V0(bVar);
    }

    public static /* synthetic */ void b1(LayoutNode layoutNode, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        layoutNode.a1(z10);
    }

    public static /* synthetic */ void d1(LayoutNode layoutNode, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        if ((i11 & 4) != 0) {
            z12 = true;
        }
        layoutNode.c1(z10, z11, z12);
    }

    public static /* synthetic */ void f1(LayoutNode layoutNode, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        layoutNode.e1(z10);
    }

    public static /* synthetic */ void h1(LayoutNode layoutNode, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        if ((i11 & 4) != 0) {
            z12 = true;
        }
        layoutNode.g1(z10, z11, z12);
    }

    private final void j1() {
        this.f5264z.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int k(LayoutNode layoutNode, LayoutNode layoutNode2) {
        return layoutNode.n0() == layoutNode2.n0() ? Intrinsics.j(layoutNode.i0(), layoutNode2.i0()) : Float.compare(layoutNode.n0(), layoutNode2.n0());
    }

    private final float n0() {
        return X().e1();
    }

    private final void o1(LayoutNode layoutNode) {
        if (Intrinsics.c(layoutNode, this.f5243e)) {
            return;
        }
        this.f5243e = layoutNode;
        if (layoutNode != null) {
            this.A.q();
            NodeCoordinator nodeCoordinatorZ1 = M().Z1();
            for (NodeCoordinator nodeCoordinatorF0 = f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorZ1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Z1()) {
                nodeCoordinatorF0.K1();
            }
        }
        y0();
    }

    private final void q(androidx.compose.ui.f fVar) {
        this.E = fVar;
        this.f5264z.E(fVar);
        this.A.c0();
        if (this.f5243e == null && this.f5264z.q(s0.a(512))) {
            o1(this);
        }
    }

    public static /* synthetic */ void r0(LayoutNode layoutNode, long j11, q qVar, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        boolean z12 = z10;
        if ((i11 & 8) != 0) {
            z11 = true;
        }
        layoutNode.q0(j11, qVar, z12, z11);
    }

    private final void t() {
        this.f5262x = this.f5261w;
        this.f5261w = UsageByParent.NotUsed;
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                if (layoutNode.f5261w == UsageByParent.InLayoutBlock) {
                    layoutNode.t();
                }
                i11++;
            } while (i11 < iN);
        }
    }

    private final String u(int i11) {
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < i11; i12++) {
            sb2.append("  ");
        }
        sb2.append("|-");
        sb2.append(toString());
        sb2.append('\n');
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i13 = 0;
            do {
                sb2.append(((LayoutNode) objArrM[i13]).u(i11 + 1));
                i13++;
            } while (i13 < iN);
        }
        String string = sb2.toString();
        if (i11 != 0) {
            return string;
        }
        String strSubstring = string.substring(0, string.length() - 1);
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    static /* synthetic */ String v(LayoutNode layoutNode, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        return layoutNode.u(i11);
    }

    private final void v0() {
        if (this.f5264z.p(s0.a(1024) | s0.a(2048) | s0.a(4096))) {
            for (androidx.compose.ui.f.c cVarK = this.f5264z.k(); cVarK != null; cVarK = cVarK.b1()) {
                if (((s0.a(1024) & cVarK.f1()) != 0) | ((s0.a(2048) & cVarK.f1()) != 0) | ((s0.a(4096) & cVarK.f1()) != 0)) {
                    t0.a(cVarK);
                }
            }
        }
    }

    public final boolean A() {
        return this.F != null;
    }

    public final void A0() {
        this.A.M();
    }

    public final boolean B() {
        return this.f5263y;
    }

    public final void B0() {
        this.f5253o = null;
        f0.b(this).onSemanticsChange();
    }

    public final List C() {
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        Intrinsics.e(lookaheadPassDelegateU);
        return lookaheadPassDelegateU.S0();
    }

    public final List D() {
        return X().Z0();
    }

    public boolean D0() {
        return this.f5249k != null;
    }

    public final List E() {
        return p0().g();
    }

    public boolean E0() {
        return this.J;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.compose.ui.semantics.i] */
    public final androidx.compose.ui.semantics.i F() {
        if (!D0() || E0()) {
            return null;
        }
        if (!this.f5264z.q(s0.a(8)) || this.f5253o != null) {
            return this.f5253o;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new androidx.compose.ui.semantics.i();
        f0.b(this).getSnapshotObserver().j(this, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNode$collapsedSemantics$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m124invoke();
                return Unit.f67061a;
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
            /* JADX WARN: Type inference failed for: r6v11 */
            /* JADX WARN: Type inference failed for: r6v7, types: [T, androidx.compose.ui.semantics.i] */
            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m124invoke() {
                q0 q0VarE0 = this.this$0.e0();
                int iA = s0.a(8);
                Ref.ObjectRef<androidx.compose.ui.semantics.i> objectRef2 = objectRef;
                if ((q0VarE0.i() & iA) != 0) {
                    for (androidx.compose.ui.f.c cVarO = q0VarE0.o(); cVarO != null; cVarO = cVarO.h1()) {
                        if ((cVarO.f1() & iA) != 0) {
                            ?? G = cVarO;
                            ?? bVar = 0;
                            while (G != 0) {
                                if (G instanceof i1) {
                                    i1 i1Var = (i1) G;
                                    if (i1Var.O()) {
                                        ?? iVar = new androidx.compose.ui.semantics.i();
                                        objectRef2.element = iVar;
                                        iVar.q(true);
                                    }
                                    if (i1Var.W0()) {
                                        objectRef2.element.r(true);
                                    }
                                    i1Var.R0(objectRef2.element);
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
                    }
                }
            }
        });
        T t11 = objectRef.element;
        this.f5253o = (androidx.compose.ui.semantics.i) t11;
        return (androidx.compose.ui.semantics.i) t11;
    }

    public final boolean F0() {
        return X().h1();
    }

    public androidx.compose.runtime.s G() {
        return this.f5260v;
    }

    public final Boolean G0() {
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        if (lookaheadPassDelegateU != null) {
            return Boolean.valueOf(lookaheadPassDelegateU.n());
        }
        return null;
    }

    public o0.e H() {
        return this.f5257s;
    }

    public final boolean H0() {
        return this.f5242d;
    }

    public final int I() {
        return this.f5251m;
    }

    public final boolean I0(o0.b bVar) {
        if (bVar == null || this.f5243e == null) {
            return false;
        }
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        Intrinsics.e(lookaheadPassDelegateU);
        return lookaheadPassDelegateU.k1(bVar.r());
    }

    public final List J() {
        return this.f5245g.b();
    }

    public final boolean K() {
        long jS1 = M().S1();
        return o0.b.j(jS1) && o0.b.i(jS1);
    }

    public final void K0() {
        if (this.f5261w == UsageByParent.NotUsed) {
            t();
        }
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        Intrinsics.e(lookaheadPassDelegateU);
        lookaheadPassDelegateU.l1();
    }

    public int L() {
        return this.A.x();
    }

    public final void L0() {
        this.A.O();
    }

    public final NodeCoordinator M() {
        return this.f5264z.l();
    }

    public final void M0() {
        this.A.P();
    }

    public final void N0() {
        this.A.Q();
    }

    public final UsageByParent O() {
        return this.f5261w;
    }

    public final void O0() {
        this.A.R();
    }

    public final LayoutNodeLayoutDelegate P() {
        return this.A;
    }

    public final void P0(int i11, int i12, int i13) {
        if (i11 == i12) {
            return;
        }
        for (int i14 = 0; i14 < i13; i14++) {
            this.f5245g.a(i11 > i12 ? i12 + i14 : (i12 + i13) - 2, (LayoutNode) this.f5245g.g(i11 > i12 ? i11 + i14 : i11));
        }
        S0();
        C0();
        y0();
    }

    public final boolean Q() {
        return this.A.A();
    }

    public final LayoutState R() {
        return this.A.B();
    }

    public final boolean S() {
        return this.A.F();
    }

    public final void S0() {
        if (!this.f5239a) {
            this.f5255q = true;
            return;
        }
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 != null) {
            layoutNodeH0.S0();
        }
    }

    public final boolean T() {
        return this.A.G();
    }

    public final void T0(int i11, int i12) {
        androidx.compose.ui.layout.g0.a placementScope;
        NodeCoordinator nodeCoordinatorM;
        if (this.f5261w == UsageByParent.NotUsed) {
            t();
        }
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 == null || (nodeCoordinatorM = layoutNodeH0.M()) == null || (placementScope = nodeCoordinatorM.d1()) == null) {
            placementScope = f0.b(this).getPlacementScope();
        }
        androidx.compose.ui.layout.g0.a.l(placementScope, X(), i11, i12, 0.0f, 4, null);
    }

    public final LayoutNodeLayoutDelegate.LookaheadPassDelegate U() {
        return this.A.H();
    }

    public final LayoutNode V() {
        return this.f5243e;
    }

    public final boolean V0(o0.b bVar) {
        if (bVar == null) {
            return false;
        }
        if (this.f5261w == UsageByParent.NotUsed) {
            s();
        }
        return X().r1(bVar.r());
    }

    public final d0 W() {
        return f0.b(this).getSharedDrawScope();
    }

    public final LayoutNodeLayoutDelegate.MeasurePassDelegate X() {
        return this.A.I();
    }

    public final void X0() {
        int iE = this.f5245g.e();
        while (true) {
            iE--;
            if (-1 >= iE) {
                this.f5245g.c();
                return;
            }
            Q0((LayoutNode) this.f5245g.d(iE));
        }
    }

    public final boolean Y() {
        return this.A.J();
    }

    public final void Y0(int i11, int i12) {
        if (!(i12 >= 0)) {
            g0.a.a("count (" + i12 + ") must be greater than 0");
        }
        int i13 = (i12 + i11) - 1;
        if (i11 > i13) {
            return;
        }
        while (true) {
            Q0((LayoutNode) this.f5245g.d(i13));
            if (i13 == i11) {
                return;
            } else {
                i13--;
            }
        }
    }

    public androidx.compose.ui.layout.t Z() {
        return this.f5256r;
    }

    public final void Z0() {
        if (this.f5261w == UsageByParent.NotUsed) {
            t();
        }
        X().s1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
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
    /* JADX WARN: Type inference failed for: r4v5 */
    @Override // androidx.compose.ui.node.ComposeUiNode
    public void a(LayoutDirection layoutDirection) {
        if (this.f5258t != layoutDirection) {
            this.f5258t = layoutDirection;
            R0();
            q0 q0Var = this.f5264z;
            int iA = s0.a(4);
            if ((q0Var.i() & iA) != 0) {
                for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.b1()) {
                    if ((cVarK.f1() & iA) != 0) {
                        ?? G = cVarK;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof n) {
                                n nVar = (n) G;
                                if (nVar instanceof androidx.compose.ui.draw.b) {
                                    ((androidx.compose.ui.draw.b) nVar).o0();
                                }
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
                    if ((cVarK.a1() & iA) == 0) {
                        return;
                    }
                }
            }
        }
    }

    public final UsageByParent a0() {
        return X().c1();
    }

    public final void a1(boolean z10) {
        y0 y0Var;
        if (this.f5239a || (y0Var = this.f5249k) == null) {
            return;
        }
        y0Var.onRequestRelayout(this, true, z10);
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void b(o0.e eVar) {
        if (Intrinsics.c(this.f5257s, eVar)) {
            return;
        }
        this.f5257s = eVar;
        R0();
        for (androidx.compose.ui.f.c cVarK = this.f5264z.k(); cVarK != null; cVarK = cVarK.b1()) {
            if ((s0.a(16) & cVarK.f1()) != 0) {
                ((e1) cVarK).z0();
            } else if (cVarK instanceof androidx.compose.ui.draw.b) {
                ((androidx.compose.ui.draw.b) cVarK).o0();
            }
        }
    }

    public final UsageByParent b0() {
        UsageByParent usageByParentZ0;
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
        return (lookaheadPassDelegateU == null || (usageByParentZ0 = lookaheadPassDelegateU.Z0()) == null) ? UsageByParent.NotUsed : usageByParentZ0;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void c(int i11) {
        this.f5241c = i11;
    }

    public androidx.compose.ui.f c0() {
        return this.E;
    }

    public final void c1(boolean z10, boolean z11, boolean z12) {
        if (!(this.f5243e != null)) {
            g0.a.b("Lookahead measure cannot be requested on a node that is not a part of theLookaheadScope");
        }
        y0 y0Var = this.f5249k;
        if (y0Var == null || this.f5252n || this.f5239a) {
            return;
        }
        y0Var.onRequestMeasure(this, true, z10, z11);
        if (z12) {
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
            Intrinsics.e(lookaheadPassDelegateU);
            lookaheadPassDelegateU.b1(z10);
        }
    }

    @Override // androidx.compose.ui.layout.h0
    public void d() {
        if (this.f5243e != null) {
            d1(this, false, false, false, 5, null);
        } else {
            h1(this, false, false, false, 5, null);
        }
        o0.b bVarY = this.A.y();
        if (bVarY != null) {
            y0 y0Var = this.f5249k;
            if (y0Var != null) {
                y0Var.mo143measureAndLayout0kLqBqw(this, bVarY.r());
                return;
            }
            return;
        }
        y0 y0Var2 = this.f5249k;
        if (y0Var2 != null) {
            x0.c(y0Var2, false, 1, null);
        }
    }

    public final boolean d0() {
        return this.I;
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
    @Override // androidx.compose.ui.node.ComposeUiNode
    public void e(o2 o2Var) {
        if (Intrinsics.c(this.f5259u, o2Var)) {
            return;
        }
        this.f5259u = o2Var;
        q0 q0Var = this.f5264z;
        int iA = s0.a(16);
        if ((q0Var.i() & iA) != 0) {
            for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.b1()) {
                if ((cVarK.f1() & iA) != 0) {
                    ?? G = cVarK;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof e1) {
                            ((e1) G).T0();
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
                if ((cVarK.a1() & iA) == 0) {
                    return;
                }
            }
        }
    }

    public final q0 e0() {
        return this.f5264z;
    }

    public final void e1(boolean z10) {
        y0 y0Var;
        if (this.f5239a || (y0Var = this.f5249k) == null) {
            return;
        }
        x0.e(y0Var, this, false, z10, 2, null);
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
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // androidx.compose.ui.node.y0.b
    public void f() {
        NodeCoordinator nodeCoordinatorM = M();
        int iA = s0.a(128);
        boolean zI = t0.i(iA);
        androidx.compose.ui.f.c cVarY1 = nodeCoordinatorM.Y1();
        if (!zI && (cVarY1 = cVarY1.h1()) == null) {
            return;
        }
        for (androidx.compose.ui.f.c cVarE2 = nodeCoordinatorM.e2(zI); cVarE2 != null && (cVarE2.a1() & iA) != 0; cVarE2 = cVarE2.b1()) {
            if ((cVarE2.f1() & iA) != 0) {
                ?? G = cVarE2;
                ?? bVar = 0;
                while (G != 0) {
                    if (G instanceof w) {
                        ((w) G).I(M());
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

    public final NodeCoordinator f0() {
        return this.f5264z.n();
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void g(androidx.compose.ui.layout.t tVar) {
        if (Intrinsics.c(this.f5256r, tVar)) {
            return;
        }
        this.f5256r = tVar;
        y0();
    }

    public final y0 g0() {
        return this.f5249k;
    }

    public final void g1(boolean z10, boolean z11, boolean z12) {
        y0 y0Var;
        if (this.f5252n || this.f5239a || (y0Var = this.f5249k) == null) {
            return;
        }
        x0.d(y0Var, this, false, z10, z11, 2, null);
        if (z12) {
            X().f1(z10);
        }
    }

    @Override // androidx.compose.ui.layout.n
    public LayoutDirection getLayoutDirection() {
        return this.f5258t;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void h(androidx.compose.ui.f fVar) {
        if (!(!this.f5239a || c0() == androidx.compose.ui.f.f4178a)) {
            g0.a.a("Modifiers are not supported on virtual LayoutNodes");
        }
        if (E0()) {
            g0.a.a("modifier is updated when deactivated");
        }
        if (D0()) {
            q(fVar);
        } else {
            this.F = fVar;
        }
    }

    public final LayoutNode h0() {
        LayoutNode layoutNode = this.f5248j;
        while (layoutNode != null && layoutNode.f5239a) {
            layoutNode = layoutNode.f5248j;
        }
        return layoutNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
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
    /* JADX WARN: Type inference failed for: r4v5 */
    @Override // androidx.compose.ui.node.ComposeUiNode
    public void i(androidx.compose.runtime.s sVar) {
        this.f5260v = sVar;
        b((o0.e) sVar.a(CompositionLocalsKt.c()));
        a((LayoutDirection) sVar.a(CompositionLocalsKt.g()));
        e((o2) sVar.a(CompositionLocalsKt.j()));
        q0 q0Var = this.f5264z;
        int iA = s0.a(32768);
        if ((q0Var.i() & iA) != 0) {
            for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.b1()) {
                if ((cVarK.f1() & iA) != 0) {
                    ?? G = cVarK;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof androidx.compose.ui.node.d) {
                            androidx.compose.ui.f.c node = ((androidx.compose.ui.node.d) G).getNode();
                            if (node.k1()) {
                                t0.e(node);
                            } else {
                                node.A1(true);
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
                if ((cVarK.a1() & iA) == 0) {
                    return;
                }
            }
        }
    }

    public final int i0() {
        return X().d1();
    }

    public final void i1(LayoutNode layoutNode) {
        if (e.f5266a[layoutNode.R().ordinal()] != 1) {
            throw new IllegalStateException("Unexpected state " + layoutNode.R());
        }
        if (layoutNode.T()) {
            d1(layoutNode, true, false, false, 6, null);
            return;
        }
        if (layoutNode.S()) {
            layoutNode.a1(true);
        }
        if (layoutNode.Y()) {
            h1(layoutNode, true, false, false, 6, null);
        } else if (layoutNode.Q()) {
            layoutNode.e1(true);
        }
    }

    @Override // androidx.compose.ui.node.z0
    public boolean isValidOwnerScope() {
        return D0();
    }

    public int j0() {
        return this.f5240b;
    }

    public final LayoutNodeSubcompositionsState k0() {
        return this.B;
    }

    public final void k1() {
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                UsageByParent usageByParent = layoutNode.f5262x;
                layoutNode.f5261w = usageByParent;
                if (usageByParent != UsageByParent.NotUsed) {
                    layoutNode.k1();
                }
                i11++;
            } while (i11 < iN);
        }
    }

    public o2 l0() {
        return this.f5259u;
    }

    public final void l1(boolean z10) {
        this.f5263y = z10;
    }

    public int m0() {
        return this.A.L();
    }

    public final void m1(boolean z10) {
        this.D = z10;
    }

    @Override // androidx.compose.ui.layout.n
    public boolean n() {
        return X().n();
    }

    public final void n1(AndroidViewHolder androidViewHolder) {
        this.f5250l = androidViewHolder;
    }

    @Override // androidx.compose.ui.layout.n
    public androidx.compose.ui.layout.l o() {
        return M();
    }

    public final androidx.compose.runtime.collection.b o0() {
        if (this.f5255q) {
            this.f5254p.h();
            androidx.compose.runtime.collection.b bVar = this.f5254p;
            bVar.c(bVar.n(), p0());
            this.f5254p.A(P);
            this.f5255q = false;
        }
        return this.f5254p;
    }

    @Override // androidx.compose.runtime.h
    public void onDeactivate() {
        AndroidViewHolder androidViewHolder = this.f5250l;
        if (androidViewHolder != null) {
            androidViewHolder.onDeactivate();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.B;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.onDeactivate();
        }
        this.J = true;
        j1();
        if (D0()) {
            B0();
        }
    }

    @Override // androidx.compose.runtime.h
    public void onRelease() {
        AndroidViewHolder androidViewHolder = this.f5250l;
        if (androidViewHolder != null) {
            androidViewHolder.onRelease();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.B;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.onRelease();
        }
        NodeCoordinator nodeCoordinatorZ1 = M().Z1();
        for (NodeCoordinator nodeCoordinatorF0 = f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorZ1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Z1()) {
            nodeCoordinatorF0.t2();
        }
    }

    @Override // androidx.compose.runtime.h
    public void onReuse() {
        if (!D0()) {
            g0.a.a("onReuse is only expected on attached node");
        }
        AndroidViewHolder androidViewHolder = this.f5250l;
        if (androidViewHolder != null) {
            androidViewHolder.onReuse();
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.B;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.onReuse();
        }
        if (E0()) {
            this.J = false;
            B0();
        } else {
            j1();
        }
        s1(androidx.compose.ui.semantics.k.a());
        this.f5264z.s();
        this.f5264z.y();
        i1(this);
    }

    public final androidx.compose.runtime.collection.b p0() {
        u1();
        if (this.f5244f == 0) {
            return this.f5245g.f();
        }
        androidx.compose.runtime.collection.b bVar = this.f5246h;
        Intrinsics.e(bVar);
        return bVar;
    }

    public final void p1(boolean z10) {
        this.I = z10;
    }

    public final void q0(long j11, q qVar, boolean z10, boolean z11) {
        f0().h2(NodeCoordinator.L.a(), NodeCoordinator.N1(f0(), j11, false, 2, null), qVar, z10, z11);
    }

    public final void q1(Function1 function1) {
        this.G = function1;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003f  */
    public final void r(y0 y0Var) {
        boolean z10;
        LayoutNode layoutNode;
        int i11 = 0;
        if (!(this.f5249k == null)) {
            g0.a.b("Cannot attach " + this + " as it already is attached.  Tree: " + v(this, 0, 1, null));
        }
        LayoutNode layoutNode2 = this.f5248j;
        if (layoutNode2 == null) {
            z10 = true;
        } else if (Intrinsics.c(layoutNode2 != null ? layoutNode2.f5249k : null, y0Var)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Attaching to a different owner(");
            sb2.append(y0Var);
            sb2.append(") than the parent's owner(");
            LayoutNode layoutNodeH0 = h0();
            sb2.append(layoutNodeH0 != null ? layoutNodeH0.f5249k : null);
            sb2.append("). This tree: ");
            sb2.append(v(this, 0, 1, null));
            sb2.append(" Parent tree: ");
            LayoutNode layoutNode3 = this.f5248j;
            sb2.append(layoutNode3 != null ? v(layoutNode3, 0, 1, null) : null);
            g0.a.b(sb2.toString());
        }
        LayoutNode layoutNodeH1 = h0();
        if (layoutNodeH1 == null) {
            X().v1(true);
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
            if (lookaheadPassDelegateU != null) {
                lookaheadPassDelegateU.p1(true);
            }
        }
        f0().E2(layoutNodeH1 != null ? layoutNodeH1.M() : null);
        this.f5249k = y0Var;
        this.f5251m = (layoutNodeH1 != null ? layoutNodeH1.f5251m : -1) + 1;
        androidx.compose.ui.f fVar = this.F;
        if (fVar != null) {
            q(fVar);
        }
        this.F = null;
        if (this.f5264z.q(s0.a(8))) {
            B0();
        }
        y0Var.onAttach(this);
        if (this.f5242d) {
            o1(this);
        } else {
            LayoutNode layoutNode4 = this.f5248j;
            if (layoutNode4 == null || (layoutNode = layoutNode4.f5243e) == null) {
                layoutNode = this.f5243e;
            }
            o1(layoutNode);
            if (this.f5243e == null && this.f5264z.q(s0.a(512))) {
                o1(this);
            }
        }
        if (!E0()) {
            this.f5264z.s();
        }
        androidx.compose.runtime.collection.b bVarF = this.f5245g.f();
        int iN = bVarF.n();
        if (iN > 0) {
            Object[] objArrM = bVarF.m();
            do {
                ((LayoutNode) objArrM[i11]).r(y0Var);
                i11++;
            } while (i11 < iN);
        }
        if (!E0()) {
            this.f5264z.y();
        }
        y0();
        if (layoutNodeH1 != null) {
            layoutNodeH1.y0();
        }
        NodeCoordinator nodeCoordinatorZ1 = M().Z1();
        for (NodeCoordinator nodeCoordinatorF0 = f0(); !Intrinsics.c(nodeCoordinatorF0, nodeCoordinatorZ1) && nodeCoordinatorF0 != null; nodeCoordinatorF0 = nodeCoordinatorF0.Z1()) {
            nodeCoordinatorF0.p2();
        }
        Function1 function1 = this.G;
        if (function1 != null) {
            function1.invoke(y0Var);
        }
        this.A.c0();
        if (E0()) {
            return;
        }
        v0();
    }

    public final void r1(Function1 function1) {
        this.H = function1;
    }

    public final void s() {
        this.f5262x = this.f5261w;
        this.f5261w = UsageByParent.NotUsed;
        androidx.compose.runtime.collection.b bVarP0 = p0();
        int iN = bVarP0.n();
        if (iN > 0) {
            Object[] objArrM = bVarP0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i11];
                if (layoutNode.f5261w != UsageByParent.NotUsed) {
                    layoutNode.s();
                }
                i11++;
            } while (i11 < iN);
        }
    }

    public final void s0(long j11, q qVar, boolean z10, boolean z11) {
        f0().h2(NodeCoordinator.L.b(), NodeCoordinator.N1(f0(), j11, false, 2, null), qVar, true, z11);
    }

    public void s1(int i11) {
        this.f5240b = i11;
    }

    public final void t1(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState) {
        this.B = layoutNodeSubcompositionsState;
    }

    public String toString() {
        return androidx.compose.ui.platform.c1.a(this, null) + " children: " + E().size() + " measurePolicy: " + Z();
    }

    public final void u0(int i11, LayoutNode layoutNode) {
        if (!(layoutNode.f5248j == null)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot insert ");
            sb2.append(layoutNode);
            sb2.append(" because it already has a parent. This tree: ");
            sb2.append(v(this, 0, 1, null));
            sb2.append(" Other tree: ");
            LayoutNode layoutNode2 = layoutNode.f5248j;
            sb2.append(layoutNode2 != null ? v(layoutNode2, 0, 1, null) : null);
            g0.a.b(sb2.toString());
        }
        if (!(layoutNode.f5249k == null)) {
            g0.a.b("Cannot insert " + layoutNode + " because it already has an owner. This tree: " + v(this, 0, 1, null) + " Other tree: " + v(layoutNode, 0, 1, null));
        }
        layoutNode.f5248j = this;
        this.f5245g.a(i11, layoutNode);
        S0();
        if (layoutNode.f5239a) {
            this.f5244f++;
        }
        C0();
        y0 y0Var = this.f5249k;
        if (y0Var != null) {
            layoutNode.r(y0Var);
        }
        if (layoutNode.A.s() > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.A;
            layoutNodeLayoutDelegate.W(layoutNodeLayoutDelegate.s() + 1);
        }
    }

    public final void u1() {
        if (this.f5244f > 0) {
            U0();
        }
    }

    public final void w() {
        y0 y0Var = this.f5249k;
        if (y0Var == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot detach node that is already detached!  Tree: ");
            LayoutNode layoutNodeH0 = h0();
            sb2.append(layoutNodeH0 != null ? v(layoutNodeH0, 0, 1, null) : null);
            g0.a.c(sb2.toString());
            throw new KotlinNothingValueException();
        }
        LayoutNode layoutNodeH1 = h0();
        if (layoutNodeH1 != null) {
            layoutNodeH1.w0();
            layoutNodeH1.y0();
            LayoutNodeLayoutDelegate.MeasurePassDelegate measurePassDelegateX = X();
            UsageByParent usageByParent = UsageByParent.NotUsed;
            measurePassDelegateX.u1(usageByParent);
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU = U();
            if (lookaheadPassDelegateU != null) {
                lookaheadPassDelegateU.n1(usageByParent);
            }
        }
        this.A.V();
        Function1 function1 = this.H;
        if (function1 != null) {
            function1.invoke(y0Var);
        }
        if (this.f5264z.q(s0.a(8))) {
            B0();
        }
        this.f5264z.z();
        this.f5252n = true;
        androidx.compose.runtime.collection.b bVarF = this.f5245g.f();
        int iN = bVarF.n();
        if (iN > 0) {
            Object[] objArrM = bVarF.m();
            int i11 = 0;
            do {
                ((LayoutNode) objArrM[i11]).w();
                i11++;
            } while (i11 < iN);
        }
        this.f5252n = false;
        this.f5264z.t();
        y0Var.onDetach(this);
        this.f5249k = null;
        o1(null);
        this.f5251m = 0;
        X().n1();
        LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateU2 = U();
        if (lookaheadPassDelegateU2 != null) {
            lookaheadPassDelegateU2.h1();
        }
    }

    public final void w0() {
        NodeCoordinator nodeCoordinatorN = N();
        if (nodeCoordinatorN != null) {
            nodeCoordinatorN.j2();
            return;
        }
        LayoutNode layoutNodeH0 = h0();
        if (layoutNodeH0 != null) {
            layoutNodeH0.w0();
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
    /* JADX WARN: Type inference failed for: r6v6 */
    public final void x() {
        if (R() != LayoutState.Idle || Q() || Y() || E0() || !n()) {
            return;
        }
        q0 q0Var = this.f5264z;
        int iA = s0.a(256);
        if ((q0Var.i() & iA) != 0) {
            for (androidx.compose.ui.f.c cVarK = q0Var.k(); cVarK != null; cVarK = cVarK.b1()) {
                if ((cVarK.f1() & iA) != 0) {
                    ?? G = cVarK;
                    ?? bVar = 0;
                    while (G != 0) {
                        if (G instanceof p) {
                            p pVar = (p) G;
                            pVar.v(g.h(pVar, s0.a(256)));
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
                if ((cVarK.a1() & iA) == 0) {
                    return;
                }
            }
        }
    }

    public final void x0() {
        NodeCoordinator nodeCoordinatorF0 = f0();
        NodeCoordinator nodeCoordinatorM = M();
        while (nodeCoordinatorF0 != nodeCoordinatorM) {
            Intrinsics.f(nodeCoordinatorF0, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator");
            y yVar = (y) nodeCoordinatorF0;
            w0 w0VarT1 = yVar.T1();
            if (w0VarT1 != null) {
                w0VarT1.invalidate();
            }
            nodeCoordinatorF0 = yVar.Z1();
        }
        w0 w0VarT2 = M().T1();
        if (w0VarT2 != null) {
            w0VarT2.invalidate();
        }
    }

    public final void y(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        f0().H1(m1Var, graphicsLayer);
    }

    public final void y0() {
        if (this.f5243e != null) {
            d1(this, false, false, false, 7, null);
        } else {
            h1(this, false, false, false, 7, null);
        }
    }

    public final boolean z() {
        AlignmentLines alignmentLinesV;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.A;
        if (layoutNodeLayoutDelegate.r().v().k()) {
            return true;
        }
        androidx.compose.ui.node.a aVarC = layoutNodeLayoutDelegate.C();
        return (aVarC == null || (alignmentLinesV = aVarC.v()) == null || !alignmentLinesV.k()) ? false : true;
    }

    public final void z0() {
        if (Q() || Y() || this.I) {
            return;
        }
        f0.b(this).requestOnPositionedCallback(this);
    }
}
