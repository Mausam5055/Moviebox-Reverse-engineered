package com.transsion.mpush.core.trigger;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.mpush.core.trigger.PushWorker", f = "PushWorker.kt", l = {Sdk$SDKMetric.SDKMetricType.NOTIFICATION_REDIRECT_VALUE}, m = "doWork")
final class PushWorker$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PushWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushWorker$doWork$1(PushWorker pushWorker, Continuation<? super PushWorker$doWork$1> continuation) {
        super(continuation);
        this.this$0 = pushWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.n(this);
    }
}
