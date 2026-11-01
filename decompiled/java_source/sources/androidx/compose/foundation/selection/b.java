package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.b0;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.f;
import androidx.compose.ui.semantics.n;
import androidx.compose.ui.state.ToggleableState;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import p.i;

/* JADX INFO: loaded from: classes.dex */
final class b extends ClickableNode {
    private ToggleableState J;

    private b(ToggleableState toggleableState, i iVar, b0 b0Var, boolean z10, f fVar, Function0 function0) {
        super(iVar, b0Var, z10, null, fVar, function0, null);
        this.J = toggleableState;
    }

    public /* synthetic */ b(ToggleableState toggleableState, i iVar, b0 b0Var, boolean z10, f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(toggleableState, iVar, b0Var, z10, fVar, function0);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public void P1(n nVar) {
        SemanticsPropertiesKt.I(nVar, this.J);
    }

    public final void e2(ToggleableState toggleableState, i iVar, b0 b0Var, boolean z10, f fVar, Function0 function0) {
        if (this.J != toggleableState) {
            this.J = toggleableState;
            j1.b(this);
        }
        super.d2(iVar, b0Var, z10, null, fVar, function0);
    }
}
