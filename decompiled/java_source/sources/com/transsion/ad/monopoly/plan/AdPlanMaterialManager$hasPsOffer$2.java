package com.transsion.ad.monopoly.plan;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import mi.l;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Result;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.monopoly.plan.AdPlanMaterialManager$hasPsOffer$2", f = "AdPlanMaterialManager.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "invokeSuspend")
final class AdPlanMaterialManager$hasPsOffer$2 extends SuspendLambda implements Function2<n0, Continuation<? super Result<? extends Unit>>, Object> {
    final /* synthetic */ Ref.BooleanRef $hasResource;
    final /* synthetic */ MbAdDbPlans $plan;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AdPlanMaterialManager$hasPsOffer$2(MbAdDbPlans mbAdDbPlans, Ref.BooleanRef booleanRef, Continuation<? super AdPlanMaterialManager$hasPsOffer$2> continuation) {
        super(2, continuation);
        this.$plan = mbAdDbPlans;
        this.$hasResource = booleanRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AdPlanMaterialManager$hasPsOffer$2 adPlanMaterialManager$hasPsOffer$2 = new AdPlanMaterialManager$hasPsOffer$2(this.$plan, this.$hasResource, continuation);
        adPlanMaterialManager$hasPsOffer$2.L$0 = obj;
        return adPlanMaterialManager$hasPsOffer$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Result<Unit>> continuation) {
        return ((AdPlanMaterialManager$hasPsOffer$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Ref.BooleanRef booleanRef;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        boolean z10 = true;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                MbAdDbPlans mbAdDbPlans = this.$plan;
                Ref.BooleanRef booleanRef2 = this.$hasResource;
                Result.Companion companion = Result.INSTANCE;
                String extAdSlot = mbAdDbPlans != null ? mbAdDbPlans.getExtAdSlot() : null;
                l lVarC = AdPlanMaterialManager.f42164a.c();
                String strValueOf = String.valueOf(extAdSlot);
                this.L$0 = booleanRef2;
                this.label = 1;
                obj = lVarC.c(strValueOf, this);
                if (obj == objF) {
                    return objF;
                }
                booleanRef = booleanRef2;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                booleanRef = (Ref.BooleanRef) this.L$0;
                ResultKt.b(obj);
            }
            if (((Number) obj).intValue() <= 0) {
                z10 = false;
            }
            booleanRef.element = z10;
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Result.m453boximpl(objM454constructorimpl);
    }
}
