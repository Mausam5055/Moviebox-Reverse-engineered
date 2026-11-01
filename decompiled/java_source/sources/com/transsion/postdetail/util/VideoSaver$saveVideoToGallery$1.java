package com.transsion.postdetail.util;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.postdetail.util.VideoSaver", f = "VideoSaver.kt", l = {27, 30}, m = "saveVideoToGallery")
final class VideoSaver$saveVideoToGallery$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ VideoSaver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoSaver$saveVideoToGallery$1(VideoSaver videoSaver, Continuation<? super VideoSaver$saveVideoToGallery$1> continuation) {
        super(continuation);
        this.this$0 = videoSaver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c(null, null, null, this);
    }
}
