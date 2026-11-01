package com.transsion.home.viewmodel;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.transsion.home.viewmodel.TrendingUGCViewModel$requestOperateData$2", f = "TrendingUGCViewModel.kt", l = {}, m = "invokeSuspend")
final class TrendingUGCViewModel$requestOperateData$2 extends SuspendLambda implements Function2<Throwable, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TrendingUGCViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrendingUGCViewModel$requestOperateData$2(TrendingUGCViewModel trendingUGCViewModel, Continuation<? super TrendingUGCViewModel$requestOperateData$2> continuation) {
        super(2, continuation);
        this.this$0 = trendingUGCViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TrendingUGCViewModel$requestOperateData$2 trendingUGCViewModel$requestOperateData$2 = new TrendingUGCViewModel$requestOperateData$2(this.this$0, continuation);
        trendingUGCViewModel$requestOperateData$2.L$0 = obj;
        return trendingUGCViewModel$requestOperateData$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Throwable th2, Continuation<? super Unit> continuation) {
        return ((TrendingUGCViewModel$requestOperateData$2) create(th2, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Throwable th2 = (Throwable) this.L$0;
        lg.a.f68839a.c("PreloadTrending", "request operating cache error " + th2.getMessage(), true);
        this.this$0.z().n(null);
        return Unit.f67061a;
    }
}
