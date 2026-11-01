package com.transsion.startup;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.startup.StartupManager", f = "StartupManager.kt", l = {625}, m = "startupNetworkProbe")
final class StartupManager$startupNetworkProbe$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ StartupManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartupManager$startupNetworkProbe$1(StartupManager startupManager, Continuation<? super StartupManager$startupNetworkProbe$1> continuation) {
        super(continuation);
        this.this$0 = startupManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.o0(this);
    }
}
