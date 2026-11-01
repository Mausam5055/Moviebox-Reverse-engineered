package com.transsion.home.viewmodel.preload;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.home.viewmodel.preload.PreloadTrendingData", f = "PreloadTrendingData.kt", l = {109}, m = "preloadMainOperation")
final class PreloadTrendingData$preloadMainOperation$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PreloadTrendingData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PreloadTrendingData$preloadMainOperation$1(PreloadTrendingData preloadTrendingData, Continuation<? super PreloadTrendingData$preloadMainOperation$1> continuation) {
        super(continuation);
        this.this$0 = preloadTrendingData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.T(null, this);
    }
}
