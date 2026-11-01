package com.transsion.payment.lib;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.payment.lib.PaymentService", f = "PaymentService.kt", l = {159}, m = "getSkuList")
final class PaymentService$getSkuList$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PaymentService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentService$getSkuList$1(PaymentService paymentService, Continuation<? super PaymentService$getSkuList$1> continuation) {
        super(continuation);
        this.this$0 = paymentService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(this);
    }
}
