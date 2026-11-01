package com.transsion.ad.monopoly.intercept;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.intercept.InDenyModelHandler", f = "InDenyModelHandler.kt", l = {30}, m = "doHandle")
final class InDenyModelHandler$doHandle$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InDenyModelHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InDenyModelHandler$doHandle$1(InDenyModelHandler inDenyModelHandler, Continuation<? super InDenyModelHandler$doHandle$1> continuation) {
        super(continuation);
        this.this$0 = inDenyModelHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, null, null, this);
    }
}
