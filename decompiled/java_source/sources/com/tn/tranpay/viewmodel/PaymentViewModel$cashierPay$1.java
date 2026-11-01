package com.tn.tranpay.viewmodel;

import ai.a;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.tn.tranpay.bean.CreateOrderResultContent;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.tn.tranpay.viewmodel.PaymentViewModel$cashierPay$1", f = "PaymentViewModel.kt", l = {PsExtractor.PRIVATE_STREAM_1}, m = "invokeSuspend")
final class PaymentViewModel$cashierPay$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $cnic;
    final /* synthetic */ String $payMethod;
    final /* synthetic */ String $phone;
    int label;
    final /* synthetic */ PaymentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentViewModel$cashierPay$1(PaymentViewModel paymentViewModel, String str, String str2, String str3, Continuation<? super PaymentViewModel$cashierPay$1> continuation) {
        super(2, continuation);
        this.this$0 = paymentViewModel;
        this.$payMethod = str;
        this.$phone = str2;
        this.$cnic = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentViewModel$cashierPay$1(this.this$0, this.$payMethod, this.$phone, this.$cnic, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaymentViewModel$cashierPay$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentViewModel paymentViewModel = this.this$0;
            String strA = paymentViewModel.A();
            Intrinsics.e(strA);
            String str = this.$payMethod;
            String str2 = this.$phone;
            String str3 = this.$cnic;
            this.label = 1;
            obj = paymentViewModel.C(strA, str, str2, str3, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        CreateOrderResultContent createOrderResultContent = (CreateOrderResultContent) obj;
        a aVar = a.f619a;
        a.g(aVar, "CreateOrder result = " + createOrderResultContent, null, 2, null);
        if (createOrderResultContent != null) {
            this.this$0.O(this.$payMethod);
            a.g(aVar, "CreateOrder.content = " + createOrderResultContent.getTxnId() + ", " + createOrderResultContent.getStatus() + ", " + createOrderResultContent.getMessage(), null, 2, null);
            this.this$0.s().n(createOrderResultContent);
        } else {
            this.this$0.s().n(null);
        }
        return Unit.f67061a;
    }
}
