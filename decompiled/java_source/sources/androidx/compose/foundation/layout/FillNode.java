package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class FillNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Direction f2751n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f2752o;

    public FillNode(Direction direction, float f11) {
        this.f2751n = direction;
        this.f2752o = f11;
    }

    public final void D1(Direction direction) {
        this.f2751n = direction;
    }

    public final void E1(float f11) {
        this.f2752o = f11;
    }

    @Override // androidx.compose.ui.node.x
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        int iN;
        int iL;
        int iK;
        int iM;
        if (!o0.b.h(j11) || this.f2751n == Direction.Vertical) {
            iN = o0.b.n(j11);
            iL = o0.b.l(j11);
        } else {
            iN = RangesKt.m(Math.round(o0.b.l(j11) * this.f2752o), o0.b.n(j11), o0.b.l(j11));
            iL = iN;
        }
        if (!o0.b.g(j11) || this.f2751n == Direction.Horizontal) {
            int iM2 = o0.b.m(j11);
            iK = o0.b.k(j11);
            iM = iM2;
        } else {
            iM = RangesKt.m(Math.round(o0.b.k(j11) * this.f2752o), o0.b.m(j11), o0.b.k(j11));
            iK = iM;
        }
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.a(iN, iL, iM, iK));
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.FillNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0.a.l(aVar, g0VarP, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
