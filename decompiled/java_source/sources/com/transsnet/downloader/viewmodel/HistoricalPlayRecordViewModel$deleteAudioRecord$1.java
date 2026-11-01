package com.transsnet.downloader.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel", f = "HistoricalPlayRecordViewModel.kt", l = {708}, m = "deleteAudioRecord")
final class HistoricalPlayRecordViewModel$deleteAudioRecord$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HistoricalPlayRecordViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoricalPlayRecordViewModel$deleteAudioRecord$1(HistoricalPlayRecordViewModel historicalPlayRecordViewModel, Continuation<? super HistoricalPlayRecordViewModel$deleteAudioRecord$1> continuation) {
        super(continuation);
        this.this$0 = historicalPlayRecordViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.D(null, this);
    }
}
