package com.transsion.ad.ps.attribution;

import com.transsion.ad.db.pslink.AttributionPoint;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.attribution.BaseAttributionProvider$insert$2", f = "BaseAttributionProvider.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE}, m = "invokeSuspend")
final class BaseAttributionProvider$insert$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $psId;
    final /* synthetic */ String $reportUrl;
    final /* synthetic */ AttributionPoint.AttributionType $type;
    int label;
    final /* synthetic */ BaseAttributionProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseAttributionProvider$insert$2(BaseAttributionProvider baseAttributionProvider, String str, String str2, AttributionPoint.AttributionType attributionType, Continuation<? super BaseAttributionProvider$insert$2> continuation) {
        super(2, continuation);
        this.this$0 = baseAttributionProvider;
        this.$psId = str;
        this.$reportUrl = str2;
        this.$type = attributionType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseAttributionProvider$insert$2(this.this$0, this.$psId, this.$reportUrl, this.$type, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BaseAttributionProvider$insert$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            com.transsion.ad.db.pslink.a aVarF = this.this$0.f();
            AttributionPoint attributionPoint = new AttributionPoint(0, this.$psId, 0, this.$reportUrl, this.$type, System.currentTimeMillis() - 10000, 5, null);
            this.label = 1;
            if (aVarF.e(attributionPoint, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
