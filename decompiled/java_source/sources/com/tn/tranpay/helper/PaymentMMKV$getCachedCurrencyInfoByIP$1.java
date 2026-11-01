package com.tn.tranpay.helper;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.tn.tranpay.helper.PaymentMMKV", f = "PaymentMMKV.kt", l = {144}, m = "getCachedCurrencyInfoByIP")
final class PaymentMMKV$getCachedCurrencyInfoByIP$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PaymentMMKV this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentMMKV$getCachedCurrencyInfoByIP$1(PaymentMMKV paymentMMKV, Continuation<? super PaymentMMKV$getCachedCurrencyInfoByIP$1> continuation) {
        super(continuation);
        this.this$0 = paymentMMKV;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.f(this);
    }
}
