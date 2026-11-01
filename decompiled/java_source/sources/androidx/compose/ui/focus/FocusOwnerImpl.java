package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.collection.i0;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.l0;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class FocusOwnerImpl implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2 f4199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f4200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function0 f4201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0 f4202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function0 f4203e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final FocusInvalidationManager f4205g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private i0 f4208j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FocusTargetNode f4204f = new FocusTargetNode();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v f4206h = new v();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.compose.ui.f f4207i = l.a(androidx.compose.ui.f.f4178a, new Function1<k, Unit>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((k) obj);
            return Unit.f67061a;
        }

        public final void invoke(k kVar) {
            kVar.r(false);
        }
    }).e(new l0() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$2
        public boolean equals(Object other) {
            return other == this;
        }

        public int hashCode() {
            return this.f4210b.q().hashCode();
        }

        @Override // androidx.compose.ui.node.l0
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public FocusTargetNode a() {
            return this.f4210b.q();
        }

        @Override // androidx.compose.ui.node.l0
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(FocusTargetNode node) {
        }
    });

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4209a;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f4209a = iArr;
        }
    }

    public FocusOwnerImpl(Function1 function1, Function2 function2, Function1 function3, Function0 function0, Function0 function4, Function0 function5) {
        this.f4199a = function2;
        this.f4200b = function3;
        this.f4201c = function0;
        this.f4202d = function4;
        this.f4203e = function5;
        this.f4205g = new FocusInvalidationManager(function1, new FocusOwnerImpl$focusInvalidationManager$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        if (this.f4204f.K1() == FocusStateImpl.Inactive) {
            this.f4201c.invoke();
        }
    }

    private final androidx.compose.ui.f.c s(androidx.compose.ui.node.f fVar) {
        int iA = s0.a(1024) | s0.a(8192);
        if (!fVar.getNode().k1()) {
            g0.a.b("visitLocalDescendants called on an unattached node");
        }
        androidx.compose.ui.f.c node = fVar.getNode();
        androidx.compose.ui.f.c cVar = null;
        if ((node.a1() & iA) != 0) {
            for (androidx.compose.ui.f.c cVarB1 = node.b1(); cVarB1 != null; cVarB1 = cVarB1.b1()) {
                if ((cVarB1.f1() & iA) != 0) {
                    if ((s0.a(1024) & cVarB1.f1()) != 0) {
                        return cVar;
                    }
                    cVar = cVarB1;
                }
            }
        }
        return cVar;
    }

    private final boolean t(KeyEvent keyEvent) {
        long jA = d0.d.a(keyEvent);
        int iB = d0.d.b(keyEvent);
        d0.c.a aVar = d0.c.f61122a;
        if (d0.c.e(iB, aVar.a())) {
            i0 i0Var = this.f4208j;
            if (i0Var == null) {
                i0Var = new i0(3);
                this.f4208j = i0Var;
            }
            i0Var.l(jA);
        } else if (d0.c.e(iB, aVar.b())) {
            i0 i0Var2 = this.f4208j;
            if (i0Var2 == null || !i0Var2.a(jA)) {
                return false;
            }
            i0 i0Var3 = this.f4208j;
            if (i0Var3 != null) {
                i0Var3.m(jA);
            }
        }
        return true;
    }

    @Override // androidx.compose.ui.focus.i
    public void a(c cVar) {
        this.f4205g.e(cVar);
    }

    @Override // androidx.compose.ui.focus.i
    public boolean b(b bVar, y.i iVar) {
        return ((Boolean) this.f4199a.invoke(bVar, iVar)).booleanValue();
    }

    @Override // androidx.compose.ui.focus.i
    public v c() {
        return this.f4206h;
    }

    @Override // androidx.compose.ui.focus.i
    public boolean d(KeyEvent keyEvent) {
        q0 q0VarE0;
        if (this.f4205g.b()) {
            throw new IllegalStateException("Dispatching intercepted soft keyboard event while focus system is invalidated.");
        }
        FocusTargetNode focusTargetNodeB = w.b(this.f4204f);
        if (focusTargetNodeB != null) {
            int iA = s0.a(131072);
            if (!focusTargetNodeB.getNode().k1()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            androidx.compose.ui.f.c node = focusTargetNodeB.getNode();
            LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNodeB);
            while (layoutNodeM != null) {
                if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                    while (node != null) {
                        if ((node.f1() & iA) != 0) {
                            androidx.compose.ui.f.c cVarG = node;
                            androidx.compose.runtime.collection.b bVar = null;
                            while (cVarG != null) {
                                if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                    int i11 = 0;
                                    for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                        if ((cVarE1.f1() & iA) != 0) {
                                            i11++;
                                            if (i11 == 1) {
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
                                    if (i11 == 1) {
                                    }
                                }
                                cVarG = androidx.compose.ui.node.g.g(bVar);
                            }
                        }
                        node = node.h1();
                    }
                }
                layoutNodeM = layoutNodeM.h0();
                node = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
            }
            android.support.v4.media.session.c.a(null);
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.i
    public Boolean e(int i11, y.i iVar, final Function1 function1) {
        final FocusTargetNode focusTargetNodeB = w.b(this.f4204f);
        if (focusTargetNodeB != null) {
            FocusRequester focusRequesterA = w.a(focusTargetNodeB, i11, (LayoutDirection) this.f4203e.invoke());
            FocusRequester.a aVar = FocusRequester.f4223b;
            if (Intrinsics.c(focusRequesterA, aVar.a())) {
                return null;
            }
            if (!Intrinsics.c(focusRequesterA, aVar.b())) {
                return Boolean.valueOf(focusRequesterA.c(function1));
            }
        } else {
            focusTargetNodeB = null;
        }
        return w.e(this.f4204f, i11, (LayoutDirection) this.f4203e.invoke(), iVar, new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                boolean zBooleanValue;
                if (Intrinsics.c(focusTargetNode, focusTargetNodeB)) {
                    zBooleanValue = false;
                } else {
                    if (Intrinsics.c(focusTargetNode, this.q())) {
                        throw new IllegalStateException("Focus search landed at the root.");
                    }
                    zBooleanValue = ((Boolean) function1.invoke(focusTargetNode)).booleanValue();
                }
                return Boolean.valueOf(zBooleanValue);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v45 */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override // androidx.compose.ui.focus.i
    public boolean f(f0.b bVar) {
        f0.a aVar;
        int size;
        q0 q0VarE0;
        ?? G;
        q0 q0VarE1;
        if (this.f4205g.b()) {
            throw new IllegalStateException("Dispatching rotary event while focus system is invalidated.");
        }
        FocusTargetNode focusTargetNodeB = w.b(this.f4204f);
        if (focusTargetNodeB != null) {
            int iA = s0.a(16384);
            if (!focusTargetNodeB.getNode().k1()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            androidx.compose.ui.f.c node = focusTargetNodeB.getNode();
            LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNodeB);
            loop0: while (true) {
                if (layoutNodeM == null) {
                    G = 0;
                    break;
                }
                if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                    while (node != null) {
                        if ((node.f1() & iA) != 0) {
                            ?? bVar2 = 0;
                            G = node;
                            while (G != 0) {
                                if (G instanceof f0.a) {
                                    break loop0;
                                }
                                if ((G.f1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                                    androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) G).E1();
                                    int i11 = 0;
                                    while (cVarE1 != null) {
                                        if ((cVarE1.f1() & iA) != 0) {
                                            i11++;
                                            if (i11 == 1) {
                                                G = G;
                                                bVar2 = bVar2;
                                                bVar2 = bVar2;
                                                G = cVarE1;
                                            } else {
                                                if (bVar2 == 0) {
                                                    bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                }
                                                if (G != 0) {
                                                    bVar2.b(G);
                                                    G = 0;
                                                }
                                                bVar2.b(cVarE1);
                                            }
                                        } else {
                                            G = G;
                                            bVar2 = bVar2;
                                        }
                                        cVarE1 = cVarE1.b1();
                                        G = G;
                                        bVar2 = bVar2;
                                    }
                                    if (i11 == 1) {
                                        G = G;
                                        bVar2 = bVar2;
                                    } else {
                                        G = G;
                                        bVar2 = bVar2;
                                    }
                                }
                                G = androidx.compose.ui.node.g.g(bVar2);
                            }
                        }
                        node = node.h1();
                    }
                }
                layoutNodeM = layoutNodeM.h0();
                node = (layoutNodeM == null || (q0VarE1 = layoutNodeM.e0()) == null) ? null : q0VarE1.o();
            }
            aVar = (f0.a) G;
        } else {
            aVar = null;
        }
        if (aVar != null) {
            int iA2 = s0.a(16384);
            if (!aVar.getNode().k1()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            androidx.compose.ui.f.c cVarH1 = aVar.getNode().h1();
            LayoutNode layoutNodeM2 = androidx.compose.ui.node.g.m(aVar);
            ArrayList arrayList = null;
            while (layoutNodeM2 != null) {
                if ((layoutNodeM2.e0().k().a1() & iA2) != 0) {
                    while (cVarH1 != null) {
                        if ((cVarH1.f1() & iA2) != 0) {
                            androidx.compose.ui.f.c cVarG = cVarH1;
                            androidx.compose.runtime.collection.b bVar3 = null;
                            while (cVarG != null) {
                                if (cVarG instanceof f0.a) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(cVarG);
                                } else if ((cVarG.f1() & iA2) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                    int i12 = 0;
                                    for (androidx.compose.ui.f.c cVarE2 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE2 != null; cVarE2 = cVarE2.b1()) {
                                        if ((cVarE2.f1() & iA2) != 0) {
                                            i12++;
                                            if (i12 == 1) {
                                                cVarG = cVarE2;
                                            } else {
                                                if (bVar3 == null) {
                                                    bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                }
                                                if (cVarG != null) {
                                                    bVar3.b(cVarG);
                                                    cVarG = null;
                                                }
                                                bVar3.b(cVarE2);
                                            }
                                        }
                                    }
                                    if (i12 == 1) {
                                    }
                                }
                                cVarG = androidx.compose.ui.node.g.g(bVar3);
                            }
                        }
                        cVarH1 = cVarH1.h1();
                    }
                }
                layoutNodeM2 = layoutNodeM2.h0();
                cVarH1 = (layoutNodeM2 == null || (q0VarE0 = layoutNodeM2.e0()) == null) ? null : q0VarE0.o();
            }
            if (arrayList != null && (size = arrayList.size() - 1) >= 0) {
                while (true) {
                    int i13 = size - 1;
                    if (((f0.a) arrayList.get(size)).J0(bVar)) {
                        return true;
                    }
                    if (i13 < 0) {
                        break;
                    }
                    size = i13;
                }
            }
            ?? node2 = aVar.getNode();
            ?? bVar4 = 0;
            while (node2 != 0) {
                if (node2 instanceof f0.a) {
                    if (((f0.a) node2).J0(bVar)) {
                        return true;
                    }
                } else if ((node2.f1() & iA2) != 0 && (node2 instanceof androidx.compose.ui.node.i)) {
                    androidx.compose.ui.f.c cVarE3 = ((androidx.compose.ui.node.i) node2).E1();
                    int i14 = 0;
                    while (cVarE3 != null) {
                        if ((cVarE3.f1() & iA2) != 0) {
                            i14++;
                            if (i14 == 1) {
                                node2 = node2;
                                bVar4 = bVar4;
                                bVar4 = bVar4;
                                node2 = cVarE3;
                            } else {
                                if (bVar4 == 0) {
                                    bVar4 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                }
                                if (node2 != 0) {
                                    bVar4.b(node2);
                                    node2 = 0;
                                }
                                bVar4.b(cVarE3);
                            }
                        } else {
                            node2 = node2;
                            bVar4 = bVar4;
                        }
                        cVarE3 = cVarE3.b1();
                        node2 = node2;
                        bVar4 = bVar4;
                    }
                    if (i14 == 1) {
                        node2 = node2;
                        bVar4 = bVar4;
                    } else {
                        node2 = node2;
                        bVar4 = bVar4;
                    }
                }
                node2 = androidx.compose.ui.node.g.g(bVar4);
            }
            ?? node3 = aVar.getNode();
            ?? bVar5 = 0;
            while (node3 != 0) {
                if (node3 instanceof f0.a) {
                    if (((f0.a) node3).X0(bVar)) {
                        return true;
                    }
                } else if ((node3.f1() & iA2) != 0 && (node3 instanceof androidx.compose.ui.node.i)) {
                    androidx.compose.ui.f.c cVarE4 = ((androidx.compose.ui.node.i) node3).E1();
                    int i15 = 0;
                    while (cVarE4 != null) {
                        if ((cVarE4.f1() & iA2) != 0) {
                            i15++;
                            if (i15 == 1) {
                                node3 = node3;
                                bVar5 = bVar5;
                                bVar5 = bVar5;
                                node3 = cVarE4;
                            } else {
                                if (bVar5 == 0) {
                                    bVar5 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                }
                                if (node3 != 0) {
                                    bVar5.b(node3);
                                    node3 = 0;
                                }
                                bVar5.b(cVarE4);
                            }
                        } else {
                            node3 = node3;
                            bVar5 = bVar5;
                        }
                        cVarE4 = cVarE4.b1();
                        node3 = node3;
                        bVar5 = bVar5;
                    }
                    if (i15 == 1) {
                        node3 = node3;
                        bVar5 = bVar5;
                    } else {
                        node3 = node3;
                        bVar5 = bVar5;
                    }
                }
                node3 = androidx.compose.ui.node.g.g(bVar5);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i16 = 0; i16 < size2; i16++) {
                    if (((f0.a) arrayList.get(i16)).X0(bVar)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.i
    public void g(FocusTargetNode focusTargetNode) {
        this.f4205g.g(focusTargetNode);
    }

    @Override // androidx.compose.ui.focus.i
    public androidx.compose.ui.f h() {
        return this.f4207i;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x016a  */
    /* JADX WARN: Code duplicated, block: B:104:0x016f  */
    /* JADX WARN: Code duplicated, block: B:228:0x030d  */
    /* JADX WARN: Code duplicated, block: B:304:0x0166 A[EDGE_INSN: B:304:0x0166->B:101:0x0166 BREAK  A[LOOP:14: B:62:0x00ea->B:309:0x00ea, LOOP_LABEL: LOOP:14: B:62:0x00ea->B:309:0x00ea], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x0165 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:313:0x014d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:61:0x00de  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb A[ADDED_TO_REGION, LOOP:15: B:65:0x00fb->B:93:0x014d, LOOP_START, PHI: r10
  0x00fb: PHI (r10v9 androidx.compose.ui.f$c) = (r10v4 androidx.compose.ui.f$c), (r10v10 androidx.compose.ui.f$c) binds: [B:64:0x00f9, B:93:0x014d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:68:0x0104  */
    /* JADX WARN: Code duplicated, block: B:70:0x0108  */
    /* JADX WARN: Code duplicated, block: B:73:0x010d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r11v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v30, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r11v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v44 */
    /* JADX WARN: Type inference failed for: r11v64 */
    /* JADX WARN: Type inference failed for: r11v65 */
    /* JADX WARN: Type inference failed for: r11v66 */
    /* JADX WARN: Type inference failed for: r11v67 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r5v10, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v4, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r5v9, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r9v10 */
    @Override // androidx.compose.ui.focus.i
    public boolean i(KeyEvent keyEvent, Function0 function0) {
        FocusTargetNode focusTargetNode;
        int iA;
        androidx.compose.ui.f.c cVarH1;
        LayoutNode layoutNodeM;
        ?? G;
        d0.e eVar;
        androidx.compose.ui.f.c node;
        q0 q0VarE0;
        ?? bVar;
        ?? G2;
        q0 q0VarE1;
        q0 q0VarE2;
        if (this.f4205g.b()) {
            throw new IllegalStateException("Dispatching key event while focus system is invalidated.");
        }
        if (!t(keyEvent)) {
            return false;
        }
        FocusTargetNode focusTargetNodeB = w.b(this.f4204f);
        if (focusTargetNodeB == null || (node = s(focusTargetNodeB)) == null) {
            if (focusTargetNodeB != null) {
                int iA2 = s0.a(8192);
                if (!focusTargetNodeB.getNode().k1()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                androidx.compose.ui.f.c node2 = focusTargetNodeB.getNode();
                LayoutNode layoutNodeM2 = androidx.compose.ui.node.g.m(focusTargetNodeB);
                loop10: while (true) {
                    if (layoutNodeM2 == null) {
                        G2 = 0;
                        break;
                    }
                    if ((layoutNodeM2.e0().k().a1() & iA2) != 0) {
                        while (node2 != null) {
                            if ((node2.f1() & iA2) != 0) {
                                ?? bVar2 = 0;
                                G2 = node2;
                                while (G2 != 0) {
                                    if (G2 instanceof d0.e) {
                                        break loop10;
                                    }
                                    if ((G2.f1() & iA2) != 0 && (G2 instanceof androidx.compose.ui.node.i)) {
                                        androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) G2).E1();
                                        int i11 = 0;
                                        while (cVarE1 != null) {
                                            if ((cVarE1.f1() & iA2) != 0) {
                                                i11++;
                                                if (i11 == 1) {
                                                    G2 = G2;
                                                    bVar2 = bVar2;
                                                    bVar2 = bVar2;
                                                    G2 = cVarE1;
                                                } else {
                                                    if (bVar2 == 0) {
                                                        bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                    }
                                                    if (G2 != 0) {
                                                        bVar2.b(G2);
                                                        G2 = 0;
                                                    }
                                                    bVar2.b(cVarE1);
                                                }
                                            } else {
                                                G2 = G2;
                                                bVar2 = bVar2;
                                            }
                                            cVarE1 = cVarE1.b1();
                                            G2 = G2;
                                            bVar2 = bVar2;
                                        }
                                        if (i11 == 1) {
                                            G2 = G2;
                                            bVar2 = bVar2;
                                        } else {
                                            G2 = G2;
                                            bVar2 = bVar2;
                                        }
                                    }
                                    G2 = androidx.compose.ui.node.g.g(bVar2);
                                }
                            }
                            node2 = node2.h1();
                        }
                    }
                    layoutNodeM2 = layoutNodeM2.h0();
                    node2 = (layoutNodeM2 == null || (q0VarE1 = layoutNodeM2.e0()) == null) ? null : q0VarE1.o();
                }
                d0.e eVar2 = (d0.e) G2;
                if (eVar2 != null) {
                    node = eVar2.getNode();
                } else {
                    focusTargetNode = this.f4204f;
                    iA = s0.a(8192);
                    if (focusTargetNode.getNode().k1()) {
                        throw new IllegalStateException("visitAncestors called on an unattached node");
                    }
                    cVarH1 = focusTargetNode.getNode().h1();
                    layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
                    loop14: while (true) {
                        if (layoutNodeM != null) {
                            G = 0;
                            break;
                        }
                        if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                            while (cVarH1 != null) {
                                if ((cVarH1.f1() & iA) != 0) {
                                    bVar = 0;
                                    G = cVarH1;
                                    while (G != 0) {
                                        if (G instanceof d0.e) {
                                            break loop14;
                                        }
                                        if ((G.f1() & iA) == 0 && (G instanceof androidx.compose.ui.node.i)) {
                                            androidx.compose.ui.f.c cVarE2 = ((androidx.compose.ui.node.i) G).E1();
                                            int i12 = 0;
                                            while (cVarE2 != null) {
                                                if ((cVarE2.f1() & iA) != 0) {
                                                    i12++;
                                                    if (i12 == 1) {
                                                        G = G;
                                                        bVar = bVar;
                                                        bVar = bVar;
                                                        G = cVarE2;
                                                    } else {
                                                        if (bVar == 0) {
                                                            bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                        }
                                                        if (G != 0) {
                                                            bVar.b(G);
                                                            G = 0;
                                                        }
                                                        bVar.b(cVarE2);
                                                    }
                                                } else {
                                                    G = G;
                                                    bVar = bVar;
                                                }
                                                cVarE2 = cVarE2.b1();
                                                G = G;
                                                bVar = bVar;
                                            }
                                            if (i12 == 1) {
                                                G = G;
                                                bVar = bVar;
                                            } else {
                                                G = G;
                                                bVar = bVar;
                                            }
                                        }
                                        G = androidx.compose.ui.node.g.g(bVar);
                                    }
                                }
                                cVarH1 = cVarH1.h1();
                            }
                        }
                        layoutNodeM = layoutNodeM.h0();
                        cVarH1 = (layoutNodeM != null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
                    }
                    eVar = (d0.e) G;
                    if (eVar != null) {
                        node = eVar.getNode();
                    } else {
                        node = null;
                    }
                }
            } else {
                focusTargetNode = this.f4204f;
                iA = s0.a(8192);
                if (focusTargetNode.getNode().k1()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                cVarH1 = focusTargetNode.getNode().h1();
                layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
                loop14: while (true) {
                    if (layoutNodeM != null) {
                        G = 0;
                        break;
                    }
                    if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                        while (cVarH1 != null) {
                            if ((cVarH1.f1() & iA) != 0) {
                                bVar = 0;
                                G = cVarH1;
                                while (G != 0) {
                                    if (G instanceof d0.e) {
                                        break loop14;
                                        break loop14;
                                    }
                                    if ((G.f1() & iA) == 0) {
                                    }
                                    G = androidx.compose.ui.node.g.g(bVar);
                                }
                            }
                            cVarH1 = cVarH1.h1();
                        }
                    }
                    layoutNodeM = layoutNodeM.h0();
                    if (layoutNodeM != null) {
                    }
                }
                eVar = (d0.e) G;
                if (eVar != null) {
                    node = eVar.getNode();
                } else {
                    node = null;
                }
            }
        }
        if (node != null) {
            int iA3 = s0.a(8192);
            if (!node.getNode().k1()) {
                throw new IllegalStateException("visitAncestors called on an unattached node");
            }
            androidx.compose.ui.f.c cVarH2 = node.getNode().h1();
            LayoutNode layoutNodeM3 = androidx.compose.ui.node.g.m(node);
            ArrayList arrayList = null;
            while (layoutNodeM3 != null) {
                if ((layoutNodeM3.e0().k().a1() & iA3) != 0) {
                    while (cVarH2 != null) {
                        if ((cVarH2.f1() & iA3) != 0) {
                            androidx.compose.ui.f.c cVarG = cVarH2;
                            androidx.compose.runtime.collection.b bVar3 = null;
                            while (cVarG != null) {
                                if (cVarG instanceof d0.e) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(cVarG);
                                } else if ((cVarG.f1() & iA3) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                    int i13 = 0;
                                    for (androidx.compose.ui.f.c cVarE3 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE3 != null; cVarE3 = cVarE3.b1()) {
                                        if ((cVarE3.f1() & iA3) != 0) {
                                            i13++;
                                            if (i13 == 1) {
                                                cVarG = cVarE3;
                                            } else {
                                                if (bVar3 == null) {
                                                    bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                }
                                                if (cVarG != null) {
                                                    bVar3.b(cVarG);
                                                    cVarG = null;
                                                }
                                                bVar3.b(cVarE3);
                                            }
                                        }
                                    }
                                    if (i13 == 1) {
                                    }
                                }
                                cVarG = androidx.compose.ui.node.g.g(bVar3);
                            }
                        }
                        cVarH2 = cVarH2.h1();
                    }
                }
                layoutNodeM3 = layoutNodeM3.h0();
                cVarH2 = (layoutNodeM3 == null || (q0VarE2 = layoutNodeM3.e0()) == null) ? null : q0VarE2.o();
            }
            if (arrayList != null) {
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i14 = size - 1;
                        if (((d0.e) arrayList.get(size)).l0(keyEvent)) {
                            return true;
                        }
                        if (i14 < 0) {
                            break;
                        }
                        size = i14;
                    }
                }
                Unit unit = Unit.f67061a;
            }
            ?? node3 = node.getNode();
            ?? bVar4 = 0;
            while (node3 != 0) {
                if (node3 instanceof d0.e) {
                    if (((d0.e) node3).l0(keyEvent)) {
                        return true;
                    }
                } else if ((node3.f1() & iA3) != 0 && (node3 instanceof androidx.compose.ui.node.i)) {
                    androidx.compose.ui.f.c cVarE4 = ((androidx.compose.ui.node.i) node3).E1();
                    int i15 = 0;
                    while (cVarE4 != null) {
                        if ((cVarE4.f1() & iA3) != 0) {
                            i15++;
                            if (i15 == 1) {
                                node3 = node3;
                                bVar4 = bVar4;
                                bVar4 = bVar4;
                                node3 = cVarE4;
                            } else {
                                if (bVar4 == 0) {
                                    bVar4 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                }
                                if (node3 != 0) {
                                    bVar4.b(node3);
                                    node3 = 0;
                                }
                                bVar4.b(cVarE4);
                            }
                        } else {
                            node3 = node3;
                            bVar4 = bVar4;
                        }
                        cVarE4 = cVarE4.b1();
                        node3 = node3;
                        bVar4 = bVar4;
                    }
                    if (i15 == 1) {
                        node3 = node3;
                        bVar4 = bVar4;
                    } else {
                        node3 = node3;
                        bVar4 = bVar4;
                    }
                }
                node3 = androidx.compose.ui.node.g.g(bVar4);
            }
            if (((Boolean) function0.invoke()).booleanValue()) {
                return true;
            }
            ?? node4 = node.getNode();
            ?? bVar5 = 0;
            while (node4 != 0) {
                if (node4 instanceof d0.e) {
                    if (((d0.e) node4).s0(keyEvent)) {
                        return true;
                    }
                } else if ((node4.f1() & iA3) != 0 && (node4 instanceof androidx.compose.ui.node.i)) {
                    androidx.compose.ui.f.c cVarE5 = ((androidx.compose.ui.node.i) node4).E1();
                    int i16 = 0;
                    while (cVarE5 != null) {
                        if ((cVarE5.f1() & iA3) != 0) {
                            i16++;
                            if (i16 == 1) {
                                node4 = node4;
                                bVar5 = bVar5;
                                bVar5 = bVar5;
                                node4 = cVarE5;
                            } else {
                                if (bVar5 == 0) {
                                    bVar5 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                }
                                if (node4 != 0) {
                                    bVar5.b(node4);
                                    node4 = 0;
                                }
                                bVar5.b(cVarE5);
                            }
                        } else {
                            node4 = node4;
                            bVar5 = bVar5;
                        }
                        cVarE5 = cVarE5.b1();
                        node4 = node4;
                        bVar5 = bVar5;
                    }
                    if (i16 == 1) {
                        node4 = node4;
                        bVar5 = bVar5;
                    } else {
                        node4 = node4;
                        bVar5 = bVar5;
                    }
                }
                node4 = androidx.compose.ui.node.g.g(bVar5);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i17 = 0; i17 < size2; i17++) {
                    if (((d0.e) arrayList.get(i17)).s0(keyEvent)) {
                        return true;
                    }
                }
                Unit unit2 = Unit.f67061a;
            }
            Unit unit3 = Unit.f67061a;
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.i
    public boolean j(boolean z10, boolean z11, boolean z12, int i11) {
        boolean zC;
        v vVarC = c();
        FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 = new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m104invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m104invoke() {
            }
        };
        try {
            if (vVarC.f4255c) {
                vVarC.g();
            }
            vVarC.f();
            if (focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1 != null) {
                vVarC.f4254b.b(focusOwnerImpl$clearFocus$clearedFocusSuccessfully$1);
            }
            if (!z10) {
                int i12 = a.f4209a[FocusTransactionsKt.e(this.f4204f, i11).ordinal()];
                zC = (i12 == 1 || i12 == 2 || i12 == 3) ? false : FocusTransactionsKt.c(this.f4204f, z10, z11);
            }
            vVarC.h();
            if (zC && z12) {
                this.f4201c.invoke();
            }
            return zC;
        } catch (Throwable th2) {
            vVarC.h();
            throw th2;
        }
    }

    @Override // androidx.compose.ui.focus.i
    public r k() {
        return this.f4204f.K1();
    }

    @Override // androidx.compose.ui.focus.i
    public void l(m mVar) {
        this.f4205g.f(mVar);
    }

    @Override // androidx.compose.ui.focus.i
    public y.i m() {
        FocusTargetNode focusTargetNodeB = w.b(this.f4204f);
        if (focusTargetNodeB != null) {
            return w.d(focusTargetNodeB);
        }
        return null;
    }

    @Override // androidx.compose.ui.focus.i
    public void n() {
        v vVarC = c();
        if (vVarC.f4255c) {
            FocusTransactionsKt.c(this.f4204f, true, true);
            return;
        }
        try {
            vVarC.f();
            FocusTransactionsKt.c(this.f4204f, true, true);
        } finally {
            vVarC.h();
        }
    }

    @Override // androidx.compose.ui.focus.g
    public void o(boolean z10) {
        j(z10, true, true, b.f4237b.c());
    }

    public final FocusTargetNode q() {
        return this.f4204f;
    }
}
