package com.transsion.moviedetail.fragment;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.moviedetail.fragment.ForYouFragment$initData$1$1$1", f = "ForYouFragment.kt", l = {258}, m = "emit")
final class ForYouFragment$initData$1$1$1$emit$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ForYouFragment$initData$1.AnonymousClass1.C06381 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ForYouFragment$initData$1$1$1$emit$1(ForYouFragment$initData$1.AnonymousClass1.C06381 c06381, Continuation<? super ForYouFragment$initData$1$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = c06381;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
