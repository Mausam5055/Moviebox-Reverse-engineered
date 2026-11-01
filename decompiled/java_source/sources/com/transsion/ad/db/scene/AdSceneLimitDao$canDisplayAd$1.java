package com.transsion.ad.db.scene;

import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.db.scene.AdSceneLimitDao$DefaultImpls", f = "AdSceneLimitDao.kt", l = {87, MBSupportMuteAdType.REWARD_VIDEO}, m = "canDisplayAd")
final class AdSceneLimitDao$canDisplayAd$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    AdSceneLimitDao$canDisplayAd$1(Continuation<? super AdSceneLimitDao$canDisplayAd$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AdSceneLimitDao.DefaultImpls.a(null, null, null, 0L, 0L, 0, this);
    }
}
