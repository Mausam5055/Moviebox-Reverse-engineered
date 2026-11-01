package com.transsnet.downloader.util;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper", f = "UGCHistoricalPlayRecordOpenHelper.kt", l = {152, 154, 174}, m = "handleNavigation")
final class UGCHistoricalPlayRecordOpenHelper$handleNavigation$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    Object L$8;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UGCHistoricalPlayRecordOpenHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCHistoricalPlayRecordOpenHelper$handleNavigation$1(UGCHistoricalPlayRecordOpenHelper uGCHistoricalPlayRecordOpenHelper, Continuation<? super UGCHistoricalPlayRecordOpenHelper$handleNavigation$1> continuation) {
        super(continuation);
        this.this$0 = uGCHistoricalPlayRecordOpenHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.f(null, null, null, null, null, null, null, null, null, this);
    }
}
