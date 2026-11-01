package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class RowMeasurePolicy implements androidx.compose.ui.layout.t, x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b.d f2770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.compose.ui.b.c f2771b;

    public RowMeasurePolicy(b.d dVar, androidx.compose.ui.b.c cVar) {
        this.f2770a = dVar;
        this.f2771b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int h(androidx.compose.ui.layout.g0 g0Var, z zVar, int i11, int i12) {
        m mVarA = zVar != null ? zVar.a() : null;
        return mVarA != null ? mVarA.a(i11 - g0Var.l0(), LayoutDirection.Ltr, g0Var, i12) : this.f2771b.a(0, i11 - g0Var.l0());
    }

    @Override // androidx.compose.foundation.layout.x
    public long a(int i11, int i12, int i13, int i14, boolean z10) {
        return a0.a(z10, i11, i12, i13, i14);
    }

    @Override // androidx.compose.foundation.layout.x
    public void b(int i11, int[] iArr, int[] iArr2, androidx.compose.ui.layout.x xVar) {
        this.f2770a.b(xVar, i11, iArr, xVar.getLayoutDirection(), iArr2);
    }

    @Override // androidx.compose.ui.layout.t
    public androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
        return y.a(this, o0.b.n(j11), o0.b.m(j11), o0.b.l(j11), o0.b.k(j11), xVar.c0(this.f2770a.a()), xVar, list, new androidx.compose.ui.layout.g0[list.size()], 0, list.size(), (3072 & 1024) != 0 ? null : null, (3072 & 2048) != 0 ? 0 : 0);
    }

    @Override // androidx.compose.foundation.layout.x
    public androidx.compose.ui.layout.v d(final androidx.compose.ui.layout.g0[] g0VarArr, androidx.compose.ui.layout.x xVar, final int i11, final int[] iArr, int i12, final int i13, int[] iArr2, int i14, int i15, int i16) {
        return androidx.compose.ui.layout.w.b(xVar, i12, i13, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.RowMeasurePolicy$placeHelper$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0[] g0VarArr2 = g0VarArr;
                RowMeasurePolicy rowMeasurePolicy = this;
                int i17 = i13;
                int i18 = i11;
                int[] iArr3 = iArr;
                int length = g0VarArr2.length;
                int i19 = 0;
                int i20 = 0;
                while (i19 < length) {
                    androidx.compose.ui.layout.g0 g0Var = g0VarArr2[i19];
                    Intrinsics.e(g0Var);
                    androidx.compose.ui.layout.g0.a.h(aVar, g0Var, iArr3[i20], rowMeasurePolicy.h(g0Var, v.d(g0Var), i17, i18), 0.0f, 4, null);
                    i19++;
                    i20++;
                }
            }
        }, 4, null);
    }

    @Override // androidx.compose.foundation.layout.x
    public int e(androidx.compose.ui.layout.g0 g0Var) {
        return g0Var.u0();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RowMeasurePolicy)) {
            return false;
        }
        RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) obj;
        return Intrinsics.c(this.f2770a, rowMeasurePolicy.f2770a) && Intrinsics.c(this.f2771b, rowMeasurePolicy.f2771b);
    }

    @Override // androidx.compose.foundation.layout.x
    public int f(androidx.compose.ui.layout.g0 g0Var) {
        return g0Var.l0();
    }

    public int hashCode() {
        return (this.f2770a.hashCode() * 31) + this.f2771b.hashCode();
    }

    public String toString() {
        return "RowMeasurePolicy(horizontalArrangement=" + this.f2770a + ", verticalAlignment=" + this.f2771b + ')';
    }
}
