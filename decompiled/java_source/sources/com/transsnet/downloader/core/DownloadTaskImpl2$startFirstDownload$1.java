package com.transsnet.downloader.core;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.core.DownloadTaskImpl2", f = "DownloadTaskImpl2.kt", l = {197}, m = "startFirstDownload")
final class DownloadTaskImpl2$startFirstDownload$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DownloadTaskImpl2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadTaskImpl2$startFirstDownload$1(DownloadTaskImpl2 downloadTaskImpl2, Continuation<? super DownloadTaskImpl2$startFirstDownload$1> continuation) {
        super(continuation);
        this.this$0 = downloadTaskImpl2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.z(this);
    }
}
