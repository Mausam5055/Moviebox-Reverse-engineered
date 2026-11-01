package com.transsion.home.repository;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.home.repository.HomePreferencesRepository", f = "HomePreferencesRepository.kt", l = {39, 66}, m = "loadPreferencesState")
final class HomePreferencesRepository$loadPreferencesState$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HomePreferencesRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HomePreferencesRepository$loadPreferencesState$1(HomePreferencesRepository homePreferencesRepository, Continuation<? super HomePreferencesRepository$loadPreferencesState$1> continuation) {
        super(continuation);
        this.this$0 = homePreferencesRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.f(null, this);
    }
}
