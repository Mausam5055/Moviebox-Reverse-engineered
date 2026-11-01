package com.transsion.subtitle.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel", f = "SubtitleDownloadViewModel.kt", l = {186}, m = "searchFromMovieBox")
final class SubtitleDownloadViewModel$searchFromMovieBox$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SubtitleDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubtitleDownloadViewModel$searchFromMovieBox$1(SubtitleDownloadViewModel subtitleDownloadViewModel, Continuation<? super SubtitleDownloadViewModel$searchFromMovieBox$1> continuation) {
        super(continuation);
        this.this$0 = subtitleDownloadViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.r(null, null, null, null, 0, this);
    }
}
