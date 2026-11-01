package androidx.compose.ui.modifier;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class g {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v9 */
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
    /* JADX WARN: Type inference failed for: r5v6 */
    public static Object a(h hVar, c cVar) {
        q0 q0VarE0;
        if (!hVar.getNode().k1()) {
            g0.a.a("ModifierLocal accessed from an unattached node");
        }
        int iA = s0.a(32);
        if (!hVar.getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = hVar.getNode().h1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(hVar);
        while (layoutNodeM != null) {
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        ?? G = cVarH1;
                        ?? bVar = 0;
                        while (G != 0) {
                            if (G instanceof h) {
                                h hVar2 = (h) G;
                                if (hVar2.V().a(cVar)) {
                                    return hVar2.V().b(cVar);
                                }
                            } else if ((G.f1() & iA) != 0 && (G instanceof androidx.compose.ui.node.i)) {
                                androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) G).E1();
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
                            G = androidx.compose.ui.node.g.g(bVar);
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

    public static f b(h hVar) {
        return b.f5205a;
    }
}
