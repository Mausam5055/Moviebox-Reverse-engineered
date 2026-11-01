package androidx.compose.ui.focus;

import androidx.compose.ui.layout.BeyondBoundsLayoutKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class FocusTargetNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, s, u0, androidx.compose.ui.modifier.h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f4228n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4229o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private FocusStateImpl f4230p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f4231q;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4232a;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f4232a = iArr;
        }
    }

    private final void L1() {
        if (O1(this)) {
            throw new IllegalStateException("Re-initializing focus target node.");
        }
        v vVarD = u.d(this);
        try {
            if (vVarD.f4255c) {
                vVarD.g();
            }
            vVarD.f();
            Q1((N1(this) && M1(this)) ? FocusStateImpl.ActiveParent : FocusStateImpl.Inactive);
            Unit unit = Unit.f67061a;
        } finally {
            vVarD.h();
        }
    }

    private static final boolean M1(FocusTargetNode focusTargetNode) {
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            g0.a.b("visitSubtreeIf called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = focusTargetNode.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar, focusTargetNode.getNode());
        } else {
            bVar.b(cVarB1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVar = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVar.a1() & iA) != 0) {
                for (androidx.compose.ui.f.c cVarB2 = cVar; cVarB2 != null; cVarB2 = cVarB2.b1()) {
                    if ((cVarB2.f1() & iA) != 0) {
                        androidx.compose.ui.f.c cVarG = cVarB2;
                        androidx.compose.runtime.collection.b bVar2 = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (O1(focusTargetNode2)) {
                                    int i11 = a.f4232a[focusTargetNode2.K1().ordinal()];
                                    if (i11 == 1 || i11 == 2 || i11 == 3) {
                                        return true;
                                    }
                                    if (i11 == 4) {
                                        return false;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i12 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i12++;
                                        if (i12 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar2 == null) {
                                                bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar2.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar2.b(cVarE1);
                                        }
                                    }
                                }
                                if (i12 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar2);
                        }
                    }
                }
            }
            androidx.compose.ui.node.g.c(bVar, cVar);
        }
        return false;
    }

    private static final boolean N1(FocusTargetNode focusTargetNode) {
        q0 q0VarE0;
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = focusTargetNode.getNode().h1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        androidx.compose.ui.f.c cVarG = cVarH1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
                                if (O1(focusTargetNode2)) {
                                    int i11 = a.f4232a[focusTargetNode2.K1().ordinal()];
                                    if (i11 == 1 || i11 == 2) {
                                        return false;
                                    }
                                    if (i11 == 3) {
                                        return true;
                                    }
                                    if (i11 == 4) {
                                        return false;
                                    }
                                    throw new NoWhenBranchMatchedException();
                                }
                            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i12 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i12++;
                                        if (i12 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar == null) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar.b(cVarE1);
                                        }
                                    }
                                }
                                if (i12 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar);
                        }
                    }
                    cVarH1 = cVarH1.h1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarH1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        return false;
    }

    private static final boolean O1(FocusTargetNode focusTargetNode) {
        return focusTargetNode.f4230p != null;
    }

    public final void H1() {
        FocusStateImpl focusStateImplI = u.d(this).i(this);
        if (focusStateImplI != null) {
            this.f4230p = focusStateImplI;
        } else {
            g0.a.c("committing a node that was not updated in the current transaction");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public final k I1() {
        q0 q0VarE0;
        FocusPropertiesImpl focusPropertiesImpl = new FocusPropertiesImpl();
        int iA = s0.a(2048);
        int iA2 = s0.a(1024);
        androidx.compose.ui.f.c node = getNode();
        int i11 = iA | iA2;
        if (!getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c node2 = getNode();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(this);
        loop0: while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().a1() & i11) != 0) {
                while (node2 != null) {
                    if ((node2.f1() & i11) != 0) {
                        if (node2 != node && (node2.f1() & iA2) != 0) {
                            break loop0;
                        }
                        if ((node2.f1() & iA) != 0) {
                            ?? G = node2;
                            ?? bVar = 0;
                            while (G != 0) {
                                if (G instanceof m) {
                                    ((m) G).r0(focusPropertiesImpl);
                                } else if ((G.f1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                                    androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) G).E1();
                                    int i12 = 0;
                                    G = G;
                                    bVar = bVar;
                                    while (cVarE1 != null) {
                                        if ((cVarE1.f1() & iA) != 0) {
                                            i12++;
                                            if (i12 == 1) {
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
                                    if (i12 == 1) {
                                    }
                                }
                                G = androidx.compose.ui.node.g.g(bVar);
                            }
                        }
                    }
                    node2 = node2.h1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            node2 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        return focusPropertiesImpl;
    }

    public final androidx.compose.ui.layout.d J1() {
        return (androidx.compose.ui.layout.d) P(BeyondBoundsLayoutKt.a());
    }

    public FocusStateImpl K1() {
        FocusStateImpl focusStateImplI;
        v vVarB = u.b(this);
        if (vVarB != null && (focusStateImplI = vVarB.i(this)) != null) {
            return focusStateImplI;
        }
        FocusStateImpl focusStateImpl = this.f4230p;
        return focusStateImpl == null ? FocusStateImpl.Inactive : focusStateImpl;
    }

    @Override // androidx.compose.ui.modifier.k
    public /* synthetic */ Object P(androidx.compose.ui.modifier.c cVar) {
        return androidx.compose.ui.modifier.g.a(this, cVar);
    }

    public final void P1() {
        k kVar;
        if (this.f4230p == null) {
            L1();
        }
        int i11 = a.f4232a[K1().ordinal()];
        if (i11 == 1 || i11 == 2) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            v0.a(this, new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m110invoke();
                    return Unit.f67061a;
                }

                /* JADX WARN: Type inference failed for: r1v1, types: [T, androidx.compose.ui.focus.k] */
                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m110invoke() {
                    objectRef.element = this.I1();
                }
            });
            T t11 = objectRef.element;
            if (t11 == 0) {
                Intrinsics.z("focusProperties");
                kVar = null;
            } else {
                kVar = (k) t11;
            }
            if (kVar.t()) {
                return;
            }
            androidx.compose.ui.node.g.n(this).getFocusOwner().o(true);
        }
    }

    public void Q1(FocusStateImpl focusStateImpl) {
        u.d(this).j(this, focusStateImpl);
    }

    @Override // androidx.compose.ui.modifier.h
    public /* synthetic */ androidx.compose.ui.modifier.f V() {
        return androidx.compose.ui.modifier.g.b(this);
    }

    @Override // androidx.compose.ui.node.u0
    public void Z() {
        FocusStateImpl focusStateImplK1 = K1();
        P1();
        if (focusStateImplK1 != K1()) {
            d.c(this);
        }
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f4231q;
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        int i11 = a.f4232a[K1().ordinal()];
        if (i11 == 1 || i11 == 2) {
            androidx.compose.ui.node.g.n(this).getFocusOwner().j(true, true, false, b.f4237b.c());
            u.c(this);
        } else if (i11 == 3) {
            v vVarD = u.d(this);
            try {
                if (vVarD.f4255c) {
                    vVarD.g();
                }
                vVarD.f();
                Q1(FocusStateImpl.Inactive);
                Unit unit = Unit.f67061a;
                vVarD.h();
            } catch (Throwable th2) {
                vVarD.h();
                throw th2;
            }
        }
        this.f4230p = null;
    }
}
