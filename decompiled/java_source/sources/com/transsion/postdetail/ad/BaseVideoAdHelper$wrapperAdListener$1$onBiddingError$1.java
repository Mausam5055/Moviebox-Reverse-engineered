package com.transsion.postdetail.ad;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ad.BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1", f = "BaseVideoAdHelper.kt", l = {}, m = "invokeSuspend")
final class BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onFail;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1(Function0<Unit> function0, Continuation<? super BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1> continuation) {
        super(2, continuation);
        this.$onFail = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1(this.$onFail, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Function0<Unit> function0 = this.$onFail;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }
}
