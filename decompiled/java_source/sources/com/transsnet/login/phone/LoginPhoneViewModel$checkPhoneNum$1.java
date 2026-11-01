package com.transsnet.login.phone;

import com.transsnet.loginapi.bean.Country;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.login.phone.LoginPhoneViewModel$checkPhoneNum$1", f = "LoginPhoneViewModel.kt", l = {}, m = "invokeSuspend")
final class LoginPhoneViewModel$checkPhoneNum$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $phoneNum;
    int label;
    final /* synthetic */ LoginPhoneViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginPhoneViewModel$checkPhoneNum$1(LoginPhoneViewModel loginPhoneViewModel, String str, Continuation<? super LoginPhoneViewModel$checkPhoneNum$1> continuation) {
        super(2, continuation);
        this.this$0 = loginPhoneViewModel;
        this.$phoneNum = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LoginPhoneViewModel$checkPhoneNum$1(this.this$0, this.$phoneNum, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LoginPhoneViewModel$checkPhoneNum$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Country countryA = yy.a.f79094a.a(this.this$0.b(), this.$phoneNum);
        if (countryA != null) {
            String str = this.$phoneNum;
            LoginPhoneViewModel loginPhoneViewModel = this.this$0;
            String strSubstring = str.substring(countryA.getCode().length() + 1, str.length());
            Intrinsics.g(strSubstring, "substring(...)");
            loginPhoneViewModel.f60419c.n(strSubstring);
            loginPhoneViewModel.f60418b.n(countryA);
        }
        return Unit.f67061a;
    }
}
