package com.transsion.ad.monopoly;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.MonopolyAdManager", f = "MonopolyAdManager.kt", l = {33, 36, 43}, m = "init")
final class MonopolyAdManager$init$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MonopolyAdManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MonopolyAdManager$init$1(MonopolyAdManager monopolyAdManager, Continuation<? super MonopolyAdManager$init$1> continuation) {
        super(continuation);
        this.this$0 = monopolyAdManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, null, this);
    }
}
