package com.transsion.postdetail.shorttv_pugc.factory;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.postdetail.shorttv_pugc.factory.PugcShortTvHistoryProvider", f = "PugcShortTvHistoryProvider.kt", l = {20, 21, 22}, m = "getHistory")
final class PugcShortTvHistoryProvider$getHistory$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PugcShortTvHistoryProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PugcShortTvHistoryProvider$getHistory$1(PugcShortTvHistoryProvider pugcShortTvHistoryProvider, Continuation<? super PugcShortTvHistoryProvider$getHistory$1> continuation) {
        super(continuation);
        this.this$0 = pugcShortTvHistoryProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c(null, this);
    }
}
