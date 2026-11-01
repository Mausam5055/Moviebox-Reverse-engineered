package com.transsion.rewardscenter.utils;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.rewardscenter.utils.RewardsCenterApiHelper", f = "RewardsCenterApiHelper.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "checkDadaSetDefault")
final class RewardsCenterApiHelper$checkDadaSetDefault$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RewardsCenterApiHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardsCenterApiHelper$checkDadaSetDefault$1(RewardsCenterApiHelper rewardsCenterApiHelper, Continuation<? super RewardsCenterApiHelper$checkDadaSetDefault$1> continuation) {
        super(continuation);
        this.this$0 = rewardsCenterApiHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.j(null, null, this);
    }
}
