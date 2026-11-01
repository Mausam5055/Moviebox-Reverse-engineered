package com.transsion.videodetail.music.data;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel", f = "MusicLikedFragmentViewModel.kt", l = {Sdk$SDKError.Reason.AD_HTML_FAILED_TO_LOAD_VALUE, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 326, 329}, m = "loadNetData")
final class MusicLikedFragmentViewModel$loadNetData$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MusicLikedFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicLikedFragmentViewModel$loadNetData$1(MusicLikedFragmentViewModel musicLikedFragmentViewModel, Continuation<? super MusicLikedFragmentViewModel$loadNetData$1> continuation) {
        super(continuation);
        this.this$0 = musicLikedFragmentViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.I(this);
    }
}
