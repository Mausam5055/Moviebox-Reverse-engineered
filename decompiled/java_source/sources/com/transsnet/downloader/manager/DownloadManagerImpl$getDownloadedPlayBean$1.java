package com.transsnet.downloader.manager;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl", f = "DownloadManagerImpl.kt", l = {1620}, m = "getDownloadedPlayBean")
final class DownloadManagerImpl$getDownloadedPlayBean$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DownloadManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerImpl$getDownloadedPlayBean$1(DownloadManagerImpl downloadManagerImpl, Continuation<? super DownloadManagerImpl$getDownloadedPlayBean$1> continuation) {
        super(continuation);
        this.this$0 = downloadManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.u(null, 0, 0, this);
    }
}
