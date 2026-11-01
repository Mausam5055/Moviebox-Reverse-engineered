package androidx.compose.ui.focus;

import androidx.collection.MutableScatterSet;
import androidx.collection.w0;
import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class FocusInvalidationManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f4193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f4194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MutableScatterSet f4195c = w0.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MutableScatterSet f4196d = w0.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MutableScatterSet f4197e = w0.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MutableScatterSet f4198f = w0.a();

    public FocusInvalidationManager(Function1 function1, Function0 function0) {
        this.f4193a = function1;
        this.f4194b = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        int i11;
        long[] jArr;
        Object[] objArr;
        long[] jArr2;
        Object[] objArr2;
        r rVarK1;
        int i12;
        int i13;
        long[] jArr3;
        Object[] objArr3;
        boolean z10;
        Object[] objArr4;
        long[] jArr4;
        long[] jArr5;
        int i14;
        long[] jArr6;
        MutableScatterSet mutableScatterSet = this.f4197e;
        Object[] objArr5 = mutableScatterSet.f2247b;
        long[] jArr7 = mutableScatterSet.f2246a;
        int length = jArr7.length - 2;
        char c11 = 7;
        long j11 = -9187201950435737472L;
        int i15 = 8;
        int i16 = 1;
        if (length >= 0) {
            int i17 = 0;
            while (true) {
                long j12 = jArr7[i17];
                if ((((~j12) << c11) & j12 & j11) != j11) {
                    int i18 = 8 - ((~(i17 - length)) >>> 31);
                    int i19 = 0;
                    while (i19 < i18) {
                        if ((j12 & 255) < 128) {
                            m mVar = (m) objArr5[(i17 << 3) + i19];
                            if (mVar.getNode().k1()) {
                                int iA = s0.a(1024);
                                androidx.compose.ui.f.c node = mVar.getNode();
                                androidx.compose.runtime.collection.b bVar = null;
                                while (node != null) {
                                    if (node instanceof FocusTargetNode) {
                                        this.f4195c.h((FocusTargetNode) node);
                                    } else {
                                        if ((node.f1() & iA) != 0 && (node instanceof androidx.compose.ui.node.i)) {
                                            androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) node).E1();
                                            int i20 = 0;
                                            while (cVarE1 != null) {
                                                if ((cVarE1.f1() & iA) != 0) {
                                                    i20++;
                                                    if (i20 == i16) {
                                                        jArr7 = jArr7;
                                                        node = cVarE1;
                                                    } else {
                                                        if (bVar == null) {
                                                            bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                        }
                                                        if (node != null) {
                                                            bVar.b(node);
                                                            node = null;
                                                        }
                                                        bVar.b(cVarE1);
                                                    }
                                                } else {
                                                    jArr7 = jArr7;
                                                }
                                                cVarE1 = cVarE1.b1();
                                                jArr7 = jArr7;
                                                i16 = 1;
                                            }
                                            jArr6 = jArr7;
                                            int i21 = i16;
                                            if (i20 == i21) {
                                                i16 = i21;
                                                jArr7 = jArr6;
                                            }
                                        }
                                        node = androidx.compose.ui.node.g.g(bVar);
                                        jArr7 = jArr6;
                                        i16 = 1;
                                    }
                                    jArr6 = jArr7;
                                    node = androidx.compose.ui.node.g.g(bVar);
                                    jArr7 = jArr6;
                                    i16 = 1;
                                }
                                jArr5 = jArr7;
                                if (!mVar.getNode().k1()) {
                                    throw new IllegalStateException("visitChildren called on an unattached node");
                                }
                                androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                androidx.compose.ui.f.c cVarB1 = mVar.getNode().b1();
                                if (cVarB1 == null) {
                                    androidx.compose.ui.node.g.c(bVar2, mVar.getNode());
                                } else {
                                    bVar2.b(cVarB1);
                                }
                                while (bVar2.q()) {
                                    androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar2.v(bVar2.n() - 1);
                                    if ((cVarG.a1() & iA) == 0) {
                                        androidx.compose.ui.node.g.c(bVar2, cVarG);
                                    } else {
                                        while (cVarG != null) {
                                            if ((cVarG.f1() & iA) != 0) {
                                                androidx.compose.runtime.collection.b bVar3 = null;
                                                while (cVarG != null) {
                                                    if (cVarG instanceof FocusTargetNode) {
                                                        this.f4195c.h((FocusTargetNode) cVarG);
                                                    } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                                        int i22 = 0;
                                                        for (androidx.compose.ui.f.c cVarE2 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE2 != null; cVarE2 = cVarE2.b1()) {
                                                            if ((cVarE2.f1() & iA) != 0) {
                                                                i22++;
                                                                if (i22 == 1) {
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
                                                        if (i22 == 1) {
                                                        }
                                                    }
                                                    cVarG = androidx.compose.ui.node.g.g(bVar3);
                                                }
                                                break;
                                            }
                                            cVarG = cVarG.b1();
                                        }
                                    }
                                }
                            } else {
                                jArr5 = jArr7;
                            }
                            i14 = 8;
                        } else {
                            jArr5 = jArr7;
                            i14 = i15;
                        }
                        j12 >>= i14;
                        i19++;
                        i15 = i14;
                        jArr7 = jArr5;
                        i16 = 1;
                    }
                    jArr4 = jArr7;
                    if (i18 != i15) {
                        break;
                    }
                } else {
                    jArr4 = jArr7;
                }
                if (i17 == length) {
                    break;
                }
                i17++;
                jArr7 = jArr4;
                c11 = 7;
                j11 = -9187201950435737472L;
                i16 = 1;
                i15 = 8;
            }
        }
        this.f4197e.m();
        MutableScatterSet mutableScatterSet2 = this.f4196d;
        Object[] objArr6 = mutableScatterSet2.f2247b;
        long[] jArr8 = mutableScatterSet2.f2246a;
        int length2 = jArr8.length - 2;
        if (length2 >= 0) {
            int i23 = 0;
            while (true) {
                long j13 = jArr8[i23];
                if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i24 = 8 - ((~(i23 - length2)) >>> 31);
                    int i25 = 0;
                    while (i25 < i24) {
                        if ((j13 & 255) < 128) {
                            c cVar = (c) objArr6[(i23 << 3) + i25];
                            if (cVar.getNode().k1()) {
                                int iA2 = s0.a(1024);
                                androidx.compose.ui.f.c node2 = cVar.getNode();
                                boolean z11 = false;
                                boolean z12 = true;
                                FocusTargetNode focusTargetNode = null;
                                androidx.compose.runtime.collection.b bVar4 = null;
                                while (node2 != null) {
                                    if (node2 instanceof FocusTargetNode) {
                                        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node2;
                                        if (focusTargetNode != null) {
                                            z11 = true;
                                        }
                                        if (this.f4195c.a(focusTargetNode2)) {
                                            this.f4198f.h(focusTargetNode2);
                                            z12 = false;
                                        }
                                        jArr3 = jArr8;
                                        objArr3 = objArr6;
                                        focusTargetNode = focusTargetNode2;
                                    } else {
                                        if ((node2.f1() & iA2) == 0 || !(node2 instanceof androidx.compose.ui.node.i)) {
                                            jArr3 = jArr8;
                                            objArr3 = objArr6;
                                            z10 = z11;
                                        } else {
                                            androidx.compose.ui.f.c cVarE3 = ((androidx.compose.ui.node.i) node2).E1();
                                            jArr3 = jArr8;
                                            int i26 = 0;
                                            while (cVarE3 != null) {
                                                if ((cVarE3.f1() & iA2) != 0) {
                                                    i26++;
                                                    objArr4 = objArr6;
                                                    if (i26 == 1) {
                                                        node2 = cVarE3;
                                                    } else {
                                                        androidx.compose.runtime.collection.b bVar5 = bVar4 == null ? new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0) : bVar4;
                                                        if (node2 != null) {
                                                            bVar5.b(node2);
                                                            node2 = null;
                                                        }
                                                        bVar5.b(cVarE3);
                                                        bVar4 = bVar5;
                                                        i26 = i26;
                                                    }
                                                    cVarE3 = cVarE3.b1();
                                                    objArr6 = objArr4;
                                                    z11 = z11;
                                                } else {
                                                    objArr4 = objArr6;
                                                }
                                                z11 = z11;
                                                cVarE3 = cVarE3.b1();
                                                objArr6 = objArr4;
                                                z11 = z11;
                                            }
                                            objArr3 = objArr6;
                                            z10 = z11;
                                            if (i26 == 1) {
                                                jArr8 = jArr3;
                                                objArr6 = objArr3;
                                                z11 = z10;
                                            }
                                        }
                                        z11 = z10;
                                    }
                                    node2 = androidx.compose.ui.node.g.g(bVar4);
                                    jArr8 = jArr3;
                                    objArr6 = objArr3;
                                }
                                jArr2 = jArr8;
                                objArr2 = objArr6;
                                boolean z13 = z11;
                                if (!cVar.getNode().k1()) {
                                    throw new IllegalStateException("visitChildren called on an unattached node");
                                }
                                androidx.compose.runtime.collection.b bVar6 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                androidx.compose.ui.f.c cVarB2 = cVar.getNode().b1();
                                if (cVarB2 == null) {
                                    androidx.compose.ui.node.g.c(bVar6, cVar.getNode());
                                } else {
                                    bVar6.b(cVarB2);
                                }
                                boolean z14 = z13;
                                while (bVar6.q()) {
                                    androidx.compose.ui.f.c cVarG2 = (androidx.compose.ui.f.c) bVar6.v(bVar6.n() - 1);
                                    if ((cVarG2.a1() & iA2) == 0) {
                                        androidx.compose.ui.node.g.c(bVar6, cVarG2);
                                    } else {
                                        while (true) {
                                            if (cVarG2 != null) {
                                                if ((cVarG2.f1() & iA2) != 0) {
                                                    androidx.compose.runtime.collection.b bVar7 = null;
                                                    while (cVarG2 != null) {
                                                        if (cVarG2 instanceof FocusTargetNode) {
                                                            FocusTargetNode focusTargetNode3 = (FocusTargetNode) cVarG2;
                                                            if (focusTargetNode != null) {
                                                                z14 = true;
                                                            }
                                                            if (this.f4195c.a(focusTargetNode3)) {
                                                                this.f4198f.h(focusTargetNode3);
                                                                z12 = false;
                                                            }
                                                            focusTargetNode = focusTargetNode3;
                                                        } else {
                                                            if ((cVarG2.f1() & iA2) != 0 && (cVarG2 instanceof androidx.compose.ui.node.i)) {
                                                                androidx.compose.ui.f.c cVarE4 = ((androidx.compose.ui.node.i) cVarG2).E1();
                                                                bVar6 = bVar6;
                                                                int i27 = 0;
                                                                while (cVarE4 != null) {
                                                                    if ((cVarE4.f1() & iA2) != 0) {
                                                                        i27++;
                                                                        i13 = iA2;
                                                                        if (i27 == 1) {
                                                                            cVarG2 = cVarE4;
                                                                        } else {
                                                                            if (bVar7 == null) {
                                                                                bVar7 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                                            }
                                                                            if (cVarG2 != null) {
                                                                                bVar7.b(cVarG2);
                                                                                cVarG2 = null;
                                                                            }
                                                                            bVar7.b(cVarE4);
                                                                            i27 = i27;
                                                                        }
                                                                        cVarE4 = cVarE4.b1();
                                                                        iA2 = i13;
                                                                    } else {
                                                                        i13 = iA2;
                                                                    }
                                                                    cVarE4 = cVarE4.b1();
                                                                    iA2 = i13;
                                                                }
                                                                i12 = iA2;
                                                                if (i27 != 1) {
                                                                    cVarG2 = androidx.compose.ui.node.g.g(bVar7);
                                                                }
                                                            }
                                                            bVar6 = bVar6;
                                                            iA2 = i12;
                                                        }
                                                        i12 = iA2;
                                                        cVarG2 = androidx.compose.ui.node.g.g(bVar7);
                                                        bVar6 = bVar6;
                                                        iA2 = i12;
                                                    }
                                                } else {
                                                    cVarG2 = cVarG2.b1();
                                                    iA2 = iA2;
                                                }
                                            }
                                        }
                                    }
                                    bVar6 = bVar6;
                                    iA2 = iA2;
                                }
                                if (z12) {
                                    if (z14) {
                                        rVarK1 = d.a(cVar);
                                    } else if (focusTargetNode == null || (rVarK1 = focusTargetNode.K1()) == null) {
                                        rVarK1 = FocusStateImpl.Inactive;
                                    }
                                    cVar.S0(rVarK1);
                                }
                            } else {
                                cVar.S0(FocusStateImpl.Inactive);
                                jArr2 = jArr8;
                                objArr2 = objArr6;
                            }
                        } else {
                            jArr2 = jArr8;
                            objArr2 = objArr6;
                        }
                        j13 >>= 8;
                        i25++;
                        jArr8 = jArr2;
                        objArr6 = objArr2;
                    }
                    jArr = jArr8;
                    objArr = objArr6;
                    i11 = 0;
                    if (i24 != 8) {
                        break;
                    }
                } else {
                    jArr = jArr8;
                    objArr = objArr6;
                    i11 = 0;
                }
                if (i23 == length2) {
                    break;
                }
                i23++;
                jArr8 = jArr;
                objArr6 = objArr;
            }
        } else {
            i11 = 0;
        }
        this.f4196d.m();
        MutableScatterSet mutableScatterSet3 = this.f4195c;
        Object[] objArr7 = mutableScatterSet3.f2247b;
        long[] jArr9 = mutableScatterSet3.f2246a;
        int length3 = jArr9.length - 2;
        if (length3 >= 0) {
            int i28 = i11;
            while (true) {
                long j14 = jArr9[i28];
                if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i29 = 8 - ((~(i28 - length3)) >>> 31);
                    for (int i30 = i11; i30 < i29; i30++) {
                        if ((j14 & 255) < 128) {
                            FocusTargetNode focusTargetNode4 = (FocusTargetNode) objArr7[(i28 << 3) + i30];
                            if (focusTargetNode4.k1()) {
                                FocusStateImpl focusStateImplK1 = focusTargetNode4.K1();
                                focusTargetNode4.P1();
                                if (focusStateImplK1 != focusTargetNode4.K1() || this.f4198f.a(focusTargetNode4)) {
                                    d.c(focusTargetNode4);
                                }
                            }
                        }
                        j14 >>= 8;
                    }
                    if (i29 != 8) {
                        break;
                    }
                }
                if (i28 == length3) {
                    break;
                } else {
                    i28++;
                }
            }
        }
        this.f4195c.m();
        this.f4198f.m();
        this.f4194b.invoke();
        if (!this.f4197e.d()) {
            g0.a.b("Unprocessed FocusProperties nodes");
        }
        if (!this.f4196d.d()) {
            g0.a.b("Unprocessed FocusEvent nodes");
        }
        if (this.f4195c.d()) {
            return;
        }
        g0.a.b("Unprocessed FocusTarget nodes");
    }

    private final void d(MutableScatterSet mutableScatterSet, Object obj) {
        if (mutableScatterSet.h(obj) && this.f4195c.c() + this.f4196d.c() + this.f4197e.c() == 1) {
            this.f4193a.invoke(new FocusInvalidationManager$scheduleInvalidation$1(this));
        }
    }

    public final boolean b() {
        return this.f4195c.e() || this.f4197e.e() || this.f4196d.e();
    }

    public final void e(c cVar) {
        d(this.f4196d, cVar);
    }

    public final void f(m mVar) {
        d(this.f4197e, mVar);
    }

    public final void g(FocusTargetNode focusTargetNode) {
        d(this.f4195c, focusTargetNode);
    }
}
