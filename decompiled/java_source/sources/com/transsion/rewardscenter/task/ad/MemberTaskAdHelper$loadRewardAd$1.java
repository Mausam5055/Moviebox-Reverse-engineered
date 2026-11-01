package com.transsion.rewardscenter.task.ad;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.transsion.rewardscenter.task.ad.MemberTaskAdHelper$loadRewardAd$1", f = "MemberTaskAdHelper.kt", l = {262}, m = "invokeSuspend")
final class MemberTaskAdHelper$loadRewardAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ MemberTaskAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MemberTaskAdHelper$loadRewardAd$1(MemberTaskAdHelper memberTaskAdHelper, Continuation<? super MemberTaskAdHelper$loadRewardAd$1> continuation) {
        super(2, continuation);
        this.this$0 = memberTaskAdHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MemberTaskAdHelper$loadRewardAd$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MemberTaskAdHelper$loadRewardAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.this$0.f51047m = new BiddingVideoManager();
            BiddingVideoManager biddingVideoManager = this.this$0.f51047m;
            if (biddingVideoManager != null) {
                biddingVideoManager.O0("MemberTaskRewardedScene");
            }
            BiddingVideoManager biddingVideoManager2 = this.this$0.f51047m;
            if (biddingVideoManager2 != null) {
                biddingVideoManager2.M0(null);
            }
            BiddingVideoManager biddingVideoManager3 = this.this$0.f51047m;
            if (biddingVideoManager3 != null) {
                biddingVideoManager3.N0(this.this$0.f51051q);
            }
            BiddingVideoManager biddingVideoManager4 = this.this$0.f51047m;
            if (biddingVideoManager4 != null) {
                this.label = 1;
                if (AbsAdBidding.w0(biddingVideoManager4, 0, false, this, 3, null) == objF) {
                    return objF;
                }
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
