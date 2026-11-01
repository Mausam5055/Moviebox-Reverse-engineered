package com.transsion.ad.monopoly.intercept;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.intercept.InDenyBrandHandler", f = "InDenyBrandHandler.kt", l = {35}, m = "doHandle")
final class InDenyBrandHandler$doHandle$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InDenyBrandHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InDenyBrandHandler$doHandle$1(InDenyBrandHandler inDenyBrandHandler, Continuation<? super InDenyBrandHandler$doHandle$1> continuation) {
        super(continuation);
        this.this$0 = inDenyBrandHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, null, null, this);
    }
}
