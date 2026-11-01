package androidx.compose.ui.graphics;

import androidx.compose.ui.node.NodeCoordinator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class BlockGraphicsLayerModifier extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function1 f4258n;

    public BlockGraphicsLayerModifier(Function1 function1) {
        this.f4258n = function1;
    }

    public final Function1 D1() {
        return this.f4258n;
    }

    public final void E1() {
        NodeCoordinator nodeCoordinatorZ1 = androidx.compose.ui.node.g.h(this, androidx.compose.ui.node.s0.a(2)).Z1();
        if (nodeCoordinatorZ1 != null) {
            nodeCoordinatorZ1.L2(this.f4258n, true);
        }
    }

    public final void F1(Function1 function1) {
        this.f4258n = function1;
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return false;
    }

    public String toString() {
        return "BlockGraphicsLayerModifier(block=" + this.f4258n + ')';
    }

    @Override // androidx.compose.ui.node.x
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(j11);
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.ui.graphics.BlockGraphicsLayerModifier$measure$1
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
                androidx.compose.ui.layout.g0.a.t(aVar, g0VarP, 0, 0, 0.0f, this.D1(), 4, null);
            }
        }, 4, null);
    }
}
