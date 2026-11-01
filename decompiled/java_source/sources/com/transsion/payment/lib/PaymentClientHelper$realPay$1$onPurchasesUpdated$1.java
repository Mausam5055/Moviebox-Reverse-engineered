package com.transsion.payment.lib;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.bean.CheckPaymentBean;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
@DebugMetadata(c = "com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1", f = "PaymentClientHelper.kt", l = {126}, m = "invokeSuspend")
final class PaymentClientHelper$realPay$1$onPurchasesUpdated$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ CreateOrderRes $orderRequest;
    final /* synthetic */ b $payCallback;
    final /* synthetic */ PaymentService $paymentService;
    int label;

    /* JADX INFO: renamed from: com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsion.payment.lib.PaymentClientHelper$realPay$1$onPurchasesUpdated$1$1", f = "PaymentClientHelper.kt", l = {128}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ CreateOrderRes $orderRequest;
        final /* synthetic */ b $payCallback;
        final /* synthetic */ PaymentService $paymentService;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PaymentService paymentService, CreateOrderRes createOrderRes, b bVar, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$paymentService = paymentService;
            this.$orderRequest = createOrderRes;
            this.$payCallback = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$paymentService, this.$orderRequest, this.$payCallback, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            String balanceCoin;
            String addCoin;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                PaymentService paymentService = this.$paymentService;
                String tradingOrderId = this.$orderRequest.getTradingOrderId();
                this.label = 1;
                obj = paymentService.e(tradingOrderId, this);
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
                d.f47779a.b(PaymentClientHelper.f47769a.b() + " --> realPay() --> orderCheckResult?.code = " + (baseDto != null ? baseDto.getCode() : null) + " -- orderCheckResult?.msg = " + (baseDto != null ? baseDto.getMsg() : null) + " -- 接口请求失败");
                throw new Exception(baseDto != null ? baseDto.getMsg() : null);
            }
            d.f47779a.a(PaymentClientHelper.f47769a.b() + " --> realPay() --> paynicorn 发货成功");
            int i12 = 0;
            this.$payCallback.b(false);
            b bVar = this.$payCallback;
            CheckPaymentBean checkPaymentBean = (CheckPaymentBean) baseDto.getData();
            if (checkPaymentBean != null && (addCoin = checkPaymentBean.getAddCoin()) != null) {
                i12 = Integer.parseInt(addCoin);
            }
            CheckPaymentBean checkPaymentBean2 = (CheckPaymentBean) baseDto.getData();
            if (checkPaymentBean2 == null || (balanceCoin = checkPaymentBean2.getBalanceCoin()) == null) {
                balanceCoin = "";
            }
            bVar.c(i12, balanceCoin, this.$orderRequest.getTradingOrderId());
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentClientHelper$realPay$1$onPurchasesUpdated$1(b bVar, CreateOrderRes createOrderRes, PaymentService paymentService, Continuation<? super PaymentClientHelper$realPay$1$onPurchasesUpdated$1> continuation) {
        super(2, continuation);
        this.$payCallback = bVar;
        this.$orderRequest = createOrderRes;
        this.$paymentService = paymentService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentClientHelper$realPay$1$onPurchasesUpdated$1(this.$payCallback, this.$orderRequest, this.$paymentService, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaymentClientHelper$realPay$1$onPurchasesUpdated$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                PayUtils payUtils = PayUtils.f47768a;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$paymentService, this.$orderRequest, this.$payCallback, null);
                this.label = 1;
                if (PayUtils.b(payUtils, 0L, 0, anonymousClass1, this, 3, null) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Exception e11) {
            d.f47779a.b(PaymentClientHelper.f47769a.b() + " --> realPay() --> handlePurchase 发货进行中ing --> e = " + e11.getMessage());
            this.$payCallback.b(false);
            this.$payCallback.a(Boxing.d(-30), e11.getMessage(), false, this.$orderRequest.getTradingOrderId());
        }
        return Unit.f67061a;
    }
}
