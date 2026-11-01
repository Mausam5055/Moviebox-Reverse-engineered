package com.transsion.member.promotion;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.memberapi.SkuPromotionDto;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/memberapi/SkuPromotionDto;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/memberapi/SkuPromotionDto;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.member.promotion.SkuPromotionRepository$getPromotion$3$promotion$1", f = "SkuPromotionRepository.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class SkuPromotionRepository$getPromotion$3$promotion$1 extends SuspendLambda implements Function2<n0, Continuation<? super SkuPromotionDto>, Object> {
    final /* synthetic */ String $host;
    int label;
    final /* synthetic */ SkuPromotionRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SkuPromotionRepository$getPromotion$3$promotion$1(SkuPromotionRepository skuPromotionRepository, String str, Continuation<? super SkuPromotionRepository$getPromotion$3$promotion$1> continuation) {
        super(2, continuation);
        this.this$0 = skuPromotionRepository;
        this.$host = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SkuPromotionRepository$getPromotion$3$promotion$1(this.this$0, this.$host, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super SkuPromotionDto> continuation) {
        return ((SkuPromotionRepository$getPromotion$3$promotion$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            vm.a aVarC = this.this$0.c();
            String str = this.$host;
            this.label = 1;
            obj = aVarC.t(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return ((BaseDto) obj).getData();
    }
}
