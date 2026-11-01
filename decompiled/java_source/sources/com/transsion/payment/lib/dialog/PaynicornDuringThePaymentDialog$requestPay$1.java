package com.transsion.payment.lib.dialog;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.transsion.payment.lib.bean.PrePayInfo;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$requestPay$1", f = "PaynicornDuringThePaymentDialog.kt", l = {126}, m = "invokeSuspend")
final class PaynicornDuringThePaymentDialog$requestPay$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ PaynicornDuringThePaymentDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaynicornDuringThePaymentDialog$requestPay$1(PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog, Continuation<? super PaynicornDuringThePaymentDialog$requestPay$1> continuation) {
        super(2, continuation);
        this.this$0 = paynicornDuringThePaymentDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaynicornDuringThePaymentDialog$requestPay$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaynicornDuringThePaymentDialog$requestPay$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Map<String, String> mapH;
        String orderId;
        PrePayInfo prePayInfo;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentService paymentServiceF0 = this.this$0.F0();
            CreateOrderReq createOrderReq = this.this$0.mCreateOrderReq;
            String productId = createOrderReq != null ? createOrderReq.getProductId() : null;
            CreateOrderReq createOrderReq2 = this.this$0.mCreateOrderReq;
            Double payAmount = createOrderReq2 != null ? createOrderReq2.getPayAmount() : null;
            CreateOrderReq createOrderReq3 = this.this$0.mCreateOrderReq;
            String cpFrontPage = createOrderReq3 != null ? createOrderReq3.getCpFrontPage() : null;
            CreateOrderReq createOrderReq4 = this.this$0.mCreateOrderReq;
            if (createOrderReq4 == null || (mapH = createOrderReq4.getExtStrJson()) == null) {
                mapH = MapsKt.h();
            }
            Map<String, String> map = mapH;
            this.label = 1;
            obj = paymentServiceF0.i(productId, payAmount, cpFrontPage, map, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        BaseDto baseDto = (BaseDto) obj;
        if (!Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0") || baseDto.getData() == null) {
            this.this$0.J0(1001, "requestPay() --> 请求接口创建订单....失败 --> code = " + (baseDto != null ? baseDto.getCode() : null));
        } else {
            Function1 function1C = this.this$0.G0().c();
            if (function1C != null) {
                CreateOrderRes createOrderRes = (CreateOrderRes) baseDto.getData();
                if (createOrderRes == null || (prePayInfo = createOrderRes.getPrePayInfo()) == null || (orderId = prePayInfo.getOrderId()) == null) {
                    orderId = "";
                }
                function1C.invoke(orderId);
            }
            this.this$0.M0((CreateOrderRes) baseDto.getData());
        }
        return Unit.f67061a;
    }
}
