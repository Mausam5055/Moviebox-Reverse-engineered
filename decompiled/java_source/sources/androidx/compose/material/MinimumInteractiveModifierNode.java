package androidx.compose.material;

import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.node.x;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
public final class MinimumInteractiveModifierNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, x {
    @Override // androidx.compose.ui.node.x
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j11) {
        boolean z10 = k1() && ((Boolean) androidx.compose.ui.node.e.a(this, InteractiveComponentSizeKt.b())).booleanValue();
        long j12 = InteractiveComponentSizeKt.f3361c;
        final g0 g0VarP = sVar.P(j11);
        final int iMax = z10 ? Math.max(g0VarP.u0(), xVar.c0(o0.l.d(j12))) : g0VarP.u0();
        final int iMax2 = z10 ? Math.max(g0VarP.l0(), xVar.c0(o0.l.c(j12))) : g0VarP.l0();
        return w.b(xVar, iMax, iMax2, null, new Function1<g0.a, Unit>() { // from class: androidx.compose.material.MinimumInteractiveModifierNode$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(g0.a aVar) {
                g0.a.h(aVar, g0VarP, MathKt.d((iMax - g0VarP.u0()) / 2.0f), MathKt.d((iMax2 - g0VarP.l0()) / 2.0f), 0.0f, 4, null);
            }
        }, 4, null);
    }
}
