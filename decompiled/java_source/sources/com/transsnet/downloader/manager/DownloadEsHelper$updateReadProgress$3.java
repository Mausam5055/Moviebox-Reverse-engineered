package com.transsnet.downloader.manager;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadEsHelper", f = "DownloadEsHelper.kt", l = {394, TTAdConstant.IMAGE_LIST_CODE, TTAdConstant.IMAGE_LIST_SIZE_CODE}, m = "updateReadProgress")
final class DownloadEsHelper$updateReadProgress$3 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DownloadEsHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadEsHelper$updateReadProgress$3(DownloadEsHelper downloadEsHelper, Continuation<? super DownloadEsHelper$updateReadProgress$3> continuation) {
        super(continuation);
        this.this$0 = downloadEsHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d0(null, 0, 0L, this);
    }
}
