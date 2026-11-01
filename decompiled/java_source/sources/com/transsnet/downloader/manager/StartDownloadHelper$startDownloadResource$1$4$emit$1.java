package com.transsnet.downloader.manager;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.manager.StartDownloadHelper$startDownloadResource$1$4", f = "StartDownloadHelper.kt", l = {TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY}, m = "emit")
final class StartDownloadHelper$startDownloadResource$1$4$emit$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ StartDownloadHelper$startDownloadResource$1.AnonymousClass4 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartDownloadHelper$startDownloadResource$1$4$emit$1(StartDownloadHelper$startDownloadResource$1.AnonymousClass4 anonymousClass4, Continuation<? super StartDownloadHelper$startDownloadResource$1$4$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
