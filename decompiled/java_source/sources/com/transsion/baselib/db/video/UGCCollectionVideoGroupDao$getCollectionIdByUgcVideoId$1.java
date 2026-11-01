package com.transsion.baselib.db.video;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.baselib.db.video.UGCCollectionVideoGroupDao$DefaultImpls", f = "UGCCollectionVideoGroupDao.kt", l = {63}, m = "getCollectionIdByUgcVideoId")
final class UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1(Continuation<? super UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return UGCCollectionVideoGroupDao.DefaultImpls.b(null, null, this);
    }
}
