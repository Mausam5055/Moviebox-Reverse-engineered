package com.transsion.payment.lib.strategy;

import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CheckPaymentBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.payment.lib.strategy.GoogleStrategy$handlePurchase$2$1", f = "GoogleStrategy.kt", l = {MiniAppConfigHelper.DEFAULT_MINIAPP_ALL_DATA_MAX_SIZE}, m = "invokeSuspend")
final class GoogleStrategy$handlePurchase$2$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ String $gpOrderId;
    final /* synthetic */ String $orderId;
    final /* synthetic */ String $productId;
    final /* synthetic */ String $purchaseToken;
    int label;
    final /* synthetic */ GoogleStrategy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleStrategy$handlePurchase$2$1(GoogleStrategy googleStrategy, String str, String str2, String str3, String str4, Continuation<? super GoogleStrategy$handlePurchase$2$1> continuation) {
        super(1, continuation);
        this.this$0 = googleStrategy;
        this.$productId = str;
        this.$purchaseToken = str2;
        this.$orderId = str3;
        this.$gpOrderId = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new GoogleStrategy$handlePurchase$2$1(this.this$0, this.$productId, this.$purchaseToken, this.$orderId, this.$gpOrderId, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((GoogleStrategy$handlePurchase$2$1) create(continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        String balanceCoin;
        String addCoin;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PaymentService paymentServiceZ = this.this$0.z();
            String str = this.$productId;
            String str2 = this.$purchaseToken;
            String str3 = this.$orderId;
            String str4 = this.$gpOrderId;
            this.label = 1;
            obj = paymentServiceZ.g(str, str2, str3, str4, this);
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
        if (!Intrinsics.c(baseDto != null ? baseDto.getCode() : null, "0")) {
            throw new Exception(baseDto != null ? baseDto.getMsg() : null);
        }
        com.transsion.payment.lib.b bVar = this.this$0.f47806j;
        int i12 = 0;
        if (bVar != null) {
            bVar.b(false);
        }
        com.transsion.payment.lib.d dVar = com.transsion.payment.lib.d.f47779a;
        dVar.a("Will callback success");
        com.transsion.payment.lib.b bVar2 = this.this$0.f47806j;
        if (bVar2 != null) {
            CheckPaymentBean checkPaymentBean = (CheckPaymentBean) baseDto.getData();
            if (checkPaymentBean != null && (addCoin = checkPaymentBean.getAddCoin()) != null) {
                i12 = Integer.parseInt(addCoin);
            }
            CheckPaymentBean checkPaymentBean2 = (CheckPaymentBean) baseDto.getData();
            if (checkPaymentBean2 == null || (balanceCoin = checkPaymentBean2.getBalanceCoin()) == null) {
                balanceCoin = "";
            }
            bVar2.c(i12, balanceCoin, this.$orderId);
        }
        dVar.a("Has callback " + this.this$0.f47806j);
        this.this$0.f47806j = null;
        dVar.a("handlePurchase 发货成功");
        return Unit.f67061a;
    }
}
