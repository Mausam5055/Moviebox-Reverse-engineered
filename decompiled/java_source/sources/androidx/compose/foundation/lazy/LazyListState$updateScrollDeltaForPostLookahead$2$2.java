package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.o0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.lazy.LazyListState$updateScrollDeltaForPostLookahead$2$2", f = "LazyListState.kt", l = {587}, m = "invokeSuspend")
final class LazyListState$updateScrollDeltaForPostLookahead$2$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ LazyListState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListState$updateScrollDeltaForPostLookahead$2$2(LazyListState lazyListState, Continuation<? super LazyListState$updateScrollDeltaForPostLookahead$2$2> continuation) {
        super(2, continuation);
        this.this$0 = lazyListState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LazyListState$updateScrollDeltaForPostLookahead$2$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LazyListState$updateScrollDeltaForPostLookahead$2$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            androidx.compose.animation.core.i iVar = this.this$0.f2931x;
            Float fC = Boxing.c(0.0f);
            o0 o0VarD = androidx.compose.animation.core.h.d(0.0f, 400.0f, Boxing.c(0.5f), 1, null);
            this.label = 1;
            if (SuspendAnimationKt.j(iVar, fC, o0VarD, true, null, this, 8, null) == objF) {
                return objF;
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
