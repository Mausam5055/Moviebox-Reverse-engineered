package com.transsion.member.premium;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.memberapi.PremiumV2CheckAccessDto;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.premium.PremiumProvider$checkAccess$8$1", f = "PremiumProvider.kt", l = {}, m = "invokeSuspend")
final class PremiumProvider$checkAccess$8$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<PremiumV2CheckAccessDto, Unit> $callback;
    final /* synthetic */ BaseDto<PremiumV2CheckAccessDto> $result;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PremiumProvider$checkAccess$8$1(Function1<? super PremiumV2CheckAccessDto, Unit> function1, BaseDto<PremiumV2CheckAccessDto> baseDto, Continuation<? super PremiumProvider$checkAccess$8$1> continuation) {
        super(2, continuation);
        this.$callback = function1;
        this.$result = baseDto;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PremiumProvider$checkAccess$8$1(this.$callback, this.$result, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PremiumProvider$checkAccess$8$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Function1<PremiumV2CheckAccessDto, Unit> function1 = this.$callback;
        BaseDto<PremiumV2CheckAccessDto> baseDto = this.$result;
        function1.invoke(baseDto != null ? baseDto.getData() : null);
        return Unit.f67061a;
    }
}
