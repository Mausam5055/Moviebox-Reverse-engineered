package com.transsnet.downloader.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager", f = "DownloadListManager.kt", l = {384}, m = "downloadingList")
final class DownloadListManager$downloadingList$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DownloadListManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadListManager$downloadingList$1(DownloadListManager downloadListManager, Continuation<? super DownloadListManager$downloadingList$1> continuation) {
        super(continuation);
        this.this$0 = downloadListManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.x(this);
    }
}
