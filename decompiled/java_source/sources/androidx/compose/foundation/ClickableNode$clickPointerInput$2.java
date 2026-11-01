package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroidx/compose/foundation/gestures/i;", "Ly/g;", "offset", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/i;Ly/g;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.ClickableNode$clickPointerInput$2", f = "Clickable.kt", l = {636}, m = "invokeSuspend")
final class ClickableNode$clickPointerInput$2 extends SuspendLambda implements Function3<androidx.compose.foundation.gestures.i, y.g, Continuation<? super Unit>, Object> {
    /* synthetic */ long J$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableNode$clickPointerInput$2(ClickableNode clickableNode, Continuation<? super ClickableNode$clickPointerInput$2> continuation) {
        super(3, continuation);
        this.this$0 = clickableNode;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return m21invoked4ec7I((androidx.compose.foundation.gestures.i) obj, ((y.g) obj2).v(), (Continuation) obj3);
    }

    /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
    public final Object m21invoked4ec7I(androidx.compose.foundation.gestures.i iVar, long j11, Continuation<? super Unit> continuation) {
        ClickableNode$clickPointerInput$2 clickableNode$clickPointerInput$2 = new ClickableNode$clickPointerInput$2(this.this$0, continuation);
        clickableNode$clickPointerInput$2.L$0 = iVar;
        clickableNode$clickPointerInput$2.J$0 = j11;
        return clickableNode$clickPointerInput$2.invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            androidx.compose.foundation.gestures.i iVar = (androidx.compose.foundation.gestures.i) this.L$0;
            long j11 = this.J$0;
            if (this.this$0.V1()) {
                ClickableNode clickableNode = this.this$0;
                this.label = 1;
                if (clickableNode.X1(iVar, j11, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
