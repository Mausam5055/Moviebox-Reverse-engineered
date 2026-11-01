package androidx.compose.ui.node;

import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.HashSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class BackwardsCompatNode extends androidx.compose.ui.f.c implements x, n, i1, e1, androidx.compose.ui.modifier.h, androidx.compose.ui.modifier.k, a1, w, p, androidx.compose.ui.focus.c, androidx.compose.ui.focus.m, androidx.compose.ui.focus.q, z0, androidx.compose.ui.draw.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private androidx.compose.ui.f.b f5216n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f5217o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.compose.ui.modifier.a f5218p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private HashSet f5219q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private androidx.compose.ui.layout.l f5220r;

    public BackwardsCompatNode(androidx.compose.ui.f.b bVar) {
        x1(t0.f(bVar));
        this.f5216n = bVar;
        this.f5217o = true;
        this.f5219q = new HashSet();
    }

    private final void F1(boolean z10) {
        if (!k1()) {
            g0.a.b("initializeModifier called on unattached node");
        }
        androidx.compose.ui.f.b bVar = this.f5216n;
        if ((s0.a(32) & f1()) != 0) {
            if (bVar instanceof androidx.compose.ui.modifier.d) {
                B1(new Function0<Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNode$initializeModifier$2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m121invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m121invoke() {
                        this.this$0.J1();
                    }
                });
            }
            if (bVar instanceof androidx.compose.ui.modifier.j) {
                K1((androidx.compose.ui.modifier.j) bVar);
            }
        }
        if ((s0.a(4) & f1()) != 0 && !z10) {
            a0.a(this);
        }
        if ((s0.a(2) & f1()) != 0) {
            if (BackwardsCompatNodeKt.d(this)) {
                NodeCoordinator nodeCoordinatorC1 = c1();
                Intrinsics.e(nodeCoordinatorC1);
                ((y) nodeCoordinatorC1).U2(this);
                nodeCoordinatorC1.o2();
            }
            if (!z10) {
                a0.a(this);
                g.m(this).y0();
            }
        }
        if (bVar instanceof androidx.compose.ui.layout.i0) {
            ((androidx.compose.ui.layout.i0) bVar).d(g.m(this));
        }
        s0.a(128);
        f1();
        if ((s0.a(256) & f1()) != 0 && (bVar instanceof androidx.compose.ui.layout.b0) && BackwardsCompatNodeKt.d(this)) {
            g.m(this).y0();
        }
        if ((s0.a(16) & f1()) != 0 && (bVar instanceof androidx.compose.ui.input.pointer.d0)) {
            ((androidx.compose.ui.input.pointer.d0) bVar).g().f(c1());
        }
        if ((s0.a(8) & f1()) != 0) {
            g.n(this).onSemanticsChange();
        }
    }

    private final void I1() {
        if (!k1()) {
            g0.a.b("unInitializeModifier called on unattached node");
        }
        androidx.compose.ui.f.b bVar = this.f5216n;
        if ((s0.a(32) & f1()) != 0) {
            if (bVar instanceof androidx.compose.ui.modifier.j) {
                g.n(this).getModifierLocalManager().d(this, ((androidx.compose.ui.modifier.j) bVar).getKey());
            }
            if (bVar instanceof androidx.compose.ui.modifier.d) {
                ((androidx.compose.ui.modifier.d) bVar).f(BackwardsCompatNodeKt.f5221a);
            }
        }
        if ((s0.a(8) & f1()) != 0) {
            g.n(this).onSemanticsChange();
        }
    }

    private final void K1(androidx.compose.ui.modifier.j jVar) {
        androidx.compose.ui.modifier.a aVar = this.f5218p;
        if (aVar != null && aVar.a(jVar.getKey())) {
            aVar.c(jVar);
            g.n(this).getModifierLocalManager().f(this, jVar.getKey());
        } else {
            this.f5218p = new androidx.compose.ui.modifier.a(jVar);
            if (BackwardsCompatNodeKt.d(this)) {
                g.n(this).getModifierLocalManager().a(this, jVar.getKey());
            }
        }
    }

    public final androidx.compose.ui.f.b D1() {
        return this.f5216n;
    }

    public final HashSet E1() {
        return this.f5219q;
    }

    @Override // androidx.compose.ui.node.w
    public void F(long j11) {
    }

    public final void G1() {
        this.f5217o = true;
        o.a(this);
    }

    public final void H1(androidx.compose.ui.f.b bVar) {
        if (k1()) {
            I1();
        }
        this.f5216n = bVar;
        x1(t0.f(bVar));
        if (k1()) {
            F1(false);
        }
    }

    @Override // androidx.compose.ui.node.w
    public void I(androidx.compose.ui.layout.l lVar) {
        this.f5220r = lVar;
    }

    public final void J1() {
        if (k1()) {
            this.f5219q.clear();
            g.n(this).getSnapshotObserver().i(this, BackwardsCompatNodeKt.f5223c, new Function0<Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNode$updateModifierLocalConsumer$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m122invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m122invoke() {
                    androidx.compose.ui.f.b bVarD1 = this.this$0.D1();
                    Intrinsics.f(bVarD1, "null cannot be cast to non-null type androidx.compose.ui.modifier.ModifierLocalConsumer");
                    ((androidx.compose.ui.modifier.d) bVarD1).f(this.this$0);
                }
            });
        }
    }

    @Override // androidx.compose.ui.node.e1
    public void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j11) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        ((androidx.compose.ui.input.pointer.d0) bVar).g().e(oVar, pointerEventPass, j11);
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean O() {
        return h1.a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r3v9 */
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
    @Override // androidx.compose.ui.modifier.k
    public Object P(androidx.compose.ui.modifier.c cVar) {
        q0 q0VarE0;
        this.f5219q.add(cVar);
        int iA = s0.a(32);
        if (!getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = getNode().h1();
        LayoutNode layoutNodeM = g.m(this);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        ?? G = cVarH1;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof androidx.compose.ui.modifier.h) {
                                androidx.compose.ui.modifier.h hVar = (androidx.compose.ui.modifier.h) G;
                                if (hVar.V().a(cVar)) {
                                    return hVar.V().b(cVar);
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
                    cVarH1 = cVarH1.h1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarH1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        return cVar.a().invoke();
    }

    @Override // androidx.compose.ui.node.e1
    public boolean P0() {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        return ((androidx.compose.ui.input.pointer.d0) bVar).g().c();
    }

    @Override // androidx.compose.ui.node.e1
    public boolean R() {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        return ((androidx.compose.ui.input.pointer.d0) bVar).g().a();
    }

    @Override // androidx.compose.ui.node.i1
    public void R0(androidx.compose.ui.semantics.n nVar) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier");
        androidx.compose.ui.semantics.i iVarH = ((androidx.compose.ui.semantics.j) bVar).h();
        Intrinsics.f(nVar, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration");
        ((androidx.compose.ui.semantics.i) nVar).c(iVarH);
    }

    @Override // androidx.compose.ui.focus.c
    public void S0(androidx.compose.ui.focus.r rVar) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        g0.a.b("onFocusEvent called on wrong node");
        android.support.v4.media.session.c.a(bVar);
        throw null;
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void T0() {
        d1.c(this);
    }

    @Override // androidx.compose.ui.modifier.h
    public androidx.compose.ui.modifier.f V() {
        androidx.compose.ui.modifier.a aVar = this.f5218p;
        return aVar != null ? aVar : androidx.compose.ui.modifier.i.a();
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean W0() {
        return h1.b(this);
    }

    @Override // androidx.compose.ui.draw.a
    public o0.e getDensity() {
        return g.m(this).H();
    }

    @Override // androidx.compose.ui.draw.a
    public LayoutDirection getLayoutDirection() {
        return g.m(this).getLayoutDirection();
    }

    @Override // androidx.compose.ui.draw.a
    public long i() {
        return o0.u.d(g.h(this, s0.a(128)).k());
    }

    @Override // androidx.compose.ui.node.z0
    public boolean isValidOwnerScope() {
        return k1();
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier");
        ((androidx.compose.ui.draw.f) bVar).n(cVar);
    }

    @Override // androidx.compose.ui.f.c
    public void n1() {
        F1(true);
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        I1();
    }

    @Override // androidx.compose.ui.focus.m
    public void r0(androidx.compose.ui.focus.k kVar) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        g0.a.b("applyFocusProperties called on wrong node");
        android.support.v4.media.session.c.a(bVar);
        new androidx.compose.ui.focus.h(kVar);
        throw null;
    }

    @Override // androidx.compose.ui.node.e1
    public void t0() {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        ((androidx.compose.ui.input.pointer.d0) bVar).g().d();
    }

    public String toString() {
        return this.f5216n.toString();
    }

    @Override // androidx.compose.ui.node.p
    public void v(androidx.compose.ui.layout.l lVar) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier");
        ((androidx.compose.ui.layout.b0) bVar).v(lVar);
    }

    @Override // androidx.compose.ui.node.a1
    public Object v0(o0.e eVar, Object obj) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier");
        android.support.v4.media.session.c.a(bVar);
        throw null;
    }

    @Override // androidx.compose.ui.node.n
    public void w0() {
        this.f5217o = true;
        o.a(this);
    }

    @Override // androidx.compose.ui.node.x
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        androidx.compose.ui.f.b bVar = this.f5216n;
        Intrinsics.f(bVar, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier");
        return ((androidx.compose.ui.layout.o) bVar).z(xVar, sVar, j11);
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void z0() {
        d1.b(this);
    }
}
