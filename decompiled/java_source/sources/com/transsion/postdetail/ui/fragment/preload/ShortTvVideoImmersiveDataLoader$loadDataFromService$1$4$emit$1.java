package com.transsion.postdetail.ui.fragment.preload;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.postdetail.ui.fragment.preload.ShortTvVideoImmersiveDataLoader$loadDataFromService$1$4", f = "ShortTvVideoImmersiveDataLoader.kt", l = {46}, m = "emit")
final class ShortTvVideoImmersiveDataLoader$loadDataFromService$1$4$emit$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ShortTvVideoImmersiveDataLoader$loadDataFromService$1.AnonymousClass4 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvVideoImmersiveDataLoader$loadDataFromService$1$4$emit$1(ShortTvVideoImmersiveDataLoader$loadDataFromService$1.AnonymousClass4 anonymousClass4, Continuation<? super ShortTvVideoImmersiveDataLoader$loadDataFromService$1$4$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
