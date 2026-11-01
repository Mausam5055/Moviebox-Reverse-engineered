package com.transsion.ad.hi;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.hi.HiSavanaAdManager", f = "HiSavanaAdManager.kt", l = {142}, m = "onInitSuccess")
final class HiSavanaAdManager$onInitSuccess$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HiSavanaAdManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HiSavanaAdManager$onInitSuccess$1(HiSavanaAdManager hiSavanaAdManager, Continuation<? super HiSavanaAdManager$onInitSuccess$1> continuation) {
        super(continuation);
        this.this$0 = hiSavanaAdManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.j(this);
    }
}
