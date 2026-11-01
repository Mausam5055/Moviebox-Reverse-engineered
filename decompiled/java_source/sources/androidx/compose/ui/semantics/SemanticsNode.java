package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.node.s0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import o0.t;

/* JADX INFO: loaded from: classes.dex */
public final class SemanticsNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.f.c f5911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f5912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LayoutNode f5913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f5914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SemanticsNode f5916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f5917g;

    public static final class a extends androidx.compose.ui.f.c implements i1 {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        final /* synthetic */ Function1 f5918n;

        a(Function1 function1) {
            this.f5918n = function1;
        }

        @Override // androidx.compose.ui.node.i1
        public /* synthetic */ boolean O() {
            return h1.a(this);
        }

        @Override // androidx.compose.ui.node.i1
        public void R0(n nVar) {
            this.f5918n.invoke(nVar);
        }

        @Override // androidx.compose.ui.node.i1
        public /* synthetic */ boolean W0() {
            return h1.b(this);
        }
    }

    public SemanticsNode(androidx.compose.ui.f.c cVar, boolean z10, LayoutNode layoutNode, i iVar) {
        this.f5911a = cVar;
        this.f5912b = z10;
        this.f5913c = layoutNode;
        this.f5914d = iVar;
        this.f5917g = layoutNode.j0();
    }

    private final void B(i iVar) {
        if (this.f5914d.n()) {
            return;
        }
        List listD = D(this, false, false, 3, null);
        int size = listD.size();
        for (int i11 = 0; i11 < size; i11++) {
            SemanticsNode semanticsNode = (SemanticsNode) listD.get(i11);
            if (!semanticsNode.y()) {
                iVar.p(semanticsNode.f5914d);
                semanticsNode.B(iVar);
            }
        }
    }

    public static /* synthetic */ List D(SemanticsNode semanticsNode, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        return semanticsNode.C(z10, z11);
    }

    private final void b(List list) {
        final f fVarH = l.h(this);
        if (fVarH != null && this.f5914d.o() && !list.isEmpty()) {
            list.add(c(fVarH, new Function1<n, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsNode$emitFakeNodes$fakeNode$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((n) obj);
                    return Unit.f67061a;
                }

                public final void invoke(n nVar) {
                    SemanticsPropertiesKt.B(nVar, fVarH.n());
                }
            }));
        }
        i iVar = this.f5914d;
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        if (iVar.e(semanticsProperties.d()) && !list.isEmpty() && this.f5914d.o()) {
            List list2 = (List) SemanticsConfigurationKt.a(this.f5914d, semanticsProperties.d());
            final String str = list2 != null ? (String) CollectionsKt.k0(list2) : null;
            if (str != null) {
                list.add(0, c(null, new Function1<n, Unit>() { // from class: androidx.compose.ui.semantics.SemanticsNode$emitFakeNodes$fakeNode$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((n) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(n nVar) {
                        SemanticsPropertiesKt.v(nVar, str);
                    }
                }));
            }
        }
    }

    private final SemanticsNode c(f fVar, Function1 function1) {
        i iVar = new i();
        iVar.r(false);
        iVar.q(false);
        function1.invoke(iVar);
        SemanticsNode semanticsNode = new SemanticsNode(new a(function1), false, new LayoutNode(true, fVar != null ? l.i(this) : l.e(this)), iVar);
        semanticsNode.f5915e = true;
        semanticsNode.f5916f = this;
        return semanticsNode;
    }

    private final void d(LayoutNode layoutNode, List list, boolean z10) {
        androidx.compose.runtime.collection.b bVarO0 = layoutNode.o0();
        int iN = bVarO0.n();
        if (iN > 0) {
            Object[] objArrM = bVarO0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) objArrM[i11];
                if (layoutNode2.D0() && (z10 || !layoutNode2.E0())) {
                    if (layoutNode2.e0().q(s0.a(8))) {
                        list.add(l.a(layoutNode2, this.f5912b));
                    } else {
                        d(layoutNode2, list, z10);
                    }
                }
                i11++;
            } while (i11 < iN);
        }
    }

    private final List f(List list) {
        List listD = D(this, false, false, 3, null);
        int size = listD.size();
        for (int i11 = 0; i11 < size; i11++) {
            SemanticsNode semanticsNode = (SemanticsNode) listD.get(i11);
            if (semanticsNode.y()) {
                list.add(semanticsNode);
            } else if (!semanticsNode.f5914d.n()) {
                semanticsNode.f(list);
            }
        }
        return list;
    }

    static /* synthetic */ List g(SemanticsNode semanticsNode, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = new ArrayList();
        }
        return semanticsNode.f(list);
    }

    public static /* synthetic */ List m(SemanticsNode semanticsNode, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = !semanticsNode.f5912b;
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        if ((i11 & 4) != 0) {
            z12 = false;
        }
        return semanticsNode.l(z10, z11, z12);
    }

    private final boolean y() {
        return this.f5912b && this.f5914d.o();
    }

    public final boolean A() {
        return !this.f5915e && t().isEmpty() && l.f(this.f5913c, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsNode$isUnmergedLeafNode$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(LayoutNode layoutNode) {
                i iVarF = layoutNode.F();
                boolean z10 = false;
                if (iVarF != null && iVarF.o()) {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
        }) == null;
    }

    public final List C(boolean z10, boolean z11) {
        if (this.f5915e) {
            return CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        d(this.f5913c, arrayList, z11);
        if (z10) {
            b(arrayList);
        }
        return arrayList;
    }

    public final SemanticsNode a() {
        return new SemanticsNode(this.f5911a, true, this.f5913c, this.f5914d);
    }

    public final NodeCoordinator e() {
        if (this.f5915e) {
            SemanticsNode semanticsNodeR = r();
            if (semanticsNodeR != null) {
                return semanticsNodeR.e();
            }
            return null;
        }
        androidx.compose.ui.node.f fVarG = l.g(this.f5913c);
        if (fVarG == null) {
            fVarG = this.f5911a;
        }
        return androidx.compose.ui.node.g.h(fVarG, s0.a(8));
    }

    public final y.i h() {
        androidx.compose.ui.layout.l lVarX0;
        SemanticsNode semanticsNodeR = r();
        if (semanticsNodeR == null) {
            return y.i.f78475e.a();
        }
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null && (lVarX0 = nodeCoordinatorE.X0()) != null) {
                return androidx.compose.ui.layout.k.a(androidx.compose.ui.node.g.h(semanticsNodeR.f5911a, s0.a(8)), lVarX0, false, 2, null);
            }
        }
        return y.i.f78475e.a();
    }

    public final y.i i() {
        y.i iVarB;
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null && (iVarB = androidx.compose.ui.layout.m.b(nodeCoordinatorE)) != null) {
                return iVarB;
            }
        }
        return y.i.f78475e.a();
    }

    public final y.i j() {
        y.i iVarC;
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null && (iVarC = androidx.compose.ui.layout.m.c(nodeCoordinatorE)) != null) {
                return iVarC;
            }
        }
        return y.i.f78475e.a();
    }

    public final List k() {
        return m(this, false, false, false, 7, null);
    }

    public final List l(boolean z10, boolean z11, boolean z12) {
        if (z10 || !this.f5914d.n()) {
            return y() ? g(this, null, 1, null) : C(z11, z12);
        }
        return CollectionsKt.l();
    }

    public final i n() {
        if (!y()) {
            return this.f5914d;
        }
        i iVarH = this.f5914d.h();
        B(iVarH);
        return iVarH;
    }

    public final int o() {
        return this.f5917g;
    }

    public final androidx.compose.ui.layout.n p() {
        return this.f5913c;
    }

    public final LayoutNode q() {
        return this.f5913c;
    }

    public final SemanticsNode r() {
        SemanticsNode semanticsNode = this.f5916f;
        if (semanticsNode != null) {
            return semanticsNode;
        }
        LayoutNode layoutNodeF = this.f5912b ? l.f(this.f5913c, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsNode$parent$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(LayoutNode layoutNode) {
                i iVarF = layoutNode.F();
                boolean z10 = false;
                if (iVarF != null && iVarF.o()) {
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
        }) : null;
        if (layoutNodeF == null) {
            layoutNodeF = l.f(this.f5913c, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsNode$parent$2
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(LayoutNode layoutNode) {
                    return Boolean.valueOf(layoutNode.e0().q(s0.a(8)));
                }
            });
        }
        if (layoutNodeF == null) {
            return null;
        }
        return l.a(layoutNodeF, this.f5912b);
    }

    public final long s() {
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            if (!nodeCoordinatorE.F()) {
                nodeCoordinatorE = null;
            }
            if (nodeCoordinatorE != null) {
                return androidx.compose.ui.layout.m.e(nodeCoordinatorE);
            }
        }
        return y.g.f78470b.c();
    }

    public final List t() {
        return m(this, false, true, false, 4, null);
    }

    public final long u() {
        NodeCoordinator nodeCoordinatorE = e();
        return nodeCoordinatorE != null ? nodeCoordinatorE.k() : t.f70624b.a();
    }

    public final y.i v() {
        androidx.compose.ui.node.f fVarG;
        if (!this.f5914d.o() || (fVarG = l.g(this.f5913c)) == null) {
            fVarG = this.f5911a;
        }
        return j1.c(fVarG.getNode(), j1.a(this.f5914d));
    }

    public final i w() {
        return this.f5914d;
    }

    public final boolean x() {
        return this.f5915e;
    }

    public final boolean z() {
        NodeCoordinator nodeCoordinatorE = e();
        if (nodeCoordinatorE != null) {
            return nodeCoordinatorE.l2();
        }
        return false;
    }
}
