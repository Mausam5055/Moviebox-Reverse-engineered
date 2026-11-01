package com.transsion.ad.ps.distribute;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.ps.distribute.PSDistributionRequestManager", f = "PSDistributionRequestManager.kt", l = {126}, m = "getPsLinkListV2")
final class PSDistributionRequestManager$getPsLinkListV2$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PSDistributionRequestManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PSDistributionRequestManager$getPsLinkListV2$1(PSDistributionRequestManager pSDistributionRequestManager, Continuation<? super PSDistributionRequestManager$getPsLinkListV2$1> continuation) {
        super(continuation);
        this.this$0 = pSDistributionRequestManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.d(0, 0, null, null, null, this);
    }
}
