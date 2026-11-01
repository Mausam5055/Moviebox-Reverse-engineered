package com.transsion.usercenter.setting.labelsfeedback.sender;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.usercenter.setting.labelsfeedback.sender.FbSenderWorker", f = "FbSenderWorker.kt", l = {41, 42, 45, 47}, m = "doWork")
final class FbSenderWorker$doWork$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FbSenderWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FbSenderWorker$doWork$1(FbSenderWorker fbSenderWorker, Continuation<? super FbSenderWorker$doWork$1> continuation) {
        super(continuation);
        this.this$0 = fbSenderWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.n(this);
    }
}
