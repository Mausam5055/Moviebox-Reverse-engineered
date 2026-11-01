package com.transsion.ugcvideodetail.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel", f = "UGCImmVideoDetailViewModel.kt", l = {351}, m = "onFirstVideoDetailSuccess")
final class UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, Continuation<? super UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1> continuation) {
        super(continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a1(null, null, this);
    }
}
