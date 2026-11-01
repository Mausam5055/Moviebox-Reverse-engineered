package com.transsion.baselib.db.video;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.baselib.db.video.VideoDetailPlayDao$DefaultImpls", f = "VideoDetailPlayDao.kt", l = {113, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 152}, m = "getHistory")
final class VideoDetailPlayDao$getHistory$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    VideoDetailPlayDao$getHistory$1(Continuation<? super VideoDetailPlayDao$getHistory$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return VideoDetailPlayDao.DefaultImpls.a(null, null, this);
    }
}
