package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    /* JADX WARN: Code duplicated, block: B:36:0x0075 A[LOOP:0: B:5:0x0016->B:36:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x007a A[EDGE_INSN: B:41:0x007a->B:37:0x007a BREAK  A[LOOP:0: B:5:0x0016->B:36:0x0075], SYNTHETIC] */
    public static final SemanticsNode a(LayoutNode layoutNode, boolean z10) {
        q0 q0VarE0 = layoutNode.e0();
        int iA = s0.a(8);
        Object obj = null;
        if ((q0VarE0.i() & iA) != 0) {
            loop0: for (androidx.compose.ui.f.c cVarK = q0VarE0.k(); cVarK != null; cVarK = cVarK.b1()) {
                if ((cVarK.f1() & iA) == 0) {
                    if ((cVarK.a1() & iA) != 0) {
                        break;
                        break;
                    }
                } else {
                    androidx.compose.ui.f.c cVarG = cVarK;
                    androidx.compose.runtime.collection.b bVar = null;
                    while (cVarG != null) {
                        if (cVarG instanceof i1) {
                            obj = cVarG;
                            break loop0;
                        }
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
                    if ((cVarK.a1() & iA) != 0) {
                        break;
                    }
                }
            }
        }
        Intrinsics.e(obj);
        androidx.compose.ui.f.c node = ((i1) obj).getNode();
        i iVarF = layoutNode.F();
        Intrinsics.e(iVarF);
        return new SemanticsNode(node, z10, layoutNode, iVarF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(SemanticsNode semanticsNode) {
        return semanticsNode.o() + 2000000000;
    }

    public static final LayoutNode f(LayoutNode layoutNode, Function1 function1) {
        for (LayoutNode layoutNodeH0 = layoutNode.h0(); layoutNodeH0 != null; layoutNodeH0 = layoutNodeH0.h0()) {
            if (((Boolean) function1.invoke(layoutNodeH0)).booleanValue()) {
                return layoutNodeH0;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007e A[LOOP:0: B:5:0x0016->B:38:0x007e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x0083 A[EDGE_INSN: B:43:0x0083->B:39:0x0083 BREAK  A[LOOP:0: B:5:0x0016->B:38:0x007e], SYNTHETIC] */
    public static final i1 g(LayoutNode layoutNode) {
        q0 q0VarE0 = layoutNode.e0();
        int iA = s0.a(8);
        Object obj = null;
        if ((q0VarE0.i() & iA) != 0) {
            loop0: for (androidx.compose.ui.f.c cVarK = q0VarE0.k(); cVarK != null; cVarK = cVarK.b1()) {
                if ((cVarK.f1() & iA) == 0) {
                    if ((cVarK.a1() & iA) != 0) {
                        break;
                        break;
                    }
                } else {
                    androidx.compose.ui.f.c cVarG = cVarK;
                    androidx.compose.runtime.collection.b bVar = null;
                    while (cVarG != null) {
                        if (cVarG instanceof i1) {
                            if (((i1) cVarG).W0()) {
                                obj = cVarG;
                                break loop0;
                            }
                        } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
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
                    if ((cVarK.a1() & iA) != 0) {
                        break;
                    }
                }
            }
        }
        return (i1) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f h(SemanticsNode semanticsNode) {
        return (f) SemanticsConfigurationKt.a(semanticsNode.w(), SemanticsProperties.f5919a.x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int i(SemanticsNode semanticsNode) {
        return semanticsNode.o() + Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
    }
}
