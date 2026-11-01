package com.transsion.wrapperad;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.wrapperad.WrapperAdProvider", f = "WrapperAdProvider.kt", l = {64, 69, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "initAd")
final class WrapperAdProvider$initAd$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WrapperAdProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WrapperAdProvider$initAd$1(WrapperAdProvider wrapperAdProvider, Continuation<? super WrapperAdProvider$initAd$1> continuation) {
        super(continuation);
        this.this$0 = wrapperAdProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(this);
    }
}
