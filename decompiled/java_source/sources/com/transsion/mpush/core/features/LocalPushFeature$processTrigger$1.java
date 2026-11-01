package com.transsion.mpush.core.features;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.mpush.core.features.LocalPushFeature", f = "LocalPushFeature.kt", l = {Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, 139, 141}, m = "processTrigger")
final class LocalPushFeature$processTrigger$1 extends ContinuationImpl {
    int I$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LocalPushFeature this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalPushFeature$processTrigger$1(LocalPushFeature localPushFeature, Continuation<? super LocalPushFeature$processTrigger$1> continuation) {
        super(continuation);
        this.this$0 = localPushFeature;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m(0, this);
    }
}
