package com.transsion.ad.ps.distribute;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.ps.distribute.PSAdPlanRequestManager", f = "PSAdPlanRequestManager.kt", l = {39, 59, 67, 80, 92}, m = "updatePsLink")
final class PSAdPlanRequestManager$updatePsLink$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PSAdPlanRequestManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PSAdPlanRequestManager$updatePsLink$1(PSAdPlanRequestManager pSAdPlanRequestManager, Continuation<? super PSAdPlanRequestManager$updatePsLink$1> continuation) {
        super(continuation);
        this.this$0 = pSAdPlanRequestManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(this);
    }
}
