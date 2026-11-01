package androidx.compose.foundation.lazy;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/k;", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/k;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.lazy.LazyListState$scrollToItem$2", f = "LazyListState.kt", l = {}, m = "invokeSuspend")
final class LazyListState$scrollToItem$2 extends SuspendLambda implements Function2<androidx.compose.foundation.gestures.k, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    int label;
    final /* synthetic */ LazyListState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListState$scrollToItem$2(LazyListState lazyListState, int i11, int i12, Continuation<? super LazyListState$scrollToItem$2> continuation) {
        super(2, continuation);
        this.this$0 = lazyListState;
        this.$index = i11;
        this.$scrollOffset = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LazyListState$scrollToItem$2(this.this$0, this.$index, this.$scrollOffset, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(androidx.compose.foundation.gestures.k kVar, Continuation<? super Unit> continuation) {
        return ((LazyListState$scrollToItem$2) create(kVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.K(this.$index, this.$scrollOffset, true);
        return Unit.f67061a;
    }
}
