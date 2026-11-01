package com.transsion.payment.lib.strategy;

import android.text.TextUtils;
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
@DebugMetadata(c = "com.transsion.payment.lib.strategy.GoogleStrategy$requestPay$1$2", f = "GoogleStrategy.kt", l = {95}, m = "invokeSuspend")
final class GoogleStrategy$requestPay$1$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ Function1<String, Unit> $createOrderCallback;
    final /* synthetic */ CreateOrderReq $createOrderReq;
    final /* synthetic */ com.transsion.payment.lib.b $payCallback;
    final /* synthetic */ boolean $subscriptOrder;
    int label;
    final /* synthetic */ GoogleStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    GoogleStrategy$requestPay$1$2(GoogleStrategy googleStrategy, CreateOrderReq createOrderReq, AppCompatActivity appCompatActivity, boolean z10, com.transsion.payment.lib.b bVar, Function1<? super String, Unit> function1, Continuation<? super GoogleStrategy$requestPay$1$2> continuation) {
        super(2, continuation);
        this.this$0 = googleStrategy;
        this.$createOrderReq = createOrderReq;
        this.$activity = appCompatActivity;
        this.$subscriptOrder = z10;
        this.$payCallback = bVar;
        this.$createOrderCallback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GoogleStrategy$requestPay$1$2(this.this$0, this.$createOrderReq, this.$activity, this.$subscriptOrder, this.$payCallback, this.$createOrderCallback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GoogleStrategy$requestPay$1$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Integer numD;
        String code;
        PrePayInfo prePayInfo;
        String orderId;
        String tradingOrderId;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentService paymentServiceZ = this.this$0.z();
            String productId = this.$createOrderReq.getProductId();
            String cpFrontPage = this.$createOrderReq.getCpFrontPage();
            Map<String, String> extStrJson = this.$createOrderReq.getExtStrJson();
            this.label = 1;
            obj = paymentServiceZ.h(productId, cpFrontPage, extStrJson, this);
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
        if (Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0")) {
            CreateOrderRes createOrderRes = (CreateOrderRes) baseDto.getData();
            if (TextUtils.isEmpty(createOrderRes != null ? createOrderRes.getTradingOrderId() : null)) {
                com.transsion.payment.lib.b bVar = this.$payCallback;
                if (baseDto != null) {
                    numD = null;
                } else {
                    numD = null;
                }
                com.transsion.payment.lib.b.a.a(bVar, numD, String.valueOf(baseDto != null ? baseDto.getMsg() : null), false, null, 8, null);
            } else {
                CreateOrderRes createOrderRes2 = (CreateOrderRes) baseDto.getData();
                String str = "";
                this.this$0.G(this.$activity, this.$createOrderReq.getProductId(), (createOrderRes2 == null || (tradingOrderId = createOrderRes2.getTradingOrderId()) == null) ? "" : tradingOrderId, this.$subscriptOrder, this.$payCallback);
                Function1<String, Unit> function1 = this.$createOrderCallback;
                if (function1 != null) {
                    CreateOrderRes createOrderRes3 = (CreateOrderRes) baseDto.getData();
                    if (createOrderRes3 != null && (prePayInfo = createOrderRes3.getPrePayInfo()) != null && (orderId = prePayInfo.getOrderId()) != null) {
                        str = orderId;
                    }
                    function1.invoke(str);
                }
            }
        } else {
            com.transsion.payment.lib.b bVar2 = this.$payCallback;
            if (baseDto != null || (code = baseDto.getCode()) == null) {
                numD = null;
            } else {
                numD = Boxing.d(Integer.parseInt(code));
            }
            com.transsion.payment.lib.b.a.a(bVar2, numD, String.valueOf(baseDto != null ? baseDto.getMsg() : null), false, null, 8, null);
        }
        return Unit.f67061a;
    }
}
