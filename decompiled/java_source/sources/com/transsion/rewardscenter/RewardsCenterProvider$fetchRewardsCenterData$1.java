package com.transsion.rewardscenter;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.rewardscenter.utils.n;
import com.transsion.rewardscenterapi.RewardsCenterData;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.RewardsCenterProvider$fetchRewardsCenterData$1", f = "RewardsCenterProvider.kt", l = {74}, m = "invokeSuspend")
final class RewardsCenterProvider$fetchRewardsCenterData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RewardsCenterProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardsCenterProvider$fetchRewardsCenterData$1(RewardsCenterProvider rewardsCenterProvider, Continuation<? super RewardsCenterProvider$fetchRewardsCenterData$1> continuation) {
        super(2, continuation);
        this.this$0 = rewardsCenterProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RewardsCenterProvider$fetchRewardsCenterData$1 rewardsCenterProvider$fetchRewardsCenterData$1 = new RewardsCenterProvider$fetchRewardsCenterData$1(this.this$0, continuation);
        rewardsCenterProvider$fetchRewardsCenterData$1.L$0 = obj;
        return rewardsCenterProvider$fetchRewardsCenterData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RewardsCenterProvider$fetchRewardsCenterData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                RewardsCenterProvider rewardsCenterProvider = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                up.a aVarK = rewardsCenterProvider.k();
                this.label = 1;
                obj = up.a.C0938a.d(aVarK, null, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        RewardsCenterProvider rewardsCenterProvider2 = this.this$0;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                rewardsCenterProvider2.f50949b = (RewardsCenterData) baseDto.getData();
                lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "fetchRewardsCenterData: Success", false, 4, null);
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "fetchRewardsCenterData error: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        return Unit.f67061a;
    }
}
