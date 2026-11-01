package com.transsion.version.update;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.version.update.UpdateVersionRequest", f = "UpdateVersionRequest.kt", l = {50}, m = "startCheckUpdate")
final class UpdateVersionRequest$startCheckUpdate$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UpdateVersionRequest this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdateVersionRequest$startCheckUpdate$1(UpdateVersionRequest updateVersionRequest, Continuation<? super UpdateVersionRequest$startCheckUpdate$1> continuation) {
        super(continuation);
        this.this$0 = updateVersionRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.q(null, null, null, null, false, this);
    }
}
