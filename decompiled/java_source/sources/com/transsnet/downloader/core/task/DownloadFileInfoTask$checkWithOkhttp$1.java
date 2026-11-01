package com.transsnet.downloader.core.task;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.core.task.DownloadFileInfoTask", f = "DownloadFileInfoTask.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE, Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE, Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE}, m = "checkWithOkhttp")
final class DownloadFileInfoTask$checkWithOkhttp$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DownloadFileInfoTask this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadFileInfoTask$checkWithOkhttp$1(DownloadFileInfoTask downloadFileInfoTask, Continuation<? super DownloadFileInfoTask$checkWithOkhttp$1> continuation) {
        super(continuation);
        this.this$0 = downloadFileInfoTask;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(null, null, this);
    }
}
