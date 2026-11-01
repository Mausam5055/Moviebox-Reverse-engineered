package com.transsion.base.infras_config;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.base.infras_config.InfraInitManager", f = "InfraInitManager.kt", l = {130}, m = "initIfNeeded-yxL6bBk")
final class InfraInitManager$initIfNeeded$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InfraInitManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InfraInitManager$initIfNeeded$1(InfraInitManager infraInitManager, Continuation<? super InfraInitManager$initIfNeeded$1> continuation) {
        super(continuation);
        this.this$0 = infraInitManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objF = this.this$0.f(null, null, 0L, null, this);
        return objF == IntrinsicsKt.f() ? objF : Result.m453boximpl(objF);
    }
}
