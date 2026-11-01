package com.transsion.baselib.db.video;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.baselib.db.video.VideoDetailPlayDao$DefaultImpls", f = "VideoDetailPlayDao.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW, 84, 96, 98, 100}, m = "insertOrUpdateProgress")
final class VideoDetailPlayDao$insertOrUpdateProgress$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    VideoDetailPlayDao$insertOrUpdateProgress$1(Continuation<? super VideoDetailPlayDao$insertOrUpdateProgress$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return VideoDetailPlayDao.DefaultImpls.c(null, null, 0, 0, 0L, 0L, this);
    }
}
