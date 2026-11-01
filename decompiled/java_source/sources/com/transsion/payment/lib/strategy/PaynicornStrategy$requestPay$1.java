package com.transsion.payment.lib.strategy;

import androidx.appcompat.app.AppCompatActivity;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.transsion.payment.lib.bean.PrePayInfo;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.strategy.PaynicornStrategy$requestPay$1", f = "PaynicornStrategy.kt", l = {96}, m = "invokeSuspend")
final class PaynicornStrategy$requestPay$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ Function1<String, Unit> $createOrderCallback;
    final /* synthetic */ CreateOrderReq $orderRequest;
    final /* synthetic */ com.transsion.payment.lib.b $payCallback;
    int label;
    final /* synthetic */ PaynicornStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PaynicornStrategy$requestPay$1(PaynicornStrategy paynicornStrategy, CreateOrderReq createOrderReq, AppCompatActivity appCompatActivity, com.transsion.payment.lib.b bVar, Function1<? super String, Unit> function1, Continuation<? super PaynicornStrategy$requestPay$1> continuation) {
        super(2, continuation);
        this.this$0 = paynicornStrategy;
        this.$orderRequest = createOrderReq;
        this.$activity = appCompatActivity;
        this.$payCallback = bVar;
        this.$createOrderCallback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaynicornStrategy$requestPay$1(this.this$0, this.$orderRequest, this.$activity, this.$payCallback, this.$createOrderCallback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaynicornStrategy$requestPay$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String code;
        String orderId;
        PrePayInfo prePayInfo;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentService paymentServiceI = this.this$0.i();
            String productId = this.$orderRequest.getProductId();
            Double payAmount = this.$orderRequest.getPayAmount();
            String cpFrontPage = this.$orderRequest.getCpFrontPage();
            Map<String, String> extStrJson = this.$orderRequest.getExtStrJson();
            this.label = 1;
            obj = paymentServiceI.i(productId, payAmount, cpFrontPage, extStrJson, this);
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
            com.transsion.payment.lib.b.a.a(this.$payCallback, (baseDto == null || (code = baseDto.getCode()) == null) ? null : Boxing.d(Integer.parseInt(code)), String.valueOf(baseDto != null ? baseDto.getMsg() : null), false, null, 8, null);
        } else {
            PaynicornStrategy paynicornStrategy = this.this$0;
            AppCompatActivity appCompatActivity = this.$activity;
            Object data = baseDto.getData();
            Intrinsics.e(data);
            paynicornStrategy.k(appCompatActivity, (CreateOrderRes) data, this.$payCallback);
            Function1<String, Unit> function1 = this.$createOrderCallback;
            if (function1 != null) {
                CreateOrderRes createOrderRes = (CreateOrderRes) baseDto.getData();
                if (createOrderRes == null || (prePayInfo = createOrderRes.getPrePayInfo()) == null || (orderId = prePayInfo.getOrderId()) == null) {
                    orderId = "";
                }
                function1.invoke(orderId);
            }
        }
        return Unit.f67061a;
    }
}
