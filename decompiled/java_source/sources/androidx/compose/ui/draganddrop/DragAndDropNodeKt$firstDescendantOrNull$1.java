package androidx.compose.ui.draganddrop;

import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.m1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroidx/compose/ui/node/m1;", "T", "child", "Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;", "invoke", "(Landroidx/compose/ui/node/m1;)Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class DragAndDropNodeKt$firstDescendantOrNull$1 extends Lambda implements Function1<m1, TraversableNode$Companion$TraverseDescendantsAction> {
    final /* synthetic */ Ref.ObjectRef<m1> $match;
    final /* synthetic */ Function1<m1, Boolean> $predicate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragAndDropNodeKt$firstDescendantOrNull$1(Function1<m1, Boolean> function1, Ref.ObjectRef<m1> objectRef) {
        super(1);
        this.$predicate = function1;
        this.$match = objectRef;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final TraversableNode$Companion$TraverseDescendantsAction invoke(m1 m1Var) {
        if (!((Boolean) this.$predicate.invoke(m1Var)).booleanValue()) {
            return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
        }
        this.$match.element = m1Var;
        return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
    }
}
