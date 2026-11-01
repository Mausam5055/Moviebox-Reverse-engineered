package com.transsion.shorttv.subtitle.manager;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.shorttv.subtitle.manager.ShortTvVideoSubtitleManagerImp", f = "ShortTvVideoSubtitleManagerImp.kt", l = {Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE}, m = "getSubtitleList")
final class ShortTvVideoSubtitleManagerImp$getSubtitleList$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ShortTvVideoSubtitleManagerImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvVideoSubtitleManagerImp$getSubtitleList$1(ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp, Continuation<? super ShortTvVideoSubtitleManagerImp$getSubtitleList$1> continuation) {
        super(continuation);
        this.this$0 = shortTvVideoSubtitleManagerImp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(null, this);
    }
}
