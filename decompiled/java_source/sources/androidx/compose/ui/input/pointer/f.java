package androidx.compose.ui.input.pointer;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.layout.l f4985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f4986b = new m();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.collection.h0 f4987c = new androidx.collection.h0(10);

    public f(androidx.compose.ui.layout.l lVar) {
        this.f4985a = lVar;
    }

    private final void f(long j11, androidx.collection.l0 l0Var) {
        this.f4986b.i(j11, l0Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0080  */
    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    public final void a(long j11, List list, boolean z10) {
        androidx.collection.h0 h0Var;
        Object objB;
        Object obj;
        m mVar = this.f4986b;
        this.f4987c.g();
        int size = list.size();
        boolean z11 = true;
        for (int i11 = 0; i11 < size; i11++) {
            androidx.compose.ui.f.c cVar = (androidx.compose.ui.f.c) list.get(i11);
            if (z11) {
                androidx.compose.runtime.collection.b bVarG = mVar.g();
                int iN = bVarG.n();
                if (iN <= 0) {
                    obj = null;
                    break;
                }
                Object[] objArrM = bVarG.m();
                int i12 = 0;
                while (true) {
                    obj = objArrM[i12];
                    if (Intrinsics.c(((l) obj).k(), cVar)) {
                        break;
                    }
                    i12++;
                    if (i12 >= iN) {
                        obj = null;
                        break;
                    }
                }
                l lVar = (l) obj;
                if (lVar != null) {
                    lVar.n();
                    lVar.l().b(j11);
                    androidx.collection.h0 h0Var2 = this.f4987c;
                    Object objB2 = h0Var2.b(j11);
                    if (objB2 == null) {
                        objB2 = new androidx.collection.l0(0, 1, null);
                        h0Var2.o(j11, objB2);
                    }
                    ((androidx.collection.l0) objB2).e(lVar);
                    mVar = lVar;
                } else {
                    z11 = false;
                    l lVar2 = new l(cVar);
                    lVar2.l().b(j11);
                    h0Var = this.f4987c;
                    objB = h0Var.b(j11);
                    if (objB == null) {
                        objB = new androidx.collection.l0(0, 1, null);
                        h0Var.o(j11, objB);
                    }
                    ((androidx.collection.l0) objB).e(lVar2);
                    mVar.g().b(lVar2);
                    mVar = lVar2;
                }
            } else {
                l lVar3 = new l(cVar);
                lVar3.l().b(j11);
                h0Var = this.f4987c;
                objB = h0Var.b(j11);
                if (objB == null) {
                    objB = new androidx.collection.l0(0, 1, null);
                    h0Var.o(j11, objB);
                }
                ((androidx.collection.l0) objB).e(lVar3);
                mVar.g().b(lVar3);
                mVar = lVar3;
            }
        }
        if (!z10) {
            return;
        }
        androidx.collection.h0 h0Var3 = this.f4987c;
        long[] jArr = h0Var3.f2340b;
        Object[] objArr = h0Var3.f2341c;
        long[] jArr2 = h0Var3.f2339a;
        int length = jArr2.length - 2;
        if (length < 0) {
            return;
        }
        int i13 = 0;
        while (true) {
            long j12 = jArr2[i13];
            if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i14 = 8 - ((~(i13 - length)) >>> 31);
                for (int i15 = 0; i15 < i14; i15++) {
                    if ((255 & j12) < 128) {
                        int i16 = (i13 << 3) + i15;
                        f(jArr[i16], (androidx.collection.l0) objArr[i16]);
                    }
                    j12 >>= 8;
                }
                if (i14 != 8) {
                    return;
                }
            }
            if (i13 == length) {
                return;
            } else {
                i13++;
            }
        }
    }

    public final void b() {
        this.f4986b.c();
    }

    public final boolean c(g gVar, boolean z10) {
        if (this.f4986b.a(gVar.b(), this.f4985a, gVar, z10)) {
            return this.f4986b.e(gVar) || this.f4986b.f(gVar.b(), this.f4985a, gVar, z10);
        }
        return false;
    }

    public final void d() {
        this.f4986b.d();
        b();
    }

    public final void e() {
        this.f4986b.h();
    }
}
