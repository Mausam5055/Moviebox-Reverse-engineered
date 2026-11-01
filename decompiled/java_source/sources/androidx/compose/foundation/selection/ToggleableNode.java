package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.b0;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.f;
import androidx.compose.ui.semantics.n;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import p.i;

/* JADX INFO: loaded from: classes.dex */
final class ToggleableNode extends ClickableNode {
    private boolean J;
    private Function1 K;
    private final Function0 L;

    private ToggleableNode(final boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, final Function1 function1) {
        super(iVar, b0Var, z11, null, fVar, new Function0<Unit>() { // from class: androidx.compose.foundation.selection.ToggleableNode.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m48invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m48invoke() {
                function1.invoke(Boolean.valueOf(!z10));
            }
        }, null);
        this.J = z10;
        this.K = function1;
        this.L = new Function0<Unit>() { // from class: androidx.compose.foundation.selection.ToggleableNode$_onClick$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m49invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m49invoke() {
                this.this$0.K.invoke(Boolean.valueOf(!this.this$0.J));
            }
        };
    }

    public /* synthetic */ ToggleableNode(boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, iVar, b0Var, z11, fVar, function1);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public void P1(n nVar) {
        SemanticsPropertiesKt.I(nVar, j0.a.a(this.J));
    }

    public final void g2(boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, Function1 function1) {
        if (this.J != z10) {
            this.J = z10;
            j1.b(this);
        }
        this.K = function1;
        super.d2(iVar, b0Var, z11, null, fVar, this.L);
    }
}
