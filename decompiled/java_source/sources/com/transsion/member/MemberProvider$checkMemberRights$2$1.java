package com.transsion.member;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.memberapi.MemberCheckResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.MemberProvider$checkMemberRights$2$1", f = "MemberProvider.kt", l = {}, m = "invokeSuspend")
final class MemberProvider$checkMemberRights$2$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<MemberCheckResult, Unit> $callback;
    final /* synthetic */ BaseDto<MemberCheckResult> $result;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MemberProvider$checkMemberRights$2$1(Function1<? super MemberCheckResult, Unit> function1, BaseDto<MemberCheckResult> baseDto, Continuation<? super MemberProvider$checkMemberRights$2$1> continuation) {
        super(2, continuation);
        this.$callback = function1;
        this.$result = baseDto;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberProvider$checkMemberRights$2$1(this.$callback, this.$result, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberProvider$checkMemberRights$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Function1<MemberCheckResult, Unit> function1 = this.$callback;
        BaseDto<MemberCheckResult> baseDto = this.$result;
        function1.invoke(baseDto != null ? baseDto.getData() : null);
        return Unit.f67061a;
    }
}
