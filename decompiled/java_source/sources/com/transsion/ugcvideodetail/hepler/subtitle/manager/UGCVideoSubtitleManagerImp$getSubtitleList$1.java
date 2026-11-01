package com.transsion.ugcvideodetail.hepler.subtitle.manager;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.manager.UGCVideoSubtitleManagerImp", f = "UGCVideoSubtitleManagerImp.kt", l = {Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE}, m = "getSubtitleList")
final class UGCVideoSubtitleManagerImp$getSubtitleList$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UGCVideoSubtitleManagerImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoSubtitleManagerImp$getSubtitleList$1(UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp, Continuation<? super UGCVideoSubtitleManagerImp$getSubtitleList$1> continuation) {
        super(continuation);
        this.this$0 = uGCVideoSubtitleManagerImp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(null, this);
    }
}
