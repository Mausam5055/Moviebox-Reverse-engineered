package com.transsnet.login.phone;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.login.phone.LoginPhoneViewModel$getCountry$1", f = "LoginPhoneViewModel.kt", l = {}, m = "invokeSuspend")
final class LoginPhoneViewModel$getCountry$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $spCode;
    int label;
    final /* synthetic */ LoginPhoneViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginPhoneViewModel$getCountry$1(LoginPhoneViewModel loginPhoneViewModel, String str, Continuation<? super LoginPhoneViewModel$getCountry$1> continuation) {
        super(2, continuation);
        this.this$0 = loginPhoneViewModel;
        this.$spCode = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LoginPhoneViewModel$getCountry$1(this.this$0, this.$spCode, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LoginPhoneViewModel$getCountry$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.f60418b.n(this.this$0.x(this.$spCode));
        return Unit.f67061a;
    }
}
