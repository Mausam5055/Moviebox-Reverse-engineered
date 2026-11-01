package androidx.compose.foundation.layout;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final androidx.compose.ui.layout.t f2835a = new RowMeasurePolicy(b.f2836a.c(), androidx.compose.ui.b.f4087a.j());

    public static final long a(boolean z10, int i11, int i12, int i13, int i14) {
        return !z10 ? o0.c.a(i11, i13, i12, i14) : o0.b.f70596b.b(i11, i13, i12, i14);
    }

    public static final androidx.compose.ui.layout.t b(b.d dVar, androidx.compose.ui.b.c cVar, androidx.compose.runtime.i iVar, int i11) {
        androidx.compose.ui.layout.t tVar;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-837807694, i11, -1, "androidx.compose.foundation.layout.rowMeasurePolicy (Row.kt:122)");
        }
        if (Intrinsics.c(dVar, b.f2836a.c()) && Intrinsics.c(cVar, androidx.compose.ui.b.f4087a.j())) {
            iVar.P(-849081669);
            iVar.K();
            tVar = f2835a;
        } else {
            iVar.P(-849030798);
            boolean z10 = ((((i11 & 14) ^ 6) > 4 && iVar.O(dVar)) || (i11 & 6) == 4) | ((((i11 & 112) ^ 48) > 32 && iVar.O(cVar)) || (i11 & 48) == 32);
            Object objY = iVar.y();
            if (z10 || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new RowMeasurePolicy(dVar, cVar);
                iVar.p(objY);
            }
            tVar = (RowMeasurePolicy) objY;
            iVar.K();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return tVar;
    }
}
