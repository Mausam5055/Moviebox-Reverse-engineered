package androidx.compose.foundation.layout;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
final class BoxMeasurePolicy implements androidx.compose.ui.layout.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.b f2742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f2743b;

    public BoxMeasurePolicy(androidx.compose.ui.b bVar, boolean z10) {
        this.f2742a = bVar;
        this.f2743b = z10;
    }

    @Override // androidx.compose.ui.layout.t
    public androidx.compose.ui.layout.v c(final androidx.compose.ui.layout.x xVar, final List list, long j11) {
        int iN;
        int iM;
        androidx.compose.ui.layout.g0 g0VarP;
        if (list.isEmpty()) {
            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$measure$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((androidx.compose.ui.layout.g0.a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                }
            }, 4, null);
        }
        long jD = this.f2743b ? j11 : o0.b.d(j11, 0, 0, 0, 0, 10, null);
        if (list.size() == 1) {
            final androidx.compose.ui.layout.s sVar = (androidx.compose.ui.layout.s) list.get(0);
            if (BoxKt.g(sVar)) {
                iN = o0.b.n(j11);
                iM = o0.b.m(j11);
                g0VarP = sVar.P(o0.b.f70596b.c(o0.b.n(j11), o0.b.m(j11)));
            } else {
                g0VarP = sVar.P(jD);
                iN = Math.max(o0.b.n(j11), g0VarP.u0());
                iM = Math.max(o0.b.m(j11), g0VarP.l0());
            }
            final int i11 = iN;
            final int i12 = iM;
            final androidx.compose.ui.layout.g0 g0Var = g0VarP;
            return androidx.compose.ui.layout.w.b(xVar, i11, i12, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$measure$2
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
                    BoxKt.i(aVar, g0Var, sVar, xVar.getLayoutDirection(), i11, i12, this.f2742a);
                }
            }, 4, null);
        }
        final androidx.compose.ui.layout.g0[] g0VarArr = new androidx.compose.ui.layout.g0[list.size()];
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = o0.b.n(j11);
        final Ref.IntRef intRef2 = new Ref.IntRef();
        intRef2.element = o0.b.m(j11);
        int size = list.size();
        boolean z10 = false;
        for (int i13 = 0; i13 < size; i13++) {
            androidx.compose.ui.layout.s sVar2 = (androidx.compose.ui.layout.s) list.get(i13);
            if (BoxKt.g(sVar2)) {
                z10 = true;
            } else {
                androidx.compose.ui.layout.g0 g0VarP2 = sVar2.P(jD);
                g0VarArr[i13] = g0VarP2;
                intRef.element = Math.max(intRef.element, g0VarP2.u0());
                intRef2.element = Math.max(intRef2.element, g0VarP2.l0());
            }
        }
        if (z10) {
            int i14 = intRef.element;
            int i15 = i14 != Integer.MAX_VALUE ? i14 : 0;
            int i16 = intRef2.element;
            long jA = o0.c.a(i15, i14, i16 != Integer.MAX_VALUE ? i16 : 0, i16);
            int size2 = list.size();
            for (int i17 = 0; i17 < size2; i17++) {
                androidx.compose.ui.layout.s sVar3 = (androidx.compose.ui.layout.s) list.get(i17);
                if (BoxKt.g(sVar3)) {
                    g0VarArr[i17] = sVar3.P(jA);
                }
            }
        }
        return androidx.compose.ui.layout.w.b(xVar, intRef.element, intRef2.element, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$measure$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                List<androidx.compose.ui.layout.s> list2 = list;
                androidx.compose.ui.layout.x xVar2 = xVar;
                Ref.IntRef intRef3 = intRef;
                Ref.IntRef intRef4 = intRef2;
                BoxMeasurePolicy boxMeasurePolicy = this;
                int length = g0VarArr2.length;
                int i18 = 0;
                int i19 = 0;
                while (i18 < length) {
                    androidx.compose.ui.layout.g0 g0Var2 = g0VarArr2[i18];
                    Intrinsics.f(g0Var2, "null cannot be cast to non-null type androidx.compose.ui.layout.Placeable");
                    BoxKt.i(aVar, g0Var2, list2.get(i19), xVar2.getLayoutDirection(), intRef3.element, intRef4.element, boxMeasurePolicy.f2742a);
                    i18++;
                    i19++;
                }
            }
        }, 4, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxMeasurePolicy)) {
            return false;
        }
        BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj;
        return Intrinsics.c(this.f2742a, boxMeasurePolicy.f2742a) && this.f2743b == boxMeasurePolicy.f2743b;
    }

    public int hashCode() {
        return (this.f2742a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f2743b);
    }

    public String toString() {
        return "BoxMeasurePolicy(alignment=" + this.f2742a + ", propagateMinConstraints=" + this.f2743b + ')';
    }
}
