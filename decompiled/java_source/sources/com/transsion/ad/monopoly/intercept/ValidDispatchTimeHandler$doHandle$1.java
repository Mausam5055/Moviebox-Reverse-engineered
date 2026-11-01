package com.transsion.ad.monopoly.intercept;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ad.monopoly.intercept.ValidDispatchTimeHandler", f = "ValidDispatchTimeHandler.kt", l = {78, TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW, 87}, m = "doHandle")
final class ValidDispatchTimeHandler$doHandle$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ValidDispatchTimeHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ValidDispatchTimeHandler$doHandle$1(ValidDispatchTimeHandler validDispatchTimeHandler, Continuation<? super ValidDispatchTimeHandler$doHandle$1> continuation) {
        super(continuation);
        this.this$0 = validDispatchTimeHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, null, null, this);
    }
}
