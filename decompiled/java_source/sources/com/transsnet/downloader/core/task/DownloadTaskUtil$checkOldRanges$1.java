package com.transsnet.downloader.core.task;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.core.task.DownloadTaskUtil", f = "DownloadTaskUtil.kt", l = {146}, m = "checkOldRanges")
final class DownloadTaskUtil$checkOldRanges$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DownloadTaskUtil this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadTaskUtil$checkOldRanges$1(DownloadTaskUtil downloadTaskUtil, Continuation<? super DownloadTaskUtil$checkOldRanges$1> continuation) {
        super(continuation);
        this.this$0 = downloadTaskUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(0L, null, null, this);
    }
}
