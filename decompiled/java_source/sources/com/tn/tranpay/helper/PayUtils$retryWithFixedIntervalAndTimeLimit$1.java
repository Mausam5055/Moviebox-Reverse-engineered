package com.tn.tranpay.helper;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.tn.tranpay.helper.PayUtils", f = "PayUtils.kt", l = {99, 112}, m = "retryWithFixedIntervalAndTimeLimit")
final class PayUtils$retryWithFixedIntervalAndTimeLimit$1<T> extends ContinuationImpl {
    long J$0;
    long J$1;
    long J$2;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PayUtils this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PayUtils$retryWithFixedIntervalAndTimeLimit$1(PayUtils payUtils, Continuation<? super PayUtils$retryWithFixedIntervalAndTimeLimit$1> continuation) {
        super(continuation);
        this.this$0 = payUtils;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m(0L, 0L, null, this);
    }
}
