package com.transsion.baseui.util;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "", "", "cause", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.baseui.util.TimeUtilKt$countdownByFlow$3", f = "TimeUtil.kt", l = {}, m = "invokeSuspend")
final class TimeUtilKt$countdownByFlow$3 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onFinish;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TimeUtilKt$countdownByFlow$3(Function0<Unit> function0, Continuation<? super TimeUtilKt$countdownByFlow$3> continuation) {
        super(3, continuation);
        this.$onFinish = function0;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
        TimeUtilKt$countdownByFlow$3 timeUtilKt$countdownByFlow$3 = new TimeUtilKt$countdownByFlow$3(this.$onFinish, continuation);
        timeUtilKt$countdownByFlow$3.L$0 = th2;
        return timeUtilKt$countdownByFlow$3.invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Function0<Unit> function0;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        if (((Throwable) this.L$0) == null && (function0 = this.$onFinish) != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }
}
