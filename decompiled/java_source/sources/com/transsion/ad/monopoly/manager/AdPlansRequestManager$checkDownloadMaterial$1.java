package com.transsion.ad.monopoly.manager;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.manager.AdPlansRequestManager", f = "AdPlansRequestManager.kt", l = {503}, m = "checkDownloadMaterial")
final class AdPlansRequestManager$checkDownloadMaterial$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdPlansRequestManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AdPlansRequestManager$checkDownloadMaterial$1(AdPlansRequestManager adPlansRequestManager, Continuation<? super AdPlansRequestManager$checkDownloadMaterial$1> continuation) {
        super(continuation);
        this.this$0 = adPlansRequestManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.h(null, this);
    }
}
