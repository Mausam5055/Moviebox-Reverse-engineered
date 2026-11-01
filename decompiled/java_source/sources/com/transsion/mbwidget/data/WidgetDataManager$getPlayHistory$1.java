package com.transsion.mbwidget.data;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.mbwidget.data.WidgetDataManager", f = "WidgetDataManager.kt", l = {Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE}, m = "getPlayHistory")
final class WidgetDataManager$getPlayHistory$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WidgetDataManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WidgetDataManager$getPlayHistory$1(WidgetDataManager widgetDataManager, Continuation<? super WidgetDataManager$getPlayHistory$1> continuation) {
        super(continuation);
        this.this$0 = widgetDataManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.p(this);
    }
}
