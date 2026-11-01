package com.transsion.subtitle.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel", f = "SubtitleDownloadViewModel.kt", l = {251, 256}, m = "searchFromOpenSubtitleNewApi")
final class SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SubtitleDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1(SubtitleDownloadViewModel subtitleDownloadViewModel, Continuation<? super SubtitleDownloadViewModel$searchFromOpenSubtitleNewApi$1> continuation) {
        super(continuation);
        this.this$0 = subtitleDownloadViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.s(null, null, null, this);
    }
}
