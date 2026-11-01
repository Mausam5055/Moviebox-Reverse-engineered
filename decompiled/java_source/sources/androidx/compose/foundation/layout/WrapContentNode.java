package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class WrapContentNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Direction f2828n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f2829o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Function2 f2830p;

    public WrapContentNode(Direction direction, boolean z10, Function2 function2) {
        this.f2828n = direction;
        this.f2829o = z10;
        this.f2830p = function2;
    }

    public final Function2 D1() {
        return this.f2830p;
    }

    public final void E1(Function2 function2) {
        this.f2830p = function2;
    }

    public final void F1(Direction direction) {
        this.f2828n = direction;
    }

    public final void G1(boolean z10) {
        this.f2829o = z10;
    }

    @Override // androidx.compose.ui.node.x
    public androidx.compose.ui.layout.v z(final androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        Direction direction = this.f2828n;
        Direction direction2 = Direction.Vertical;
        int iN = direction != direction2 ? 0 : o0.b.n(j11);
        Direction direction3 = this.f2828n;
        Direction direction4 = Direction.Horizontal;
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.a(iN, (this.f2828n == direction2 || !this.f2829o) ? o0.b.l(j11) : Integer.MAX_VALUE, direction3 == direction4 ? o0.b.m(j11) : 0, (this.f2828n == direction4 || !this.f2829o) ? o0.b.k(j11) : Integer.MAX_VALUE));
        final int iM = RangesKt.m(g0VarP.u0(), o0.b.n(j11), o0.b.l(j11));
        final int iM2 = RangesKt.m(g0VarP.l0(), o0.b.m(j11), o0.b.k(j11));
        return androidx.compose.ui.layout.w.b(xVar, iM, iM2, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.WrapContentNode$measure$1
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
                androidx.compose.ui.layout.g0.a.j(aVar, g0VarP, ((o0.p) this.this$0.D1().invoke(o0.t.b(o0.u.a(iM - g0VarP.u0(), iM2 - g0VarP.l0())), xVar.getLayoutDirection())).n(), 0.0f, 2, null);
            }
        }, 4, null);
    }
}
