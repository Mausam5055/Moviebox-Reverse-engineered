package com.tn.tranpay;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.tn.tranpay.TranPayConfiguration", f = "TranPayConfiguration.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE}, m = "fetchAndUpdateCurrencyInfo")
final class TranPayConfiguration$fetchAndUpdateCurrencyInfo$1 extends ContinuationImpl {
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TranPayConfiguration this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TranPayConfiguration$fetchAndUpdateCurrencyInfo$1(TranPayConfiguration tranPayConfiguration, Continuation<? super TranPayConfiguration$fetchAndUpdateCurrencyInfo$1> continuation) {
        super(continuation);
        this.this$0 = tranPayConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.e(false, this);
    }
}
