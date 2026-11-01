package com.transsion.baselib.db.video;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.baselib.db.video.VideoDetailPlayDao$DefaultImpls", f = "VideoDetailPlayDao.kt", l = {16, 17, 19}, m = "insertOrUpdate")
final class VideoDetailPlayDao$insertOrUpdate$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    VideoDetailPlayDao$insertOrUpdate$1(Continuation<? super VideoDetailPlayDao$insertOrUpdate$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return VideoDetailPlayDao.DefaultImpls.b(null, null, this);
    }
}
