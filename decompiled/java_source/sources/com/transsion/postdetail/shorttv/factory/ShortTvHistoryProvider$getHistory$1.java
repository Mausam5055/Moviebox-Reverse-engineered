package com.transsion.postdetail.shorttv.factory;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.postdetail.shorttv.factory.ShortTvHistoryProvider", f = "ShortTvHistoryProvider.kt", l = {23}, m = "getHistory")
final class ShortTvHistoryProvider$getHistory$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ShortTvHistoryProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvHistoryProvider$getHistory$1(ShortTvHistoryProvider shortTvHistoryProvider, Continuation<? super ShortTvHistoryProvider$getHistory$1> continuation) {
        super(continuation);
        this.this$0 = shortTvHistoryProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c(null, this);
    }
}
