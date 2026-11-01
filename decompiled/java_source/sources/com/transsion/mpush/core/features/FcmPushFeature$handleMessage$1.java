package com.transsion.mpush.core.features;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.mpush.core.features.FcmPushFeature", f = "FcmPushFeature.kt", l = {111}, m = "handleMessage")
final class FcmPushFeature$handleMessage$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FcmPushFeature this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FcmPushFeature$handleMessage$1(FcmPushFeature fcmPushFeature, Continuation<? super FcmPushFeature$handleMessage$1> continuation) {
        super(continuation);
        this.this$0 = fcmPushFeature;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c(null, null, this);
    }
}
