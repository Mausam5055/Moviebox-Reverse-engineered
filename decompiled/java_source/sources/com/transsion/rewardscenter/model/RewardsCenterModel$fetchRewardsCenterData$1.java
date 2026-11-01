package com.transsion.rewardscenter.model;

import com.mbridge.msdk.out.MBSupportMuteAdType;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.model.RewardsCenterModel$fetchRewardsCenterData$1", f = "RewardsCenterModel.kt", l = {MBSupportMuteAdType.REWARD_VIDEO}, m = "invokeSuspend")
final class RewardsCenterModel$fetchRewardsCenterData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RewardsCenterModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardsCenterModel$fetchRewardsCenterData$1(Function0<Unit> function0, RewardsCenterModel rewardsCenterModel, Continuation<? super RewardsCenterModel$fetchRewardsCenterData$1> continuation) {
        super(2, continuation);
        this.$callback = function0;
        this.this$0 = rewardsCenterModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RewardsCenterModel$fetchRewardsCenterData$1 rewardsCenterModel$fetchRewardsCenterData$1 = new RewardsCenterModel$fetchRewardsCenterData$1(this.$callback, this.this$0, continuation);
        rewardsCenterModel$fetchRewardsCenterData$1.L$0 = obj;
        return rewardsCenterModel$fetchRewardsCenterData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RewardsCenterModel$fetchRewardsCenterData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objD;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                RewardsCenterModel rewardsCenterModel = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                up.a aVarS = rewardsCenterModel.s();
                this.label = 1;
                objD = up.a.C0938a.d(aVarS, null, this, 1, null);
                if (objD == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objD = obj;
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objD);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        RewardsCenterModel rewardsCenterModel2 = this.this$0;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM454constructorimpl;
            if (n.a(baseDto)) {
                RewardsCenterData rewardsCenterData = (RewardsCenterData) baseDto.getData();
                if (rewardsCenterData != null) {
                    rewardsCenterModel2.p().q(rewardsCenterData.getLottery());
                    rewardsCenterModel2.x().q(rewardsCenterData.getUser());
                    rewardsCenterModel2.r().q(rewardsCenterData.getRedeem());
                    rewardsCenterModel2.v().q(rewardsCenterData.getTask());
                    rewardsCenterModel2.t().q(rewardsCenterData.getRule());
                    lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "fetchRewardsCenterData onSuccess: " + rewardsCenterData, false, 4, null);
                }
            } else {
                lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "fetchRewardsCenterData onFailure: " + baseDto.getCode() + ", " + baseDto.getMsg(), false, 4, null);
            }
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "fetchRewardsCenterData error: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        Function0<Unit> function0 = this.$callback;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }
}
