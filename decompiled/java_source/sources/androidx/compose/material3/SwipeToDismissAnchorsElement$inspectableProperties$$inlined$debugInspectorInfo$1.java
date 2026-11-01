package androidx.compose.material3;

import androidx.compose.ui.platform.l2;
import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class SwipeToDismissAnchorsElement$inspectableProperties$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ SwipeToDismissAnchorsElement this$0;

    public SwipeToDismissAnchorsElement$inspectableProperties$$inlined$debugInspectorInfo$1(SwipeToDismissAnchorsElement swipeToDismissAnchorsElement) {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        l2 l2VarA = z0Var.a();
        SwipeToDismissAnchorsElement.l(null);
        l2VarA.c("state", null);
        z0Var.a().c("enableDismissFromStartToEnd", Boolean.valueOf(SwipeToDismissAnchorsElement.k(null)));
        z0Var.a().c("enableDismissFromEndToStart", Boolean.valueOf(SwipeToDismissAnchorsElement.j(null)));
    }
}
