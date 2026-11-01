package com.transsion.ad.bidding.base;

import android.app.Activity;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.bidding.base.AbsAdBidding$startAdActivity$1", f = "AbsAdBidding.kt", l = {}, m = "invokeSuspend")
final class AbsAdBidding$startAdActivity$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ boolean $isShowMemberBtn;
    final /* synthetic */ BiddingIntermediateMaterialBean $maxEcpmObject;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AbsAdBidding this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsAdBidding$startAdActivity$1(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, Activity activity, AbsAdBidding absAdBidding, boolean z10, Continuation<? super AbsAdBidding$startAdActivity$1> continuation) {
        super(2, continuation);
        this.$maxEcpmObject = biddingIntermediateMaterialBean;
        this.$activity = activity;
        this.this$0 = absAdBidding;
        this.$isShowMemberBtn = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AbsAdBidding$startAdActivity$1 absAdBidding$startAdActivity$1 = new AbsAdBidding$startAdActivity$1(this.$maxEcpmObject, this.$activity, this.this$0, this.$isShowMemberBtn, continuation);
        absAdBidding$startAdActivity$1.L$0 = obj;
        return absAdBidding$startAdActivity$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AbsAdBidding$startAdActivity$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AbsBiddingBuyOutGemini absBiddingBuyOutGeminiS;
        AbsBiddingBuyOutGemini absBiddingBuyOutGeminiQ;
        AbsBiddingBuyOutGemini absBiddingBuyOutGeminiT;
        AbsBiddingBuyOutGemini absBiddingBuyOutGeminiR;
        AbsBiddingBuyOutGemini absBiddingBuyOutGeminiO;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = this.$maxEcpmObject;
        AbsBiddingInterceptHiSavanaAdManager hiSavanaInterceptProvider = biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getHiSavanaInterceptProvider() : null;
        if (hiSavanaInterceptProvider == null) {
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean2 = this.$maxEcpmObject;
            if ((biddingIntermediateMaterialBean2 != null ? biddingIntermediateMaterialBean2.getPlans() : null) != null) {
                Activity activity = this.$activity;
                AbsAdBidding absAdBidding = this.this$0;
                boolean z10 = this.$isShowMemberBtn;
                BiddingIntermediateMaterialBean biddingIntermediateMaterialBean3 = this.$maxEcpmObject;
                AppCompatActivity appCompatActivity = (AppCompatActivity) activity;
                AbsBiddingBuyOutGemini absBiddingBuyOutGeminiH0 = absAdBidding.h0();
                if (absBiddingBuyOutGeminiH0 == null || (absBiddingBuyOutGeminiS = absBiddingBuyOutGeminiH0.s(absAdBidding)) == null || (absBiddingBuyOutGeminiQ = absBiddingBuyOutGeminiS.q()) == null || (absBiddingBuyOutGeminiT = absBiddingBuyOutGeminiQ.t(absAdBidding.getMSceneId())) == null || (absBiddingBuyOutGeminiR = absBiddingBuyOutGeminiT.r(absAdBidding.i0())) == null || (absBiddingBuyOutGeminiO = absBiddingBuyOutGeminiR.o(Boxing.a(z10))) == null) {
                    biddingIntermediateMaterialBean3.setErrorMsg("gemini is empty");
                    absAdBidding.p(biddingIntermediateMaterialBean3);
                } else {
                    absBiddingBuyOutGeminiO.u(appCompatActivity, absAdBidding.getMSceneId(), biddingIntermediateMaterialBean3);
                }
            } else {
                BiddingIntermediateMaterialBean biddingIntermediateMaterialBean4 = this.$maxEcpmObject;
                if (biddingIntermediateMaterialBean4 != null) {
                    biddingIntermediateMaterialBean4.setErrorMsg("maxEcpmObject?.plans is empty");
                }
                this.this$0.p(this.$maxEcpmObject);
            }
        } else {
            hiSavanaInterceptProvider.p(this.this$0);
            hiSavanaInterceptProvider.s(this.$activity, this.this$0.i0(), this.this$0.getMSceneId());
        }
        return Unit.f67061a;
    }
}
