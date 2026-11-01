package com.transsion.audio.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$getResourcePosition$1$3", f = "HistoryListManager.kt", l = {155, 164}, m = "emit")
final class HistoryListManager$getResourcePosition$1$3$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HistoryListManager$getResourcePosition$1.AnonymousClass3 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoryListManager$getResourcePosition$1$3$emit$1(HistoryListManager$getResourcePosition$1.AnonymousClass3 anonymousClass3, Continuation<? super HistoryListManager$getResourcePosition$1$3$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
