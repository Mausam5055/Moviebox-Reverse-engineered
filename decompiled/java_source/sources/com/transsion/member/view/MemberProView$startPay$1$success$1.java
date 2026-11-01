package com.transsion.member.view;

import android.content.Context;
import com.transsnet.loginapi.ILoginApi;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.view.MemberProView$startPay$1$success$1", f = "MemberProView.kt", l = {}, m = "invokeSuspend")
final class MemberProView$startPay$1$success$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ MemberProView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberProView$startPay$1$success$1(MemberProView memberProView, Continuation<? super MemberProView$startPay$1$success$1> continuation) {
        super(2, continuation);
        this.this$0 = memberProView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberProView$startPay$1$success$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberProView$startPay$1$success$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        ILoginApi mLoginApi = this.this$0.getMLoginApi();
        if (mLoginApi == null || !mLoginApi.a()) {
            ILoginApi mLoginApi2 = this.this$0.getMLoginApi();
            if (mLoginApi2 != null) {
                mLoginApi2.g(this.this$0);
            }
            ILoginApi mLoginApi3 = this.this$0.getMLoginApi();
            if (mLoginApi3 != null) {
                Context context = this.this$0.getContext();
                Intrinsics.g(context, "getContext(...)");
                mLoginApi3.j(context);
            }
        }
        zm.f fVar = this.this$0.purchaseListener;
        if (fVar != null) {
            fVar.b();
        }
        return Unit.f67061a;
    }
}
