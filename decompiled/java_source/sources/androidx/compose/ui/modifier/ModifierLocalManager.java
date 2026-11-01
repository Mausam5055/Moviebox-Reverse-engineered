package androidx.compose.ui.modifier;

import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.y0;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class ModifierLocalManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y0 f5198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5199b = new androidx.compose.runtime.collection.b(new BackwardsCompatNode[16], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5200c = new androidx.compose.runtime.collection.b(new c[16], 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5201d = new androidx.compose.runtime.collection.b(new LayoutNode[16], 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f5202e = new androidx.compose.runtime.collection.b(new c[16], 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5203f;

    public ModifierLocalManager(y0 y0Var) {
        this.f5198a = y0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v9 */
    private final void c(androidx.compose.ui.f.c cVar, c cVar2, Set set) {
        int iA = s0.a(32);
        if (!cVar.getNode().k1()) {
            g0.a.b("visitSubtreeIf called on an unattached node");
        }
        androidx.compose.runtime.collection.b bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
        androidx.compose.ui.f.c cVarB1 = cVar.getNode().b1();
        if (cVarB1 == null) {
            androidx.compose.ui.node.g.c(bVar, cVar.getNode());
        } else {
            bVar.b(cVarB1);
        }
        while (bVar.q()) {
            androidx.compose.ui.f.c cVar3 = (androidx.compose.ui.f.c) bVar.v(bVar.n() - 1);
            if ((cVar3.a1() & iA) != 0) {
                androidx.compose.ui.f.c cVarB2 = cVar3;
                while (true) {
                    if (cVarB2 != null) {
                        if ((cVarB2.f1() & iA) != 0) {
                            ?? G = cVarB2;
                            ?? bVar2 = 0;
                            while (G != 0) {
                                if (G instanceof h) {
                                    h hVar = (h) G;
                                    if (hVar instanceof BackwardsCompatNode) {
                                        BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) hVar;
                                        if ((backwardsCompatNode.D1() instanceof d) && backwardsCompatNode.E1().contains(cVar2)) {
                                            set.add(hVar);
                                        }
                                    }
                                    if (hVar.V().a(cVar2)) {
                                        break;
                                    }
                                } else if ((G.f1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
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
                        cVarB2 = cVarB2.b1();
                    }
                }
            }
            androidx.compose.ui.node.g.c(bVar, cVar3);
        }
    }

    public final void a(BackwardsCompatNode backwardsCompatNode, c cVar) {
        this.f5199b.b(backwardsCompatNode);
        this.f5200c.b(cVar);
        b();
    }

    public final void b() {
        if (this.f5203f) {
            return;
        }
        this.f5203f = true;
        this.f5198a.registerOnEndApplyChangesListener(new Function0<Unit>() { // from class: androidx.compose.ui.modifier.ModifierLocalManager$invalidate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m120invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m120invoke() {
                this.this$0.e();
            }
        });
    }

    public final void d(BackwardsCompatNode backwardsCompatNode, c cVar) {
        this.f5201d.b(androidx.compose.ui.node.g.m(backwardsCompatNode));
        this.f5202e.b(cVar);
        b();
    }

    public final void e() {
        int i11 = 0;
        this.f5203f = false;
        HashSet hashSet = new HashSet();
        androidx.compose.runtime.collection.b bVar = this.f5201d;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i12 = 0;
            do {
                LayoutNode layoutNode = (LayoutNode) objArrM[i12];
                c cVar = (c) this.f5202e.m()[i12];
                if (layoutNode.e0().k().k1()) {
                    c(layoutNode.e0().k(), cVar, hashSet);
                }
                i12++;
            } while (i12 < iN);
        }
        this.f5201d.h();
        this.f5202e.h();
        androidx.compose.runtime.collection.b bVar2 = this.f5199b;
        int iN2 = bVar2.n();
        if (iN2 > 0) {
            Object[] objArrM2 = bVar2.m();
            do {
                BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) objArrM2[i11];
                c cVar2 = (c) this.f5200c.m()[i11];
                if (backwardsCompatNode.k1()) {
                    c(backwardsCompatNode, cVar2, hashSet);
                }
                i11++;
            } while (i11 < iN2);
        }
        this.f5199b.h();
        this.f5200c.h();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((BackwardsCompatNode) it.next()).J1();
        }
    }

    public final void f(BackwardsCompatNode backwardsCompatNode, c cVar) {
        this.f5199b.b(backwardsCompatNode);
        this.f5200c.b(cVar);
        b();
    }
}
